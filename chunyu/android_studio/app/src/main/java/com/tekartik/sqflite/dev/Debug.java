package com.tekartik.sqflite.dev;

import android.util.Log;

/* loaded from: classes2.dex */
public class Debug {
    public static boolean EXTRA_LOGV;
    public static boolean LOGV;
    public static boolean _EXTRA_LOGV;

    @Deprecated
    public static void devLog(String str, String str2) {
        Log.d("ContentValues", str2);
    }
}
