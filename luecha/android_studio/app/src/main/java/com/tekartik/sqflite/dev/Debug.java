package com.tekartik.sqflite.dev;

import android.util.Log;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Debug {
    public static boolean EXTRA_LOGV;
    public static boolean LOGV;
    public static boolean _EXTRA_LOGV;

    @Deprecated
    public static void devLog(String str, String str2) {
        Log.d("ContentValues", str2);
    }
}
