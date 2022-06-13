package ren.yale.android.cachewebviewlib.utils;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: classes2.dex */
public class AppUtils {
    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
