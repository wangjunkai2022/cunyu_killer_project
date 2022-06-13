package top.niunaijun.blackbox.utils.compat;

import android.content.Context;
import android.content.ContextWrapper;
import reflection.android.app.ContextImpl;
import top.niunaijun.blackbox.BlackBoxCore;

/* loaded from: classes4.dex */
public class ContextCompat {
    public static final String TAG = "ContextFixer";

    public static void fix(Context context) {
        int i = 0;
        do {
            try {
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                    i++;
                } else {
                    ContextImpl.mPackageManager.set(context, null);
                    context.getPackageManager();
                    ContextImpl.mBasePackageName.set(context, BlackBoxCore.getHostPkg());
                    ContextImpl.mOpPackageName.set(context, BlackBoxCore.getHostPkg());
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } while (i < 10);
    }
}
