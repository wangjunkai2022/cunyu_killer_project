package top.niunaijun.blackbox.fake.delegate;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IInterface;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import reflection.android.app.IActivityManager;
import reflection.android.content.ContentProviderHolderOreo;
import reflection.android.providers.Settings;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.service.provider.ContentProviderStub;
import top.niunaijun.blackbox.fake.service.provider.SettingsProviderStub;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes3.dex */
public class ContentProviderDelegate {
    public static final String TAG = "ContentProviderDelegate";
    private static Set<String> sInjected = new HashSet();

    public static void update(Object obj, String str) {
        IInterface iInterface;
        IInterface iInterface2;
        if (BuildCompat.isOreo()) {
            iInterface = ContentProviderHolderOreo.provider.get(obj);
        } else {
            iInterface = IActivityManager.ContentProviderHolder.provider.get(obj);
        }
        if (!(iInterface instanceof Proxy)) {
            str.hashCode();
            if (!str.equals("settings")) {
                iInterface2 = new ContentProviderStub().wrapper(iInterface, BlackBoxCore.getHostPkg());
            } else {
                iInterface2 = new SettingsProviderStub().wrapper(iInterface, BlackBoxCore.getHostPkg());
            }
            if (BuildCompat.isOreo()) {
                ContentProviderHolderOreo.provider.set(obj, iInterface2);
            } else {
                IActivityManager.ContentProviderHolder.provider.set(obj, iInterface2);
            }
        }
    }

    public static void init() {
        clearSettingProvider();
        BlackBoxCore.getContext().getContentResolver().call(Uri.parse("content://settings"), "", (String) null, (Bundle) null);
    }

    public static void clearSettingProvider() {
        Object obj;
        Object obj2 = Settings.System.sNameValueCache.get();
        if (obj2 != null) {
            clearContentProvider(obj2);
        }
        Object obj3 = Settings.Secure.sNameValueCache.get();
        if (obj3 != null) {
            clearContentProvider(obj3);
        }
        if (Build.VERSION.SDK_INT >= 17 && Settings.Global.REF.getClazz() != null && (obj = Settings.Global.sNameValueCache.get()) != null) {
            clearContentProvider(obj);
        }
    }

    private static void clearContentProvider(Object obj) {
        if (BuildCompat.isOreo()) {
            Object obj2 = Settings.NameValueCacheOreo.mProviderHolder.get(obj);
            if (obj2 != null) {
                Settings.ContentProviderHolder.mContentProvider.set(obj2, null);
                return;
            }
            return;
        }
        Settings.NameValueCache.mContentProvider.set(obj, null);
    }
}
