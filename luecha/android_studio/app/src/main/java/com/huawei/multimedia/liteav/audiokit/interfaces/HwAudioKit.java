package com.huawei.multimedia.liteav.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.multimedia.liteav.audioengine.IHwAudioEngine;
import com.tencent.liteav.basic.log.TXCLog;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class HwAudioKit {
    private static final List<Integer> DEFAULT_FEATURE_LIST = new ArrayList(0);
    private static final String ENGINE_CLASS_NAME = "com.huawei.multimedia.audioengine.HwAudioEngineService";
    private static final String TAG = "HwAudioKit.HwAudioKit";
    private Context mContext;
    private IHwAudioEngine mIHwAudioEngine = null;
    private boolean mIsServiceConnected = false;
    private IBinder mService = null;
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKit.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            HwAudioKit.this.mIHwAudioEngine = IHwAudioEngine.Stub.asInterface(iBinder);
            TXCLog.i("HwAudioKit.HwAudioKit", "onServiceConnected");
            if (HwAudioKit.this.mIHwAudioEngine != null) {
                HwAudioKit.this.mIsServiceConnected = true;
                TXCLog.i("HwAudioKit.HwAudioKit", "onServiceConnected, mIHwAudioEngine is not null");
                HwAudioKit.this.mFeatureKitManager.onCallBack(0);
                HwAudioKit hwAudioKit = HwAudioKit.this;
                hwAudioKit.serviceInit(hwAudioKit.mContext.getPackageName(), "1.0.1");
                HwAudioKit.this.serviceLinkToDeath(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            TXCLog.i("HwAudioKit.HwAudioKit", "onServiceDisconnected");
            HwAudioKit.this.mIHwAudioEngine = null;
            HwAudioKit.this.mIsServiceConnected = false;
            HwAudioKit.this.mFeatureKitManager.onCallBack(4);
        }
    };
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKit.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            HwAudioKit.this.mService.unlinkToDeath(HwAudioKit.this.mDeathRecipient, 0);
            HwAudioKit.this.mFeatureKitManager.onCallBack(6);
            TXCLog.e("HwAudioKit.HwAudioKit", "service binder died");
            HwAudioKit.this.mService = null;
        }
    };
    private FeatureKitManager mFeatureKitManager = FeatureKitManager.getInstance();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum FeatureType {
        HWAUDIO_FEATURE_KARAOKE(1);
        
        private int mFeatureType;

        FeatureType(int i) {
            this.mFeatureType = i;
        }

        public int getFeatureType() {
            return this.mFeatureType;
        }
    }

    public HwAudioKit(Context context, IAudioKitCallback iAudioKitCallback) {
        this.mContext = null;
        this.mFeatureKitManager.setCallBack(iAudioKitCallback);
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void serviceLinkToDeath(IBinder iBinder) {
        this.mService = iBinder;
        try {
            if (this.mService != null) {
                this.mService.linkToDeath(this.mDeathRecipient, 0);
            }
        } catch (RemoteException unused) {
            this.mFeatureKitManager.onCallBack(5);
            TXCLog.e("HwAudioKit.HwAudioKit", "serviceLinkToDeath, RemoteException");
        }
    }

    public void initialize() {
        TXCLog.i("HwAudioKit.HwAudioKit", "initialize");
        Context context = this.mContext;
        if (context == null) {
            TXCLog.i("HwAudioKit.HwAudioKit", "mContext is null");
            this.mFeatureKitManager.onCallBack(7);
        } else if (!this.mFeatureKitManager.isAudioKitSupport(context)) {
            TXCLog.i("HwAudioKit.HwAudioKit", "not install AudioKitEngine");
            this.mFeatureKitManager.onCallBack(2);
        } else {
            bindService(this.mContext);
        }
    }

    private void bindService(Context context) {
        TXCLog.i("HwAudioKit.HwAudioKit", "bindService, mIsServiceConnected = %b", Boolean.valueOf(this.mIsServiceConnected));
        FeatureKitManager featureKitManager = this.mFeatureKitManager;
        if (featureKitManager != null && !this.mIsServiceConnected) {
            featureKitManager.bindService(context, this.mConnection, "com.huawei.multimedia.audioengine.HwAudioEngineService");
        }
    }

    public void destroy() {
        TXCLog.i("HwAudioKit.HwAudioKit", "destroy, mIsServiceConnected = %b", Boolean.valueOf(this.mIsServiceConnected));
        if (this.mIsServiceConnected) {
            this.mIsServiceConnected = false;
            this.mFeatureKitManager.unbindService(this.mContext, this.mConnection);
        }
    }

    public List<Integer> getSupportedFeatures() {
        TXCLog.i("HwAudioKit.HwAudioKit", "getSupportedFeatures");
        try {
            if (this.mIHwAudioEngine != null && this.mIsServiceConnected) {
                return this.mIHwAudioEngine.getSupportedFeatures();
            }
        } catch (RemoteException unused) {
            TXCLog.e("HwAudioKit.HwAudioKit", "getSupportedFeatures, createFeature,wait bind service fail");
        }
        TXCLog.i("HwAudioKit.HwAudioKit", "getSupportedFeatures, service not bind");
        return DEFAULT_FEATURE_LIST;
    }

    public boolean isFeatureSupported(FeatureType featureType) {
        if (featureType == null) {
            return false;
        }
        TXCLog.i("HwAudioKit.HwAudioKit", "isFeatureSupported, type = %d", Integer.valueOf(featureType.getFeatureType()));
        try {
            if (this.mIHwAudioEngine != null && this.mIsServiceConnected) {
                return this.mIHwAudioEngine.isFeatureSupported(featureType.getFeatureType());
            }
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKit", "isFeatureSupported,RemoteException ex : %s", e.getMessage());
        }
        return false;
    }

    public <T extends AudioFeaturesKit> T createFeature(FeatureType featureType) {
        FeatureKitManager featureKitManager = this.mFeatureKitManager;
        if (featureKitManager == null || featureType == null) {
            return null;
        }
        return (T) featureKitManager.createFeatureKit(featureType.getFeatureType(), this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void serviceInit(String str, String str2) {
        TXCLog.i("HwAudioKit.HwAudioKit", "serviceInit");
        try {
            if (this.mIHwAudioEngine != null && this.mIsServiceConnected) {
                this.mIHwAudioEngine.init(str, str2);
            }
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKit", "isFeatureSupported,RemoteException ex : %s", e.getMessage());
        }
    }
}
