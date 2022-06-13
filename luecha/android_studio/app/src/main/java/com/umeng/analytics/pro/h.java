package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.d;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: UMStoreManager.java */
/* loaded from: classes4.dex */
public class h {
    public static final int a = 2049;
    public static final int b = 2050;
    private static final int c = 1000;
    private static Context d = null;
    private static String e = null;
    private static final String f = "umeng+";
    private static final String g = "ek__id";
    private static final String h = "ek_key";
    private List<String> i;
    private List<Integer> j;
    private String k;
    private List<String> l;

    /* compiled from: UMStoreManager.java */
    /* loaded from: classes4.dex */
    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMStoreManager.java */
    /* loaded from: classes4.dex */
    public static class b {
        private static final h a = new h();

        private b() {
        }
    }

    private h() {
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = null;
        this.l = new ArrayList();
    }

    public static h a(Context context) {
        h hVar = b.a;
        if (d == null && context != null) {
            d = context.getApplicationContext();
            hVar.k();
        }
        return hVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.i.clear();
            this.l.clear();
            this.j.clear();
        }
    }

    public void a() {
        this.i.clear();
    }

    public void b() {
        this.l.clear();
    }

    public boolean c() {
        return this.l.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
        if (r2 == null) goto L_0x009f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009c, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ae, code lost:
        if (r2 == null) goto L_0x009f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x00a9, all -> 0x009a
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x00a9, all -> 0x009a
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: SQLiteDatabaseCorruptException -> 0x00a9, all -> 0x009a
            r3.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r4 = 0
        L_0x0013:
            int r5 = r11.length()     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            if (r4 >= r5) goto L_0x008d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.<init>()     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = r5.optString(r1)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L_0x0034
            boolean r8 = r9.equals(r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            if (r8 == 0) goto L_0x0043
        L_0x0034:
            com.umeng.analytics.pro.t r7 = com.umeng.analytics.pro.t.a()     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = r7.b()     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            if (r8 == 0) goto L_0x0043
            r7 = r9
        L_0x0043:
            r6.put(r1, r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            int r7 = r5.optInt(r0)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.put(r0, r7)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.d     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.d     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r5.remove(r1)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r5.remove(r0)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r5 = r10.c(r5)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            r6.put(r7, r5)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: Exception -> 0x008a, SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
        L_0x008a:
            int r4 = r4 + 1
            goto L_0x0013
        L_0x008d:
            r3.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0096
            if (r3 == 0) goto L_0x009f
            r3.endTransaction()     // Catch: all -> 0x009f
            goto L_0x009f
        L_0x0096:
            r2 = r3
            goto L_0x009a
        L_0x0098:
            r2 = r3
            goto L_0x00a9
        L_0x009a:
            if (r2 == 0) goto L_0x009f
        L_0x009c:
            r2.endTransaction()     // Catch: all -> 0x009f
        L_0x009f:
            android.content.Context r11 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r11 = com.umeng.analytics.pro.f.a(r11)
            r11.b()
            goto L_0x00b1
        L_0x00a9:
            android.content.Context r11 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x00b2
            com.umeng.analytics.pro.g.a(r11)     // Catch: all -> 0x00b2
            if (r2 == 0) goto L_0x009f
            goto L_0x009c
        L_0x00b1:
            return
        L_0x00b2:
            r11 = move-exception
            if (r2 == 0) goto L_0x00b8
            r2.endTransaction()     // Catch: all -> 0x00b8
        L_0x00b8:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONArray):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        if (r0 == null) goto L_0x005d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006c, code lost:
        if (r0 == null) goto L_0x005d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0067, all -> 0x0058
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0067, all -> 0x0058
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0067, all -> 0x0058
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            r2.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r5 = r4.c(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            if (r6 != 0) goto L_0x004b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
        L_0x004b:
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0054
            if (r1 == 0) goto L_0x005d
            r1.endTransaction()     // Catch: all -> 0x005d
            goto L_0x005d
        L_0x0054:
            r0 = r1
            goto L_0x0058
        L_0x0056:
            r0 = r1
            goto L_0x0067
        L_0x0058:
            if (r0 == 0) goto L_0x005d
        L_0x005a:
            r0.endTransaction()     // Catch: all -> 0x005d
        L_0x005d:
            android.content.Context r5 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r5 = com.umeng.analytics.pro.f.a(r5)
            r5.b()
            goto L_0x006f
        L_0x0067:
            android.content.Context r5 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0071
            com.umeng.analytics.pro.g.a(r5)     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x005d
            goto L_0x005a
        L_0x006f:
            r5 = 0
            return r5
        L_0x0071:
            r5 = move-exception
            if (r0 == 0) goto L_0x0077
            r0.endTransaction()     // Catch: all -> 0x0077
        L_0x0077:
            android.content.Context r6 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (r0 != null) goto L_0x006f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006d, code lost:
        if (r0 != null) goto L_0x006f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0081, code lost:
        if (r0 == null) goto L_0x0072;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void d() {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            com.umeng.analytics.pro.t r1 = com.umeng.analytics.pro.t.a()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r1 = r1.c()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            if (r2 == 0) goto L_0x002b
            if (r0 == 0) goto L_0x0021
            r0.endTransaction()     // Catch: all -> 0x0021
        L_0x0021:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            return
        L_0x002b:
            r2 = 2
            java.lang.String r3 = ""
            java.lang.String r4 = "-1"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r4 = 0
        L_0x0035:
            if (r4 >= r2) goto L_0x0067
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r6 = "update __et set __i=\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r5.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r6 = "\" where "
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r6 = "__i"
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r6 = "=\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r6 = r3[r4]     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r6 = "\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            java.lang.String r5 = r5.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            r0.execSQL(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            int r4 = r4 + 1
            goto L_0x0035
        L_0x0067:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x007c, all -> 0x006d
            if (r0 == 0) goto L_0x0072
            goto L_0x006f
        L_0x006d:
            if (r0 == 0) goto L_0x0072
        L_0x006f:
            r0.endTransaction()     // Catch: all -> 0x0072
        L_0x0072:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x0084
        L_0x007c:
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0085
            com.umeng.analytics.pro.g.a(r1)     // Catch: all -> 0x0085
            if (r0 == 0) goto L_0x0072
            goto L_0x006f
        L_0x0084:
            return
        L_0x0085:
            r1 = move-exception
            if (r0 == 0) goto L_0x008b
            r0.endTransaction()     // Catch: all -> 0x008b
        L_0x008b:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.d():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
        if (r2 == null) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009b, code lost:
        if (r2 == null) goto L_0x008c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.h.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L_0x0006
            return r1
        L_0x0006:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0087
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0087
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0087
            r3.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            com.umeng.analytics.pro.h$a r4 = com.umeng.analytics.pro.h.a.BEGIN     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r4) goto L_0x004f
            java.lang.Object r8 = r8.opt(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            long r8 = r8.longValue()     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            r4.put(r0, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            r4.put(r7, r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            r4.put(r7, r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            goto L_0x007a
        L_0x004f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.INSTANTSESSIONBEGIN     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r0) goto L_0x0057
            r6.b(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            goto L_0x007a
        L_0x0057:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.END     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r0) goto L_0x005f
            r6.a(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            goto L_0x007a
        L_0x005f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.PAGE     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r0) goto L_0x0069
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            goto L_0x007a
        L_0x0069:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.AUTOPAGE     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r0) goto L_0x0073
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            goto L_0x007a
        L_0x0073:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.NEWSESSION     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r9 != r0) goto L_0x007a
            r6.c(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
        L_0x007a:
            r3.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0083
            if (r3 == 0) goto L_0x008c
            r3.endTransaction()     // Catch: all -> 0x008c
            goto L_0x008c
        L_0x0083:
            r2 = r3
            goto L_0x0087
        L_0x0085:
            r2 = r3
            goto L_0x0096
        L_0x0087:
            if (r2 == 0) goto L_0x008c
        L_0x0089:
            r2.endTransaction()     // Catch: all -> 0x008c
        L_0x008c:
            android.content.Context r7 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            goto L_0x009e
        L_0x0096:
            android.content.Context r7 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x009f
            com.umeng.analytics.pro.g.a(r7)     // Catch: all -> 0x009f
            if (r2 == 0) goto L_0x008c
            goto L_0x0089
        L_0x009e:
            return r1
        L_0x009f:
            r7 = move-exception
            if (r2 == 0) goto L_0x00a5
            r2.endTransaction()     // Catch: all -> 0x00a5
        L_0x00a5:
            android.content.Context r8 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r8 = com.umeng.analytics.pro.f.a(r8)
            r8.b()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.h$a):boolean");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.opt(d.C0055d.a.g)).longValue();
            long j = 0;
            Object opt = jSONObject.opt(d.C0055d.a.h);
            if (opt != null && (opt instanceof Long)) {
                j = ((Long) opt).longValue();
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? str2 : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + longValue + "\", " + d.C0055d.a.h + "=\"" + j + "\", __sp=\"" + c2 + "\", __pp=\"" + str2 + "\" where __ii=\"" + str + "\"");
        } catch (Throwable unused) {
        }
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? str2 : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(longValue));
            contentValues.put("__sp", c2);
            contentValues.put("__pp", str2);
            contentValues.put("__av", UMGlobalContext.getInstance(d).getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(d));
            sQLiteDatabase.insert(d.c.a, null, contentValues);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        if (r4 != null) goto L_0x0053;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        r4.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
        if (r4 != null) goto L_0x0053;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public long a(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = "select __f from __sd where __ii=?"
            r1 = 0
            r2 = 0
            android.content.Context r4 = com.umeng.analytics.pro.h.d     // Catch: Exception -> 0x004b, all -> 0x0035
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)     // Catch: Exception -> 0x004b, all -> 0x0035
            android.database.sqlite.SQLiteDatabase r4 = r4.a()     // Catch: Exception -> 0x004b, all -> 0x0035
            r4.beginTransaction()     // Catch: Exception -> 0x004c, all -> 0x0033
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: Exception -> 0x004c, all -> 0x0033
            r6 = 0
            r5[r6] = r8     // Catch: Exception -> 0x004c, all -> 0x0033
            android.database.Cursor r1 = r4.rawQuery(r0, r5)     // Catch: Exception -> 0x004c, all -> 0x0033
            if (r1 == 0) goto L_0x002b
            r1.moveToFirst()     // Catch: Exception -> 0x004c, all -> 0x0033
            java.lang.String r8 = "__f"
            int r8 = r1.getColumnIndex(r8)     // Catch: Exception -> 0x004c, all -> 0x0033
            long r2 = r1.getLong(r8)     // Catch: Exception -> 0x004c, all -> 0x0033
        L_0x002b:
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch: Exception -> 0x0056
        L_0x0030:
            if (r4 == 0) goto L_0x0056
            goto L_0x0053
        L_0x0033:
            r8 = move-exception
            goto L_0x0037
        L_0x0035:
            r8 = move-exception
            r4 = r1
        L_0x0037:
            if (r1 == 0) goto L_0x003c
            r1.close()     // Catch: Exception -> 0x0041
        L_0x003c:
            if (r4 == 0) goto L_0x0041
            r4.endTransaction()     // Catch: Exception -> 0x0041
        L_0x0041:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r8
        L_0x004b:
            r4 = r1
        L_0x004c:
            if (r1 == 0) goto L_0x0051
            r1.close()     // Catch: Exception -> 0x0056
        L_0x0051:
            if (r4 == 0) goto L_0x0056
        L_0x0053:
            r4.endTransaction()     // Catch: Exception -> 0x0056
        L_0x0056:
            android.content.Context r8 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r8 = com.umeng.analytics.pro.f.a(r8)
            r8.b()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String):long");
    }

    private void c(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2 = null;
        r1 = null;
        r1 = null;
        String str2 = null;
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(d.C0055d.a.e);
            if (optJSONObject != null) {
                cursor = sQLiteDatabase.rawQuery("select __d from __sd where __ii=?", new String[]{str});
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            str2 = d(cursor.getString(cursor.getColumnIndex(d.C0055d.a.e)));
                        } catch (Throwable unused) {
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                cursor = null;
            }
            if (optJSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(str2)) {
                    jSONArray = new JSONArray(str2);
                }
                jSONArray.put(optJSONObject);
                String c2 = c(jSONArray.toString());
                if (!TextUtils.isEmpty(c2)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + c2 + "\" where __ii=\"" + str + "\"");
                }
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject(d.C0055d.a.d);
            if (optJSONObject2 != null) {
                String c3 = c(optJSONObject2.toString());
                if (!TextUtils.isEmpty(c3)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + c3 + "\" where __ii=\"" + str + "\"");
                }
            }
            long optLong = jSONObject.optLong(d.C0055d.a.g);
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(optLong) + "\" where __ii=\"" + str + "\"");
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused2) {
        }
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        JSONArray jSONArray;
        Cursor cursor = null;
        r4 = null;
        String str3 = null;
        try {
            if ("__a".equals(str2)) {
                jSONArray = jSONObject.optJSONArray("__a");
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else if (d.C0055d.a.c.equals(str2)) {
                jSONArray = jSONObject.optJSONArray(d.C0055d.a.c);
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else {
                jSONArray = null;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery("select " + str2 + " from " + d.C0055d.a + " where __ii=?", new String[]{str});
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    try {
                        str3 = d(rawQuery.getString(rawQuery.getColumnIndex(str2)));
                    } catch (Throwable unused) {
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            if (!TextUtils.isEmpty(str3)) {
                jSONArray2 = new JSONArray(str3);
            }
            if (jSONArray2.length() <= 1000) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        if (jSONObject2 != null) {
                            jSONArray2.put(jSONObject2);
                        }
                    } catch (JSONException unused2) {
                    }
                }
                String c2 = c(jSONArray2.toString());
                if (!TextUtils.isEmpty(c2)) {
                    sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + c2 + "\" where __ii=\"" + str + "\"");
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } else if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Throwable unused3) {
        }
    }

    public boolean e() {
        return this.i.isEmpty();
    }

    public JSONObject a(boolean z) {
        a();
        this.j.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z) {
            a(jSONObject, z);
            b(jSONObject, (String) null);
            a(jSONObject, (String) null);
        } else {
            String a2 = a(jSONObject, z);
            if (!TextUtils.isEmpty(a2)) {
                b(jSONObject, a2);
                a(jSONObject, a2);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
        if (r2 != null) goto L_0x007d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0097, code lost:
        if (r2 != null) goto L_0x007d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public org.json.JSONObject f() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto L_0x000e
            return r3
        L_0x000e:
            android.content.Context r2 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            r2.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.util.List<java.lang.String> r4 = r8.l     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.lang.String r4 = (java.lang.String) r4     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.lang.String r6 = "select *  from __is where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            r7[r5] = r4     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            if (r4 == 0) goto L_0x0053
            boolean r5 = r4.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            if (r5 == 0) goto L_0x0053
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            int r3 = r4.getColumnIndex(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            java.lang.String r3 = r4.getString(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            int r6 = r4.getColumnIndex(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            java.lang.String r6 = r4.getString(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r5.put(r1, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r5.put(r0, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r3 = r5
        L_0x0053:
            r2.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            if (r4 == 0) goto L_0x005b
            r4.close()
        L_0x005b:
            if (r2 == 0) goto L_0x0060
            r2.endTransaction()     // Catch: all -> 0x0060
        L_0x0060:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x009a
        L_0x006a:
            r5 = r3
        L_0x006b:
            r3 = r4
            goto L_0x0076
        L_0x006d:
            r5 = r3
        L_0x006e:
            r3 = r4
            goto L_0x008d
        L_0x0070:
            r5 = r3
            goto L_0x0076
        L_0x0072:
            r5 = r3
            goto L_0x008d
        L_0x0074:
            r2 = r3
            r5 = r2
        L_0x0076:
            if (r3 == 0) goto L_0x007b
            r3.close()
        L_0x007b:
            if (r2 == 0) goto L_0x0080
        L_0x007d:
            r2.endTransaction()     // Catch: all -> 0x0080
        L_0x0080:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L_0x009a
        L_0x008b:
            r2 = r3
            r5 = r2
        L_0x008d:
            android.content.Context r0 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x009b
            com.umeng.analytics.pro.g.a(r0)     // Catch: all -> 0x009b
            if (r3 == 0) goto L_0x0097
            r3.close()
        L_0x0097:
            if (r2 == 0) goto L_0x0080
            goto L_0x007d
        L_0x009a:
            return r3
        L_0x009b:
            r0 = move-exception
            if (r3 == 0) goto L_0x00a1
            r3.close()
        L_0x00a1:
            if (r2 == 0) goto L_0x00a6
            r2.endTransaction()     // Catch: all -> 0x00a6
        L_0x00a6:
            android.content.Context r1 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.f():org.json.JSONObject");
    }

    public JSONObject b(boolean z) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z);
        return jSONObject;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    private void a(org.json.JSONObject r11, java.lang.String r12) {
        /*
        // Method dump skipped, instructions count: 418
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, java.lang.String):void");
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    private void b(org.json.JSONObject r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0076, all -> 0x0068
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0076, all -> 0x0068
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0076, all -> 0x0068
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            if (r3 != 0) goto L_0x0023
            java.lang.String r2 = "select *  from __er where __i=?"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            r4 = 0
            r3[r4] = r7     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            android.database.Cursor r7 = r1.rawQuery(r2, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            goto L_0x0027
        L_0x0023:
            android.database.Cursor r7 = r1.rawQuery(r2, r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
        L_0x0027:
            r0 = r7
            if (r0 == 0) goto L_0x005d
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            r7.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
        L_0x002f:
            boolean r2 = r0.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            if (r2 == 0) goto L_0x0052
            java.lang.String r2 = "__a"
            int r2 = r0.getColumnIndex(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            java.lang.String r2 = r0.getString(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            if (r3 != 0) goto L_0x002f
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            java.lang.String r2 = r5.d(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            r3.<init>(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            r7.put(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            goto L_0x002f
        L_0x0052:
            int r2 = r7.length()     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            if (r2 <= 0) goto L_0x005d
            java.lang.String r2 = "error"
            r6.put(r2, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
        L_0x005d:
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0077, all -> 0x0069
            if (r0 == 0) goto L_0x0065
            r0.close()
        L_0x0065:
            if (r1 == 0) goto L_0x0086
            goto L_0x0083
        L_0x0068:
            r1 = r0
        L_0x0069:
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0090
            com.umeng.analytics.pro.g.a(r6)     // Catch: all -> 0x0090
            if (r0 == 0) goto L_0x0073
            r0.close()
        L_0x0073:
            if (r1 == 0) goto L_0x0086
            goto L_0x0083
        L_0x0076:
            r1 = r0
        L_0x0077:
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0090
            com.umeng.analytics.pro.g.a(r6)     // Catch: all -> 0x0090
            if (r0 == 0) goto L_0x0081
            r0.close()
        L_0x0081:
            if (r1 == 0) goto L_0x0086
        L_0x0083:
            r1.endTransaction()     // Catch: all -> 0x0086
        L_0x0086:
            android.content.Context r6 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            return
        L_0x0090:
            r6 = move-exception
            if (r0 == 0) goto L_0x0096
            r0.close()
        L_0x0096:
            if (r1 == 0) goto L_0x009b
            r1.endTransaction()     // Catch: all -> 0x009b
        L_0x009b:
            android.content.Context r7 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
        if (r2 != null) goto L_0x007d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0097, code lost:
        if (r2 != null) goto L_0x007d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public org.json.JSONObject g() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto L_0x000e
            return r3
        L_0x000e:
            android.content.Context r2 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: SQLiteDatabaseCorruptException -> 0x008b, all -> 0x0074
            r2.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.util.List<java.lang.String> r4 = r8.i     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.lang.String r4 = (java.lang.String) r4     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            java.lang.String r6 = "select *  from __sd where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            r7[r5] = r4     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0072, all -> 0x0070
            if (r4 == 0) goto L_0x0053
            boolean r5 = r4.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            if (r5 == 0) goto L_0x0053
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            int r3 = r4.getColumnIndex(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            java.lang.String r3 = r4.getString(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            int r6 = r4.getColumnIndex(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            java.lang.String r6 = r4.getString(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r5.put(r1, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r5.put(r0, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x006e, all -> 0x006b
            r3 = r5
        L_0x0053:
            r2.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x006d, all -> 0x006a
            if (r4 == 0) goto L_0x005b
            r4.close()
        L_0x005b:
            if (r2 == 0) goto L_0x0060
            r2.endTransaction()     // Catch: all -> 0x0060
        L_0x0060:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x009a
        L_0x006a:
            r5 = r3
        L_0x006b:
            r3 = r4
            goto L_0x0076
        L_0x006d:
            r5 = r3
        L_0x006e:
            r3 = r4
            goto L_0x008d
        L_0x0070:
            r5 = r3
            goto L_0x0076
        L_0x0072:
            r5 = r3
            goto L_0x008d
        L_0x0074:
            r2 = r3
            r5 = r2
        L_0x0076:
            if (r3 == 0) goto L_0x007b
            r3.close()
        L_0x007b:
            if (r2 == 0) goto L_0x0080
        L_0x007d:
            r2.endTransaction()     // Catch: all -> 0x0080
        L_0x0080:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L_0x009a
        L_0x008b:
            r2 = r3
            r5 = r2
        L_0x008d:
            android.content.Context r0 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x009b
            com.umeng.analytics.pro.g.a(r0)     // Catch: all -> 0x009b
            if (r3 == 0) goto L_0x0097
            r3.close()
        L_0x0097:
            if (r2 == 0) goto L_0x0080
            goto L_0x007d
        L_0x009a:
            return r3
        L_0x009b:
            r0 = move-exception
            if (r3 == 0) goto L_0x00a1
            r3.close()
        L_0x00a1:
            if (r2 == 0) goto L_0x00a6
            r2.endTransaction()     // Catch: all -> 0x00a6
        L_0x00a6:
            android.content.Context r1 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.g():org.json.JSONObject");
    }

    private JSONArray b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null && optJSONObject.optLong("duration") > 0) {
                jSONArray2.put(optJSONObject);
            }
        }
        return jSONArray2;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    private java.lang.String a(org.json.JSONObject r22, boolean r23) {
        /*
        // Method dump skipped, instructions count: 600
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, boolean):java.lang.String");
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    private java.lang.String b(org.json.JSONObject r11, boolean r12) {
        /*
        // Method dump skipped, instructions count: 258
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if (r0 == null) goto L_0x006b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void a(boolean r6, boolean r7) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            if (r7 == 0) goto L_0x0018
            if (r6 == 0) goto L_0x0053
            java.lang.String r6 = "delete from __is"
            r0.execSQL(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            goto L_0x0053
        L_0x0018:
            java.util.List<java.lang.String> r6 = r5.l     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            int r6 = r6.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            r7 = 0
            if (r6 <= 0) goto L_0x004c
            r1 = 0
        L_0x0022:
            if (r7 >= r6) goto L_0x004b
            java.util.List<java.lang.String> r2 = r5.l     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            java.lang.Object r2 = r2.get(r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            java.lang.String r2 = (java.lang.String) r2     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            if (r2 != 0) goto L_0x002f
            r1 = 1
        L_0x002f:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            r3.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            java.lang.String r4 = "delete from __is where __ii=\""
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            r3.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            java.lang.String r2 = "\""
            r3.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            java.lang.String r2 = r3.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            r0.execSQL(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            int r7 = r7 + 1
            goto L_0x0022
        L_0x004b:
            r7 = r1
        L_0x004c:
            if (r7 == 0) goto L_0x0053
            java.lang.String r6 = "delete from __is where __ii is null"
            r0.execSQL(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
        L_0x0053:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0059
            if (r0 == 0) goto L_0x006b
            goto L_0x0068
        L_0x0059:
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0075
            com.umeng.analytics.pro.g.a(r6)     // Catch: all -> 0x0075
            if (r0 == 0) goto L_0x006b
            goto L_0x0068
        L_0x0061:
            android.content.Context r6 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0075
            com.umeng.analytics.pro.g.a(r6)     // Catch: all -> 0x0075
            if (r0 == 0) goto L_0x006b
        L_0x0068:
            r0.endTransaction()     // Catch: all -> 0x006b
        L_0x006b:
            android.content.Context r6 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            return
        L_0x0075:
            r6 = move-exception
            if (r0 == 0) goto L_0x007b
            r0.endTransaction()     // Catch: all -> 0x007b
        L_0x007b:
            android.content.Context r7 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        if (r0 != null) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
        if (r0 == null) goto L_0x0058;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void b(boolean r3, boolean r4) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            if (r4 == 0) goto L_0x0018
            if (r3 == 0) goto L_0x004d
            java.lang.String r3 = "delete from __sd"
            r0.execSQL(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            goto L_0x004d
        L_0x0018:
            java.util.List<java.lang.String> r3 = r2.i     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            int r3 = r3.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            if (r3 <= 0) goto L_0x004d
            r3 = 0
        L_0x0021:
            java.util.List<java.lang.String> r4 = r2.i     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            int r4 = r4.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            if (r3 >= r4) goto L_0x004d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.lang.String r1 = "delete from __sd where __ii=\""
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.util.List<java.lang.String> r1 = r2.i     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.lang.Object r1 = r1.get(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.lang.String r1 = (java.lang.String) r1     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.lang.String r1 = "\""
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            java.lang.String r4 = r4.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            int r3 = r3 + 1
            goto L_0x0021
        L_0x004d:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0062, all -> 0x0053
            if (r0 == 0) goto L_0x0058
            goto L_0x0055
        L_0x0053:
            if (r0 == 0) goto L_0x0058
        L_0x0055:
            r0.endTransaction()     // Catch: all -> 0x0058
        L_0x0058:
            android.content.Context r3 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)
            r3.b()
            goto L_0x006a
        L_0x0062:
            android.content.Context r3 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x006b
            com.umeng.analytics.pro.g.a(r3)     // Catch: all -> 0x006b
            if (r0 == 0) goto L_0x0058
            goto L_0x0055
        L_0x006a:
            return
        L_0x006b:
            r3 = move-exception
            if (r0 == 0) goto L_0x0071
            r0.endTransaction()     // Catch: all -> 0x0071
        L_0x0071:
            android.content.Context r4 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
        if (r0 != null) goto L_0x0049;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005b, code lost:
        if (r0 == null) goto L_0x004c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void h() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            java.util.List<java.lang.Integer> r1 = r4.j     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            int r1 = r1.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            if (r1 <= 0) goto L_0x003c
            r1 = 0
        L_0x0017:
            java.util.List<java.lang.Integer> r2 = r4.j     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            int r2 = r2.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            if (r1 >= r2) goto L_0x003c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r2.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            java.lang.String r3 = "delete from __et where rowid="
            r2.append(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            java.util.List<java.lang.Integer> r3 = r4.j     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            java.lang.Object r3 = r3.get(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r2.append(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            java.lang.String r2 = r2.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r0.execSQL(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            int r1 = r1 + 1
            goto L_0x0017
        L_0x003c:
            java.util.List<java.lang.Integer> r1 = r4.j     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r1.clear()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0056, all -> 0x0047
            if (r0 == 0) goto L_0x004c
            goto L_0x0049
        L_0x0047:
            if (r0 == 0) goto L_0x004c
        L_0x0049:
            r0.endTransaction()     // Catch: all -> 0x004c
        L_0x004c:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x005e
        L_0x0056:
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x005f
            com.umeng.analytics.pro.g.a(r1)     // Catch: all -> 0x005f
            if (r0 == 0) goto L_0x004c
            goto L_0x0049
        L_0x005e:
            return
        L_0x005f:
            r1 = move-exception
            if (r0 == 0) goto L_0x0065
            r0.endTransaction()     // Catch: all -> 0x0065
        L_0x0065:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.h():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 != null) goto L_0x001b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
        if (r0 == null) goto L_0x001e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void i() {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            java.lang.String r1 = "delete from __er"
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0028, all -> 0x0019
            if (r0 == 0) goto L_0x001e
            goto L_0x001b
        L_0x0019:
            if (r0 == 0) goto L_0x001e
        L_0x001b:
            r0.endTransaction()     // Catch: all -> 0x001e
        L_0x001e:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x0030
        L_0x0028:
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0031
            com.umeng.analytics.pro.g.a(r1)     // Catch: all -> 0x0031
            if (r0 == 0) goto L_0x001e
            goto L_0x001b
        L_0x0030:
            return
        L_0x0031:
            r1 = move-exception
            if (r0 == 0) goto L_0x0037
            r0.endTransaction()     // Catch: all -> 0x0037
        L_0x0037:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.i():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0066, code lost:
        if (r1 == null) goto L_0x0056;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0051, code lost:
        if (r1 == null) goto L_0x0056;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "\""
            java.lang.String r1 = r5.k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L_0x0079
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0050
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0050
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0050
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r4 = "delete from __er where __i=\""
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r4 = r5.k     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.append(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r3 = r3.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r1.execSQL(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r4 = "delete from __et where __i=\""
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r4 = r5.k     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r3.append(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            java.lang.String r0 = r3.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r1.execSQL(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0061, all -> 0x0051
            if (r1 == 0) goto L_0x0056
            goto L_0x0053
        L_0x0050:
            r1 = r2
        L_0x0051:
            if (r1 == 0) goto L_0x0056
        L_0x0053:
            r1.endTransaction()     // Catch: all -> 0x0056
        L_0x0056:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L_0x0079
        L_0x0060:
            r1 = r2
        L_0x0061:
            android.content.Context r0 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x0069
            com.umeng.analytics.pro.g.a(r0)     // Catch: all -> 0x0069
            if (r1 == 0) goto L_0x0056
            goto L_0x0053
        L_0x0069:
            r0 = move-exception
            if (r1 == 0) goto L_0x006f
            r1.endTransaction()     // Catch: all -> 0x006f
        L_0x006f:
            android.content.Context r1 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            throw r0
        L_0x0079:
            r5.k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.j():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007a, code lost:
        if (r0 == null) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0066, code lost:
        if (r0 != null) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void a(boolean r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r4 = "\""
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            if (r1 != 0) goto L_0x0060
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r2 = "delete from __er where __i=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r1 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r2 = "delete from __et where __i=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r1 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.util.List<java.lang.Integer> r1 = r3.j     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.clear()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r2 = "delete from __sd where __ii=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            java.lang.String r4 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
        L_0x0060:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0075, all -> 0x0066
            if (r0 == 0) goto L_0x006b
            goto L_0x0068
        L_0x0066:
            if (r0 == 0) goto L_0x006b
        L_0x0068:
            r0.endTransaction()     // Catch: all -> 0x006b
        L_0x006b:
            android.content.Context r4 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            goto L_0x007d
        L_0x0075:
            android.content.Context r4 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x007e
            com.umeng.analytics.pro.g.a(r4)     // Catch: all -> 0x007e
            if (r0 == 0) goto L_0x006b
            goto L_0x0068
        L_0x007d:
            return
        L_0x007e:
            r4 = move-exception
            if (r0 == 0) goto L_0x0084
            r0.endTransaction()     // Catch: all -> 0x0084
        L_0x0084:
            android.content.Context r5 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r5 = com.umeng.analytics.pro.f.a(r5)
            r5.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(boolean, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        if (r0 == null) goto L_0x0038;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
        if (r0 != null) goto L_0x0035;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void b(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.d     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            if (r1 != 0) goto L_0x002d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            java.lang.String r4 = "\""
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            java.lang.String r4 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
        L_0x002d:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0042, all -> 0x0033
            if (r0 == 0) goto L_0x0038
            goto L_0x0035
        L_0x0033:
            if (r0 == 0) goto L_0x0038
        L_0x0035:
            r0.endTransaction()     // Catch: all -> 0x0038
        L_0x0038:
            android.content.Context r4 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r4 = com.umeng.analytics.pro.f.a(r4)
            r4.b()
            goto L_0x004a
        L_0x0042:
            android.content.Context r4 = com.umeng.analytics.pro.h.d     // Catch: all -> 0x004b
            com.umeng.analytics.pro.g.a(r4)     // Catch: all -> 0x004b
            if (r0 == 0) goto L_0x0038
            goto L_0x0035
        L_0x004a:
            return
        L_0x004b:
            r4 = move-exception
            if (r0 == 0) goto L_0x0051
            r0.endTransaction()     // Catch: all -> 0x0051
        L_0x0051:
            android.content.Context r0 = com.umeng.analytics.pro.h.d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(java.lang.String):void");
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(d, g);
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = PreferenceWrapper.getDefault(d).getString(g, null);
                    if (TextUtils.isEmpty(multiProcessSP)) {
                        multiProcessSP = UMUtils.genId();
                    }
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(d, g, multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String substring = multiProcessSP.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < substring.length(); i++) {
                        char charAt = substring.charAt(i);
                        if (!Character.isDigit(charAt)) {
                            sb.append(charAt);
                        } else if (Integer.parseInt(Character.toString(charAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                        }
                    }
                    e = sb.toString();
                }
                if (!TextUtils.isEmpty(e)) {
                    e += new StringBuilder(e).reverse().toString();
                    String multiProcessSP2 = UMUtils.getMultiProcessSP(d, h);
                    if (TextUtils.isEmpty(multiProcessSP2)) {
                        UMUtils.setMultiProcessSP(d, h, c(f));
                    } else if (!f.equals(d(multiProcessSP2))) {
                        b(true, false);
                        a(true, false);
                        h();
                        i();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public String d(String str) {
        try {
            if (TextUtils.isEmpty(e)) {
                return str;
            }
            return new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), e.getBytes()));
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT >= 29 && !TextUtils.isEmpty(str)) {
                try {
                    new JSONObject(str);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> UMStoreManager decrypt failed, return origin data.");
                    return str;
                } catch (Throwable unused2) {
                    return null;
                }
            }
            return null;
        }
    }
}
