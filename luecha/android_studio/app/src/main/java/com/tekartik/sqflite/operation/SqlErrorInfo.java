package com.tekartik.sqflite.operation;

import com.tekartik.sqflite.SqlCommand;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class SqlErrorInfo {
    public static Map<String, Object> getMap(Operation operation) {
        SqlCommand sqlCommand = operation.getSqlCommand();
        if (sqlCommand == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("sql", sqlCommand.getSql());
        hashMap.put("arguments", sqlCommand.getRawSqlArguments());
        return hashMap;
    }
}
