package com.appinstall.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;

/* loaded from: classes2.dex */
public class ci {
    private static cg a = cg.a("PU");

    public static void a(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(strArr, i);
        }
    }

    public static boolean a(Context context) {
        return a(context, "android.permission.READ_PHONE_STATE");
    }

    public static boolean a(Context context, String str) {
        return str == null || Build.VERSION.SDK_INT < 23 || context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
