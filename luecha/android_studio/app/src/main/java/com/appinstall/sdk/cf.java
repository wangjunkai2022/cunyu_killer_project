package com.appinstall.sdk;

import android.util.Log;

/* loaded from: classes2.dex */
public class cf {
    public static boolean a = true;

    public static void a(String str, Object... objArr) {
        Log.d("AppInstall", String.format(str, objArr));
    }

    public static void b(String str, Object... objArr) {
        Log.w("AppInstall", String.format(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e("AppInstall", String.format(str, objArr));
    }
}
