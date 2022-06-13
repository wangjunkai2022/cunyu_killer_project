package ren.yale.android.cachewebviewlib.utils;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
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
