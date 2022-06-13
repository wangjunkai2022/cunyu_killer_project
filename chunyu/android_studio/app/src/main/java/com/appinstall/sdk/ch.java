package com.appinstall.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* loaded from: classes4.dex */
public class ch {
    private static Object a(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.get(str);
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String a(Context context) {
        Object a = a(context, "com.appinstall.APP_KEY");
        if (a != null) {
            try {
                String.valueOf(a);
                return "c6o269";
            } catch (Exception unused) {
            }
        }
        return "c6o269";
    }

    public static boolean b(Context context) {
        Object a = a(context, "com.appinstall.ENCRYPT");
        if (a == null) {
            return true;
        }
        try {
            return Boolean.parseBoolean(String.valueOf(a));
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean c(Context context) {
        Object a = a(context, "com.appinstall.PB_ENABLED");
        if (a == null) {
            return true;
        }
        try {
            return Boolean.parseBoolean(String.valueOf(a));
        } catch (Exception unused) {
            return true;
        }
    }
}
