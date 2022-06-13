package com.tekartik.sqflite;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.tekartik.sqflite.dev.Debug;
import com.tekartik.sqflite.operation.BatchOperation;
import com.tekartik.sqflite.operation.ExecuteOperation;
import com.tekartik.sqflite.operation.MethodCallOperation;
import com.tekartik.sqflite.operation.Operation;
import com.tekartik.sqflite.operation.SqlErrorInfo;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class SqflitePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    static String databasesPath;
    private static Handler handler;
    private static HandlerThread handlerThread;
    private Context context;
    private MethodChannel methodChannel;
    static final Map<String, Integer> _singleInstancesByPath = new HashMap();
    private static boolean QUERY_AS_MAP_LIST = false;
    private static int THREAD_PRIORITY = 0;
    static int logLevel = 0;
    private static final Object databaseMapLocker = new Object();
    private static final Object openCloseLocker = new Object();
    private static int databaseId = 0;
    static final Map<Integer, Database> databaseMap = new HashMap();

    public SqflitePlugin() {
    }

    public SqflitePlugin(Context context) {
        this.context = context.getApplicationContext();
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new SqflitePlugin().onAttachedToEngine(registrar.context(), registrar.messenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        onAttachedToEngine(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    private void onAttachedToEngine(Context context, BinaryMessenger binaryMessenger) {
        this.context = context;
        this.methodChannel = new MethodChannel(binaryMessenger, "com.tekartik.sqflite");
        this.methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.context = null;
        this.methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }

    private static Object cursorValue(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            return null;
        }
        return cursor.getBlob(i);
    }

    private static List<Object> cursorRowToList(Cursor cursor, int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            Object cursorValue = cursorValue(cursor, i2);
            if (Debug.EXTRA_LOGV) {
                String str = null;
                if (cursorValue != null) {
                    if (cursorValue.getClass().isArray()) {
                        str = "array(" + cursorValue.getClass().getComponentType().getName() + ")";
                    } else {
                        str = cursorValue.getClass().getName();
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("column ");
                sb.append(i2);
                sb.append(" ");
                sb.append(cursor.getType(i2));
                sb.append(": ");
                sb.append(cursorValue);
                sb.append(str == null ? "" : " (" + str + ")");
                Log.d("Sqflite", sb.toString());
            }
            arrayList.add(cursorValue);
        }
        return arrayList;
    }

    private static Map<String, Object> cursorRowToMap(Cursor cursor) {
        HashMap hashMap = new HashMap();
        String[] columnNames = cursor.getColumnNames();
        int length = columnNames.length;
        for (int i = 0; i < length; i++) {
            if (Debug.EXTRA_LOGV) {
                Log.d("Sqflite", "column " + i + " " + cursor.getType(i));
            }
            int type = cursor.getType(i);
            if (type == 0) {
                hashMap.put(columnNames[i], null);
            } else if (type == 1) {
                hashMap.put(columnNames[i], Long.valueOf(cursor.getLong(i)));
            } else if (type == 2) {
                hashMap.put(columnNames[i], Double.valueOf(cursor.getDouble(i)));
            } else if (type == 3) {
                hashMap.put(columnNames[i], cursor.getString(i));
            } else if (type == 4) {
                hashMap.put(columnNames[i], cursor.getBlob(i));
            }
        }
        return hashMap;
    }

    private static Map<String, Object> fixMap(Map<Object, Object> map) {
        Object obj;
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                obj = fixMap((Map) value);
            } else {
                obj = toString(value);
            }
            hashMap.put(toString(entry.getKey()), obj);
        }
        return hashMap;
    }

    private static String toString(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            ArrayList arrayList = new ArrayList();
            for (byte b : (byte[]) obj) {
                arrayList.add(Integer.valueOf(b));
            }
            return arrayList.toString();
        } else if (obj instanceof Map) {
            return fixMap((Map) obj).toString();
        } else {
            return obj.toString();
        }
    }

    static boolean isInMemoryPath(String str) {
        return str == null || str.equals(":memory:");
    }

    private Context getContext() {
        return this.context;
    }

    private Database getDatabase(int i) {
        return databaseMap.get(Integer.valueOf(i));
    }

    private Database getDatabaseOrError(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument("id")).intValue();
        Database database = getDatabase(intValue);
        if (database != null) {
            return database;
        }
        result.error("sqlite_error", "database_closed " + intValue, null);
        return null;
    }

    private SqlCommand getSqlCommand(MethodCall methodCall) {
        return new SqlCommand((String) methodCall.argument("sql"), (List) methodCall.argument("arguments"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Database executeOrError(Database database, MethodCall methodCall, MethodChannel.Result result) {
        if (executeOrError(database, new ExecuteOperation(result, getSqlCommand(methodCall), (Boolean) methodCall.argument("inTransaction")))) {
            return database;
        }
        return null;
    }

    private boolean executeOrError(Database database, Operation operation) {
        SqlCommand sqlCommand = operation.getSqlCommand();
        if (LogLevel.hasSqlLevel(database.logLevel)) {
            Log.d("Sqflite", database.getThreadLogPrefix() + sqlCommand);
        }
        Boolean inTransaction = operation.getInTransaction();
        try {
            try {
                database.getWritableDatabase().execSQL(sqlCommand.getSql(), sqlCommand.getSqlArguments());
                if (Boolean.TRUE.equals(inTransaction)) {
                    database.inTransaction = true;
                }
                if (Boolean.FALSE.equals(inTransaction)) {
                    database.inTransaction = false;
                }
                return true;
            } catch (Exception e) {
                handleException(e, operation, database);
                if (Boolean.FALSE.equals(inTransaction)) {
                    database.inTransaction = false;
                }
                return false;
            }
        } catch (Throwable th) {
            if (Boolean.FALSE.equals(inTransaction)) {
                database.inTransaction = false;
            }
            throw th;
        }
    }

    private void onQueryCall(final MethodCall methodCall, MethodChannel.Result result) {
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.1
                @Override // java.lang.Runnable
                public void run() {
                    SqflitePlugin.this.query(databaseOrError, new MethodCallOperation(methodCall, bgResult));
                }
            });
        }
    }

    private void onBatchCall(final MethodCall methodCall, MethodChannel.Result result) {
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.2
                @Override // java.lang.Runnable
                public void run() {
                    MethodCallOperation methodCallOperation = new MethodCallOperation(methodCall, bgResult);
                    boolean noResult = methodCallOperation.getNoResult();
                    boolean continueOnError = methodCallOperation.getContinueOnError();
                    ArrayList arrayList = new ArrayList();
                    for (Map map : (List) methodCall.argument("operations")) {
                        BatchOperation batchOperation = new BatchOperation(map, noResult);
                        String method = batchOperation.getMethod();
                        char c = 65535;
                        switch (method.hashCode()) {
                            case -1319569547:
                                if (method.equals("execute")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case -1183792455:
                                if (method.equals("insert")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case -838846263:
                                if (method.equals("update")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 107944136:
                                if (method.equals("query")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        if (c != 0) {
                            if (c != 1) {
                                if (c != 2) {
                                    if (c != 3) {
                                        bgResult.error("bad_param", "Batch method '" + method + "' not supported", null);
                                        return;
                                    } else if (SqflitePlugin.this.update(databaseOrError, batchOperation)) {
                                        batchOperation.handleSuccess(arrayList);
                                    } else if (continueOnError) {
                                        batchOperation.handleErrorContinue(arrayList);
                                    } else {
                                        batchOperation.handleError(bgResult);
                                        return;
                                    }
                                } else if (SqflitePlugin.this.query(databaseOrError, batchOperation)) {
                                    batchOperation.handleSuccess(arrayList);
                                } else if (continueOnError) {
                                    batchOperation.handleErrorContinue(arrayList);
                                } else {
                                    batchOperation.handleError(bgResult);
                                    return;
                                }
                            } else if (SqflitePlugin.this.insert(databaseOrError, batchOperation)) {
                                batchOperation.handleSuccess(arrayList);
                            } else if (continueOnError) {
                                batchOperation.handleErrorContinue(arrayList);
                            } else {
                                batchOperation.handleError(bgResult);
                                return;
                            }
                        } else if (SqflitePlugin.this.execute(databaseOrError, batchOperation)) {
                            batchOperation.handleSuccess(arrayList);
                        } else if (continueOnError) {
                            batchOperation.handleErrorContinue(arrayList);
                        } else {
                            batchOperation.handleError(bgResult);
                            return;
                        }
                    }
                    if (noResult) {
                        bgResult.success(null);
                    } else {
                        bgResult.success(arrayList);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean execute(Database database, Operation operation) {
        if (!executeOrError(database, operation)) {
            return false;
        }
        operation.success(null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean insert(com.tekartik.sqflite.Database r10, com.tekartik.sqflite.operation.Operation r11) {
        /*
            r9 = this;
            boolean r0 = r9.executeOrError(r10, r11)
            r1 = 0
            if (r0 != 0) goto L_0x0008
            return r1
        L_0x0008:
            boolean r0 = r11.getNoResult()
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L_0x0014
            r11.success(r2)
            return r3
        L_0x0014:
            java.lang.String r0 = "SELECT changes(), last_insert_rowid()"
            android.database.sqlite.SQLiteDatabase r4 = r10.getWritableDatabase()     // Catch: Exception -> 0x00c3, all -> 0x00c0
            android.database.Cursor r0 = r4.rawQuery(r0, r2)     // Catch: Exception -> 0x00c3, all -> 0x00c0
            java.lang.String r4 = "Sqflite"
            if (r0 == 0) goto L_0x009f
            int r5 = r0.getCount()     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r5 <= 0) goto L_0x009f
            boolean r5 = r0.moveToFirst()     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r5 == 0) goto L_0x009f
            int r5 = r0.getInt(r1)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r5 != 0) goto L_0x0069
            int r5 = r10.logLevel     // Catch: Exception -> 0x009d, all -> 0x00d0
            boolean r5 = com.tekartik.sqflite.LogLevel.hasSqlLevel(r5)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r5 == 0) goto L_0x0060
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: Exception -> 0x009d, all -> 0x00d0
            r5.<init>()     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r6 = r10.getThreadLogPrefix()     // Catch: Exception -> 0x009d, all -> 0x00d0
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r6 = "no changes (id was "
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            long r6 = r0.getLong(r3)     // Catch: Exception -> 0x009d, all -> 0x00d0
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r6 = ")"
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r5 = r5.toString()     // Catch: Exception -> 0x009d, all -> 0x00d0
            android.util.Log.d(r4, r5)     // Catch: Exception -> 0x009d, all -> 0x00d0
        L_0x0060:
            r11.success(r2)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r0 == 0) goto L_0x0068
            r0.close()
        L_0x0068:
            return r3
        L_0x0069:
            long r5 = r0.getLong(r3)     // Catch: Exception -> 0x009d, all -> 0x00d0
            int r2 = r10.logLevel     // Catch: Exception -> 0x009d, all -> 0x00d0
            boolean r2 = com.tekartik.sqflite.LogLevel.hasSqlLevel(r2)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r2 == 0) goto L_0x0090
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: Exception -> 0x009d, all -> 0x00d0
            r2.<init>()     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r7 = r10.getThreadLogPrefix()     // Catch: Exception -> 0x009d, all -> 0x00d0
            r2.append(r7)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r7 = "inserted "
            r2.append(r7)     // Catch: Exception -> 0x009d, all -> 0x00d0
            r2.append(r5)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r2 = r2.toString()     // Catch: Exception -> 0x009d, all -> 0x00d0
            android.util.Log.d(r4, r2)     // Catch: Exception -> 0x009d, all -> 0x00d0
        L_0x0090:
            java.lang.Long r2 = java.lang.Long.valueOf(r5)     // Catch: Exception -> 0x009d, all -> 0x00d0
            r11.success(r2)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r0 == 0) goto L_0x009c
            r0.close()
        L_0x009c:
            return r3
        L_0x009d:
            r2 = move-exception
            goto L_0x00c7
        L_0x009f:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: Exception -> 0x009d, all -> 0x00d0
            r5.<init>()     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r6 = r10.getThreadLogPrefix()     // Catch: Exception -> 0x009d, all -> 0x00d0
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r6 = "fail to read changes for Insert"
            r5.append(r6)     // Catch: Exception -> 0x009d, all -> 0x00d0
            java.lang.String r5 = r5.toString()     // Catch: Exception -> 0x009d, all -> 0x00d0
            android.util.Log.e(r4, r5)     // Catch: Exception -> 0x009d, all -> 0x00d0
            r11.success(r2)     // Catch: Exception -> 0x009d, all -> 0x00d0
            if (r0 == 0) goto L_0x00bf
            r0.close()
        L_0x00bf:
            return r3
        L_0x00c0:
            r10 = move-exception
            r0 = r2
            goto L_0x00d1
        L_0x00c3:
            r0 = move-exception
            r8 = r2
            r2 = r0
            r0 = r8
        L_0x00c7:
            r9.handleException(r2, r11, r10)     // Catch: all -> 0x00d0
            if (r0 == 0) goto L_0x00cf
            r0.close()
        L_0x00cf:
            return r1
        L_0x00d0:
            r10 = move-exception
        L_0x00d1:
            if (r0 == 0) goto L_0x00d6
            r0.close()
        L_0x00d6:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tekartik.sqflite.SqflitePlugin.insert(com.tekartik.sqflite.Database, com.tekartik.sqflite.operation.Operation):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.tekartik.sqflite.operation.Operation] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public boolean query(Database database, Operation operation) {
        Throwable th;
        Cursor cursor;
        Exception e;
        SqlCommand sqlCommand = operation.getSqlCommand();
        ArrayList arrayList = new ArrayList();
        if (LogLevel.hasSqlLevel(database.logLevel)) {
            Log.d("Sqflite", database.getThreadLogPrefix() + sqlCommand);
        }
        boolean z = QUERY_AS_MAP_LIST;
        Cursor cursor2 = 0;
        try {
            try {
                SqlCommand sanitizeForQuery = sqlCommand.sanitizeForQuery();
                cursor = database.getReadableDatabase().rawQuery(sanitizeForQuery.getSql(), sanitizeForQuery.getQuerySqlArguments());
                int i = 0;
                ArrayList arrayList2 = null;
                while (cursor.moveToNext()) {
                    try {
                        if (z) {
                            Map<String, Object> cursorRowToMap = cursorRowToMap(cursor);
                            if (LogLevel.hasSqlLevel(database.logLevel)) {
                                Log.d("Sqflite", database.getThreadLogPrefix() + toString(cursorRowToMap));
                            }
                            arrayList.add(cursorRowToMap);
                        } else {
                            if (cursor2 == 0) {
                                ArrayList arrayList3 = new ArrayList();
                                HashMap hashMap = new HashMap();
                                int columnCount = cursor.getColumnCount();
                                hashMap.put("columns", Arrays.asList(cursor.getColumnNames()));
                                hashMap.put("rows", arrayList3);
                                arrayList2 = arrayList3;
                                cursor2 = hashMap;
                                i = columnCount;
                            }
                            arrayList2.add(cursorRowToList(cursor, i));
                        }
                    } catch (Exception e2) {
                        e = e2;
                        cursor2 = cursor;
                        handleException(e, operation, database);
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (z) {
                    operation.success(arrayList);
                } else {
                    if (cursor2 == 0) {
                        cursor2 = new HashMap();
                    }
                    operation.success(cursor2);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return true;
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = cursor2;
        }
    }

    private void onInsertCall(final MethodCall methodCall, MethodChannel.Result result) {
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.3
                @Override // java.lang.Runnable
                public void run() {
                    SqflitePlugin.this.insert(databaseOrError, new MethodCallOperation(methodCall, bgResult));
                }
            });
        }
    }

    private void onExecuteCall(final MethodCall methodCall, MethodChannel.Result result) {
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.4
                @Override // java.lang.Runnable
                public void run() {
                    if (SqflitePlugin.this.executeOrError(databaseOrError, methodCall, bgResult) != null) {
                        bgResult.success(null);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean update(Database database, Operation operation) {
        Throwable th;
        Cursor cursor;
        Exception e;
        if (!executeOrError(database, operation)) {
            return false;
        }
        Cursor cursor2 = null;
        if (operation.getNoResult()) {
            operation.success(null);
            return true;
        }
        try {
            try {
                cursor = database.getWritableDatabase().rawQuery("SELECT changes()", null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                            int i = cursor.getInt(0);
                            if (LogLevel.hasSqlLevel(database.logLevel)) {
                                Log.d("Sqflite", database.getThreadLogPrefix() + "changed " + i);
                            }
                            operation.success(Integer.valueOf(i));
                            if (cursor != null) {
                                cursor.close();
                            }
                            return true;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        cursor2 = cursor;
                        handleException(e, operation, database);
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                Log.e("Sqflite", database.getThreadLogPrefix() + "fail to read changes for Update/Delete");
                operation.success(null);
                if (cursor != null) {
                    cursor.close();
                }
                return true;
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = cursor2;
        }
    }

    private void onUpdateCall(final MethodCall methodCall, MethodChannel.Result result) {
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.5
                @Override // java.lang.Runnable
                public void run() {
                    SqflitePlugin.this.update(databaseOrError, new MethodCallOperation(methodCall, bgResult));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleException(Exception exc, Operation operation, Database database) {
        if (exc instanceof SQLiteCantOpenDatabaseException) {
            operation.error("sqlite_error", "open_failed " + database.path, null);
        } else if (exc instanceof SQLException) {
            operation.error("sqlite_error", exc.getMessage(), SqlErrorInfo.getMap(operation));
        } else {
            operation.error("sqlite_error", exc.getMessage(), SqlErrorInfo.getMap(operation));
        }
    }

    static Map makeOpenResult(int i, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put("id", Integer.valueOf(i));
        if (z) {
            hashMap.put("recovered", true);
        }
        if (z2) {
            hashMap.put("recoveredInTransaction", true);
        }
        return hashMap;
    }

    private void onDebugCall(MethodCall methodCall, MethodChannel.Result result) {
        HashMap hashMap = new HashMap();
        if ("get".equals((String) methodCall.argument("cmd"))) {
            int i = logLevel;
            if (i > 0) {
                hashMap.put("logLevel", Integer.valueOf(i));
            }
            if (!databaseMap.isEmpty()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Integer, Database> entry : databaseMap.entrySet()) {
                    Database value = entry.getValue();
                    HashMap hashMap3 = new HashMap();
                    hashMap3.put("path", value.path);
                    hashMap3.put("singleInstance", Boolean.valueOf(value.singleInstance));
                    if (value.logLevel > 0) {
                        hashMap3.put("logLevel", Integer.valueOf(value.logLevel));
                    }
                    hashMap2.put(entry.getKey().toString(), hashMap3);
                }
                hashMap.put("databases", hashMap2);
            }
        }
        result.success(hashMap);
    }

    private void onDebugModeCall(MethodCall methodCall, MethodChannel.Result result) {
        Debug.LOGV = Boolean.TRUE.equals(methodCall.arguments());
        Debug.EXTRA_LOGV = Debug._EXTRA_LOGV && Debug.LOGV;
        if (!Debug.LOGV) {
            logLevel = 0;
        } else if (Debug.EXTRA_LOGV) {
            logLevel = 2;
        } else if (Debug.LOGV) {
            logLevel = 1;
        }
        result.success(null);
    }

    private void onOpenDatabaseCall(final MethodCall methodCall, MethodChannel.Result result) {
        final int i;
        Database database;
        final String str = (String) methodCall.argument("path");
        final Boolean bool = (Boolean) methodCall.argument("readOnly");
        final boolean isInMemoryPath = isInMemoryPath(str);
        final boolean z = !Boolean.FALSE.equals(methodCall.argument("singleInstance")) && !isInMemoryPath;
        if (z) {
            synchronized (databaseMapLocker) {
                if (LogLevel.hasVerboseLevel(logLevel)) {
                    Log.d("Sqflite", "Look for " + str + " in " + _singleInstancesByPath.keySet());
                }
                Integer num = _singleInstancesByPath.get(str);
                if (!(num == null || (database = databaseMap.get(num)) == null)) {
                    if (database.sqliteDatabase.isOpen()) {
                        if (LogLevel.hasVerboseLevel(logLevel)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(database.getThreadLogPrefix());
                            sb.append("re-opened single instance ");
                            sb.append(database.inTransaction ? "(in transaction) " : "");
                            sb.append(num);
                            sb.append(" ");
                            sb.append(str);
                            Log.d("Sqflite", sb.toString());
                        }
                        result.success(makeOpenResult(num.intValue(), true, database.inTransaction));
                        return;
                    } else if (LogLevel.hasVerboseLevel(logLevel)) {
                        Log.d("Sqflite", database.getThreadLogPrefix() + "single instance database of " + str + " not opened");
                    }
                }
            }
        }
        synchronized (databaseMapLocker) {
            i = databaseId + 1;
            databaseId = i;
        }
        final Database database2 = new Database(str, i, z, logLevel);
        final BgResult bgResult = new BgResult(result);
        synchronized (databaseMapLocker) {
            if (handler == null) {
                handlerThread = new HandlerThread("Sqflite", THREAD_PRIORITY);
                handlerThread.start();
                handler = new Handler(handlerThread.getLooper());
                if (LogLevel.hasSqlLevel(database2.logLevel)) {
                    Log.d("Sqflite", database2.getThreadLogPrefix() + "starting thread" + handlerThread + " priority " + THREAD_PRIORITY);
                }
            }
            if (LogLevel.hasSqlLevel(database2.logLevel)) {
                Log.d("Sqflite", database2.getThreadLogPrefix() + "opened " + i + " " + str);
            }
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.6
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (SqflitePlugin.openCloseLocker) {
                        if (!isInMemoryPath) {
                            File file = new File(new File(str).getParent());
                            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                                BgResult bgResult2 = bgResult;
                                bgResult2.error("sqlite_error", "open_failed " + str, null);
                                return;
                            }
                        }
                        try {
                            if (Boolean.TRUE.equals(bool)) {
                                database2.openReadOnly();
                            } else {
                                database2.open();
                            }
                            synchronized (SqflitePlugin.databaseMapLocker) {
                                if (z) {
                                    SqflitePlugin._singleInstancesByPath.put(str, Integer.valueOf(i));
                                }
                                SqflitePlugin.databaseMap.put(Integer.valueOf(i), database2);
                            }
                            if (LogLevel.hasSqlLevel(database2.logLevel)) {
                                Log.d("Sqflite", database2.getThreadLogPrefix() + "opened " + i + " " + str);
                            }
                            bgResult.success(SqflitePlugin.makeOpenResult(i, false, false));
                        } catch (Exception e) {
                            SqflitePlugin.this.handleException(e, new MethodCallOperation(methodCall, bgResult), database2);
                        }
                    }
                }
            });
        }
    }

    private void onCloseDatabaseCall(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument("id")).intValue();
        final Database databaseOrError = getDatabaseOrError(methodCall, result);
        if (databaseOrError != null) {
            if (LogLevel.hasSqlLevel(databaseOrError.logLevel)) {
                Log.d("Sqflite", databaseOrError.getThreadLogPrefix() + "closing " + intValue + " " + databaseOrError.path);
            }
            String str = databaseOrError.path;
            synchronized (databaseMapLocker) {
                databaseMap.remove(Integer.valueOf(intValue));
                if (databaseOrError.singleInstance) {
                    _singleInstancesByPath.remove(str);
                }
            }
            final BgResult bgResult = new BgResult(result);
            handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.7
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (SqflitePlugin.openCloseLocker) {
                        SqflitePlugin.this.closeDatabase(databaseOrError);
                    }
                    bgResult.success(null);
                }
            });
        }
    }

    private void onDeleteDatabaseCall(MethodCall methodCall, MethodChannel.Result result) {
        final Database database;
        final String str = (String) methodCall.argument("path");
        synchronized (databaseMapLocker) {
            if (LogLevel.hasVerboseLevel(logLevel)) {
                Log.d("Sqflite", "Look for " + str + " in " + _singleInstancesByPath.keySet());
            }
            Integer num = _singleInstancesByPath.get(str);
            if (num == null || (database = databaseMap.get(num)) == null || !database.sqliteDatabase.isOpen()) {
                database = null;
            } else {
                if (LogLevel.hasVerboseLevel(logLevel)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(database.getThreadLogPrefix());
                    sb.append("found single instance ");
                    sb.append(database.inTransaction ? "(in transaction) " : "");
                    sb.append(num);
                    sb.append(" ");
                    sb.append(str);
                    Log.d("Sqflite", sb.toString());
                }
                databaseMap.remove(num);
                _singleInstancesByPath.remove(str);
            }
        }
        final BgResult bgResult = new BgResult(result);
        AnonymousClass8 r9 = new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SqflitePlugin.openCloseLocker) {
                    if (database != null) {
                        SqflitePlugin.this.closeDatabase(database);
                    }
                    try {
                        if (LogLevel.hasVerboseLevel(SqflitePlugin.logLevel)) {
                            Log.d("Sqflite", "delete database " + str);
                        }
                        Database.deleteDatabase(str);
                    } catch (Exception e) {
                        Log.e("Sqflite", "error " + e + " while closing database " + SqflitePlugin.databaseId);
                    }
                }
                bgResult.success(null);
            }
        };
        Handler handler2 = handler;
        if (handler2 != null) {
            handler2.post(r9);
        } else {
            r9.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeDatabase(Database database) {
        try {
            if (LogLevel.hasSqlLevel(database.logLevel)) {
                Log.d("Sqflite", database.getThreadLogPrefix() + "closing database " + handlerThread);
            }
            database.close();
        } catch (Exception e) {
            Log.e("Sqflite", "error " + e + " while closing database " + databaseId);
        }
        synchronized (databaseMapLocker) {
            if (databaseMap.isEmpty() && handler != null) {
                if (LogLevel.hasSqlLevel(database.logLevel)) {
                    Log.d("Sqflite", database.getThreadLogPrefix() + "stopping thread" + handlerThread);
                }
                handlerThread.quit();
                handlerThread = null;
                handler = null;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1319569547:
                if (str.equals("execute")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1253581933:
                if (str.equals("closeDatabase")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1249474914:
                if (str.equals("options")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1183792455:
                if (str.equals("insert")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -838846263:
                if (str.equals("update")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -263511994:
                if (str.equals("deleteDatabase")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -198450538:
                if (str.equals("debugMode")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -17190427:
                if (str.equals("openDatabase")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 93509434:
                if (str.equals("batch")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 95458899:
                if (str.equals("debug")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 107944136:
                if (str.equals("query")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1385449135:
                if (str.equals("getPlatformVersion")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1863829223:
                if (str.equals("getDatabasesPath")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                result.success("Android " + Build.VERSION.RELEASE);
                return;
            case 1:
                onCloseDatabaseCall(methodCall, result);
                return;
            case 2:
                onQueryCall(methodCall, result);
                return;
            case 3:
                onInsertCall(methodCall, result);
                return;
            case 4:
                onUpdateCall(methodCall, result);
                return;
            case 5:
                onExecuteCall(methodCall, result);
                return;
            case 6:
                onOpenDatabaseCall(methodCall, result);
                return;
            case 7:
                onBatchCall(methodCall, result);
                return;
            case '\b':
                onOptionsCall(methodCall, result);
                return;
            case '\t':
                onGetDatabasesPathCall(methodCall, result);
                return;
            case '\n':
                onDeleteDatabaseCall(methodCall, result);
                return;
            case 11:
                onDebugCall(methodCall, result);
                return;
            case '\f':
                onDebugModeCall(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    void onOptionsCall(MethodCall methodCall, MethodChannel.Result result) {
        Object argument = methodCall.argument("queryAsMapList");
        if (argument != null) {
            QUERY_AS_MAP_LIST = Boolean.TRUE.equals(argument);
        }
        Object argument2 = methodCall.argument("androidThreadPriority");
        if (argument2 != null) {
            THREAD_PRIORITY = ((Integer) argument2).intValue();
        }
        Integer logLevel2 = LogLevel.getLogLevel(methodCall);
        if (logLevel2 != null) {
            logLevel = logLevel2.intValue();
        }
        result.success(null);
    }

    void onGetDatabasesPathCall(MethodCall methodCall, MethodChannel.Result result) {
        if (databasesPath == null) {
            databasesPath = this.context.getDatabasePath("tekartik_sqflite.db").getParent();
        }
        result.success(databasesPath);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class BgResult implements MethodChannel.Result {
        final Handler handler;
        private final MethodChannel.Result result;

        private BgResult(MethodChannel.Result result) {
            this.handler = new Handler(Looper.getMainLooper());
            this.result = result;
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void success(final Object obj) {
            this.handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.BgResult.1
                @Override // java.lang.Runnable
                public void run() {
                    BgResult.this.result.success(obj);
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void error(final String str, final String str2, final Object obj) {
            this.handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.BgResult.2
                @Override // java.lang.Runnable
                public void run() {
                    BgResult.this.result.error(str, str2, obj);
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void notImplemented() {
            this.handler.post(new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.BgResult.3
                @Override // java.lang.Runnable
                public void run() {
                    BgResult.this.result.notImplemented();
                }
            });
        }
    }
}
