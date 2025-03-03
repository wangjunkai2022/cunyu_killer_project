package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.d;

/* compiled from: UMDBCreater.java */
/* loaded from: classes4.dex */
public class e extends SQLiteOpenHelper {
    private static Context b;
    private String a;

    /* compiled from: UMDBCreater.java */
    /* loaded from: classes4.dex */
    public static class a {
        private static final e a = new e(e.b, g.b(e.b), d.b, null, 2);

        private a() {
        }
    }

    public static e a(Context context) {
        if (b == null) {
            b = context.getApplicationContext();
        }
        return a.a;
    }

    private e(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(new b(context, str), str2, cursorFactory, i);
    }

    private e(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, TextUtils.isEmpty(str) ? d.b : str, cursorFactory, i);
        this.a = null;
        a();
    }

    public void a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!g.a(d.C0055d.a, writableDatabase)) {
                c(writableDatabase);
            }
            if (!g.a(d.c.a, writableDatabase)) {
                d(writableDatabase);
            }
            if (!g.a(d.b.a, writableDatabase)) {
                b(writableDatabase);
            }
            if (!g.a(d.a.a, writableDatabase)) {
                a(writableDatabase);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                c(sQLiteDatabase);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            g.a(b);
            if (sQLiteDatabase == null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabase == null) {
            }
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        try {
            this.a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void d(SQLiteDatabase sQLiteDatabase) {
        try {
            this.a = "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 > i && i == 1) {
            try {
                try {
                    e(sQLiteDatabase);
                } catch (Exception unused) {
                    f(sQLiteDatabase);
                }
            } catch (Exception unused2) {
                e(sQLiteDatabase);
            }
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase) {
        if (!g.a(sQLiteDatabase, d.C0055d.a, "__av")) {
            g.a(sQLiteDatabase, d.C0055d.a, "__sp", "TEXT");
            g.a(sQLiteDatabase, d.C0055d.a, "__pp", "TEXT");
            g.a(sQLiteDatabase, d.C0055d.a, "__av", "TEXT");
            g.a(sQLiteDatabase, d.C0055d.a, "__vc", "TEXT");
        }
        if (!g.a(sQLiteDatabase, d.b.a, "__av")) {
            g.a(sQLiteDatabase, d.b.a, "__av", "TEXT");
            g.a(sQLiteDatabase, d.b.a, "__vc", "TEXT");
        }
        if (!g.a(sQLiteDatabase, d.a.a, "__av")) {
            g.a(sQLiteDatabase, d.a.a, "__av", "TEXT");
            g.a(sQLiteDatabase, d.a.a, "__vc", "TEXT");
        }
    }

    private void f(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, d.C0055d.a);
        a(sQLiteDatabase, d.b.a);
        a(sQLiteDatabase, d.a.a);
        a();
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        } catch (SQLException unused) {
        }
    }
}
