package top.niunaijun.blackbox.app.configuration;

import android.app.Application;
import android.content.Context;

/* loaded from: classes3.dex */
public class AppLifecycleCallback {
    public static AppLifecycleCallback EMPTY = new AppLifecycleCallback() { // from class: top.niunaijun.blackbox.app.configuration.AppLifecycleCallback.1
    };

    public void afterApplicationOnCreate(String str, String str2, Application application) {
    }

    public void beforeApplicationOnCreate(String str, String str2, Application application) {
    }

    public void beforeCreateApplication(String str, String str2, Context context) {
    }
}
