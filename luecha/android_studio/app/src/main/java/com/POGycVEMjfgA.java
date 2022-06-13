package com;

import android.app.Activity;
import io.flutter.FlutterInjector;
import io.flutter.app.FlutterApplication;

/* loaded from: classes.dex */
public class POGycVEMjfgA {
    private Activity mCurrentActivity;

    /* JADX WARN: Multi-variable type inference failed */
    public POGycVEMjfgA() {
        ((FlutterApplication) this).mCurrentActivity = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Activity getCurrentActivity() {
        return ((FlutterApplication) this).mCurrentActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate() {
        POGycVEMjfgA.super.onCreate();
        FlutterInjector.instance().flutterLoader().startInitialization(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setCurrentActivity(Activity activity) {
        ((FlutterApplication) this).mCurrentActivity = activity;
    }
}
