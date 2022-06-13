package top.niunaijun.blackbox.utils.compat;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import reflection.android.os.BaseBundle;
import reflection.android.os.BundleICS;

/* loaded from: classes4.dex */
public class BundleCompat {
    public static IBinder getBinder(Bundle bundle, String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return reflection.android.os.Bundle.getIBinder.call(bundle, str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            reflection.android.os.Bundle.putIBinder.call(bundle, str, iBinder);
        }
    }

    public static void putBinder(Intent intent, String str, IBinder iBinder) {
        Bundle bundle = new Bundle();
        putBinder(bundle, "binder", iBinder);
        intent.putExtra(str, bundle);
    }

    public static IBinder getBinder(Intent intent, String str) {
        Bundle bundleExtra = intent.getBundleExtra(str);
        if (bundleExtra != null) {
            return getBinder(bundleExtra, "binder");
        }
        return null;
    }

    public static void clearParcelledData(Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInt(0);
        obtain.setDataPosition(0);
        if (BaseBundle.REF.getClazz() != null) {
            Parcel parcel = BaseBundle.mParcelledData.get(bundle);
            if (parcel != null) {
                parcel.recycle();
            }
            BaseBundle.mParcelledData.set(bundle, obtain);
        } else if (BundleICS.REF.getClazz() != null) {
            Parcel parcel2 = BundleICS.mParcelledData.get(bundle);
            if (parcel2 != null) {
                parcel2.recycle();
            }
            BundleICS.mParcelledData.set(bundle, obtain);
        }
    }
}
