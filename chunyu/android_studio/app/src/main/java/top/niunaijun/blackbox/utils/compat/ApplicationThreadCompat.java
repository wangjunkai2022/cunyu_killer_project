package top.niunaijun.blackbox.utils.compat;

import android.os.IBinder;
import android.os.IInterface;
import reflection.android.app.ApplicationThreadNative;
import reflection.android.app.IApplicationThreadOreo;

/* loaded from: classes3.dex */
public class ApplicationThreadCompat {
    public static IInterface asInterface(IBinder iBinder) {
        if (BuildCompat.isOreo()) {
            return IApplicationThreadOreo.Stub.asInterface.call(iBinder);
        }
        return ApplicationThreadNative.asInterface.call(iBinder, new Object[0]);
    }
}
