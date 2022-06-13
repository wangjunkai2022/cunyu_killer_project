package com.huawei.multimedia.liteav.audiokit.interfaces;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import com.tencent.liteav.basic.log.TXCLog;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FeatureKitManager {
    private static final String ENGINE_PACKAGE_NAME = "com.huawei.multimedia.audioengine";
    private static final int PACKAGE_INFO_FLAG = 0;
    private static final String TAG = "HwAudioKit.FeatureKitManager";
    private IAudioKitCallback mCallBack = null;
    private static final Object SET_CALL_BACK_LOCK = new Object();
    private static final Object NEW_FEATUREMANAGER_LOCK = new Object();
    private static final Object BIND_SERVICE_LOCK = new Object();
    private static final Object UNBIND_SERVICE_LOCK = new Object();
    private static FeatureKitManager sInstance = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public static FeatureKitManager getInstance() {
        FeatureKitManager featureKitManager;
        synchronized (NEW_FEATUREMANAGER_LOCK) {
            if (sInstance == null) {
                sInstance = new FeatureKitManager();
            }
            featureKitManager = sInstance;
        }
        return featureKitManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends AudioFeaturesKit> T createFeatureKit(int i, Context context) {
        TXCLog.i("HwAudioKit.FeatureKitManager", "createFeatureKit, type = %d", Integer.valueOf(i));
        if (context == null) {
            return null;
        }
        if (i != 1) {
            TXCLog.i("HwAudioKit.FeatureKitManager", "createFeatureKit, type error");
            return null;
        }
        HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = new HwAudioKaraokeFeatureKit(context);
        hwAudioKaraokeFeatureKit.initialize(context);
        return hwAudioKaraokeFeatureKit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void bindService(Context context, ServiceConnection serviceConnection, String str) {
        synchronized (BIND_SERVICE_LOCK) {
            if (context != null) {
                Intent intent = new Intent();
                intent.setClassName("com.huawei.multimedia.audioengine", str);
                try {
                    TXCLog.i("HwAudioKit.FeatureKitManager", "bindService");
                    context.bindService(intent, serviceConnection, 1);
                } catch (SecurityException e) {
                    TXCLog.e("HwAudioKit.FeatureKitManager", "bindService, SecurityException, %s", e.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void unbindService(Context context, ServiceConnection serviceConnection) {
        TXCLog.i("HwAudioKit.FeatureKitManager", "unbindService");
        synchronized (UNBIND_SERVICE_LOCK) {
            if (context != null) {
                context.unbindService(serviceConnection);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isAudioKitSupport(Context context) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return true;
        }
        try {
            if (packageManager.getPackageInfo("com.huawei.multimedia.audioengine", 0) != null) {
                return true;
            }
            TXCLog.i("HwAudioKit.FeatureKitManager", "packageInfo is null");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            TXCLog.e("HwAudioKit.FeatureKitManager", "isAudioKitSupport ,NameNotFoundException");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCallBack(int i) {
        TXCLog.i("HwAudioKit.FeatureKitManager", "onCallBack, result = %d", Integer.valueOf(i));
        synchronized (SET_CALL_BACK_LOCK) {
            if (getCallBack() != null) {
                getCallBack().onResult(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCallBack(IAudioKitCallback iAudioKitCallback) {
        this.mCallBack = iAudioKitCallback;
    }

    protected IAudioKitCallback getCallBack() {
        return this.mCallBack;
    }
}
