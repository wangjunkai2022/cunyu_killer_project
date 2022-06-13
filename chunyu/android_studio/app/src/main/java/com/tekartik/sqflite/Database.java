package com.tekartik.sqflite;

import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Database {
    final int id;
    boolean inTransaction;
    final int logLevel;
    final String path;
    final boolean singleInstance;
    SQLiteDatabase sqliteDatabase;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Database(String str, int i, boolean z, int i2) {
        this.path = str;
        this.singleInstance = z;
        this.id = i;
        this.logLevel = i2;
    }

    public void open() {
        this.sqliteDatabase = SQLiteDatabase.openDatabase(this.path, null, 268435456);
    }

    public void openReadOnly() {
        this.sqliteDatabase = SQLiteDatabase.openDatabase(this.path, null, 1, new DatabaseErrorHandler() { // from class: com.tekartik.sqflite.Database.1
            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
            }
        });
    }

    public void close() {
        this.sqliteDatabase.close();
    }

    public SQLiteDatabase getWritableDatabase() {
        return this.sqliteDatabase;
    }

    public SQLiteDatabase getReadableDatabase() {
        return this.sqliteDatabase;
    }

    public boolean enableWriteAheadLogging() {
        try {
            return this.sqliteDatabase.enableWriteAheadLogging();
        } catch (Exception e) {
            Log.e(Constant.TAG, getThreadLogPrefix() + "enable WAL error: " + e);
            return false;
        }
    }

    String getThreadLogTag() {
        Thread currentThread = Thread.currentThread();
        return "" + this.id + "," + currentThread.getName() + "(" + currentThread.getId() + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getThreadLogPrefix() {
        return "[" + getThreadLogTag() + "] ";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void deleteDatabase(String str) {
        SQLiteDatabase.deleteDatabase(new File(str));
    }
}
