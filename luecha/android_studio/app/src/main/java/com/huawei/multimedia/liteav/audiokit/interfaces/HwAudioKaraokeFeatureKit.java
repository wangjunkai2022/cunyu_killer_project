package com.huawei.multimedia.liteav.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.multimedia.liteav.audioengine.IHwAudioKaraokeFeature;
import com.tencent.liteav.basic.log.TXCLog;

/* loaded from: classes5.dex */
public class HwAudioKaraokeFeatureKit extends AudioFeaturesKit {
    private static final String ENGINE_CLASS_NAME = "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService";
    private static final String TAG = "HwAudioKit.HwAudioKaraokeFeatureKit";
    private Context mContext;
    private FeatureKitManager mFeatureKitManager;
    private IHwAudioKaraokeFeature mIHwAudioKaraokeFeatureAidl;
    private boolean mIsServiceConnected = false;
    private IBinder mService = null;
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKaraokeFeatureKit.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceConnected");
            HwAudioKaraokeFeatureKit.this.mIHwAudioKaraokeFeatureAidl = IHwAudioKaraokeFeature.Stub.asInterface(iBinder);
            if (HwAudioKaraokeFeatureKit.this.mIHwAudioKaraokeFeatureAidl != null) {
                HwAudioKaraokeFeatureKit.this.mIsServiceConnected = true;
                HwAudioKaraokeFeatureKit.this.mFeatureKitManager.onCallBack(1000);
                HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = HwAudioKaraokeFeatureKit.this;
                hwAudioKaraokeFeatureKit.serviceInit(hwAudioKaraokeFeatureKit.mContext.getPackageName());
                HwAudioKaraokeFeatureKit.this.serviceLinkToDeath(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceDisconnected");
            HwAudioKaraokeFeatureKit.this.mIsServiceConnected = false;
            if (HwAudioKaraokeFeatureKit.this.mFeatureKitManager != null) {
                HwAudioKaraokeFeatureKit.this.mFeatureKitManager.onCallBack(1001);
            }
        }
    };
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKaraokeFeatureKit.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "binderDied");
            HwAudioKaraokeFeatureKit.this.mService.unlinkToDeath(HwAudioKaraokeFeatureKit.this.mDeathRecipient, 0);
            HwAudioKaraokeFeatureKit.this.mFeatureKitManager.onCallBack(1003);
            HwAudioKaraokeFeatureKit.this.mService = null;
        }
    };

    /* loaded from: classes5.dex */
    public enum ParameName {
        CMD_SET_AUDIO_EFFECT_MODE_BASE("Karaoke_reverb_mode="),
        CMD_SET_VOCAL_VOLUME_BASE("Karaoke_volume="),
        CMD_SET_VOCAL_EQUALIZER_MODE("Karaoke_eq_mode=");
        
        private String mParameName;

        ParameName(String str) {
            this.mParameName = str;
        }

        public String getParameName() {
            return this.mParameName;
        }
    }

    public HwAudioKaraokeFeatureKit(Context context) {
        this.mFeatureKitManager = null;
        this.mFeatureKitManager = FeatureKitManager.getInstance();
        this.mContext = context;
    }

    public void serviceLinkToDeath(IBinder iBinder) {
        this.mService = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException unused) {
                this.mFeatureKitManager.onCallBack(1002);
                TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public void initialize(Context context) {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize");
        if (context == null) {
            TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize, context is null");
        } else if (!this.mFeatureKitManager.isAudioKitSupport(context)) {
            this.mFeatureKitManager.onCallBack(2);
            TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize, not install AudioEngine");
        } else {
            bindService(context);
        }
    }

    private void bindService(Context context) {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "bindService");
        FeatureKitManager featureKitManager = this.mFeatureKitManager;
        if (featureKitManager != null && !this.mIsServiceConnected) {
            featureKitManager.bindService(context, this.mConnection, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService");
        }
    }

    public void destroy() {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "destroy, mIsServiceConnected = %b", Boolean.valueOf(this.mIsServiceConnected));
        if (this.mIsServiceConnected) {
            this.mIsServiceConnected = false;
            this.mFeatureKitManager.unbindService(this.mContext, this.mConnection);
        }
    }

    public boolean isKaraokeFeatureSupport() {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "isKaraokeFeatureSupport");
        try {
            if (this.mIHwAudioKaraokeFeatureAidl != null && this.mIsServiceConnected) {
                return this.mIHwAudioKaraokeFeatureAidl.isKaraokeFeatureSupport();
            }
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "isFeatureSupported,RemoteException ex : %s", e.getMessage());
        }
        return false;
    }

    public int enableKaraokeFeature(boolean z) {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "enableKaraokeFeature, enable = %b", Boolean.valueOf(z));
        try {
            if (this.mIHwAudioKaraokeFeatureAidl == null || !this.mIsServiceConnected) {
                return -2;
            }
            return this.mIHwAudioKaraokeFeatureAidl.enableKaraokeFeature(z);
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "enableKaraokeFeature,RemoteException ex : %s", e.getMessage());
            return -2;
        }
    }

    public int getKaraokeLatency() {
        TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "getKaraokeLatency");
        try {
            if (this.mIHwAudioKaraokeFeatureAidl == null || !this.mIsServiceConnected) {
                return -1;
            }
            return this.mIHwAudioKaraokeFeatureAidl.getKaraokeLatency();
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "getKaraokeLatency,RemoteException ex : %s", e.getMessage());
            return -1;
        }
    }

    public int setParameter(ParameName parameName, int i) {
        if (parameName == null) {
            return 1807;
        }
        try {
            TXCLog.i("HwAudioKit.HwAudioKaraokeFeatureKit", "parame.getParameName() = %s, parameValue = %d", parameName.getParameName(), Integer.valueOf(i));
            if (this.mIHwAudioKaraokeFeatureAidl == null || !this.mIsServiceConnected) {
                return -2;
            }
            return this.mIHwAudioKaraokeFeatureAidl.setParameter(parameName.getParameName(), i);
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "setParameter,RemoteException ex : %s", e.getMessage());
            return -2;
        }
    }

    public void serviceInit(String str) {
        try {
            if (this.mIHwAudioKaraokeFeatureAidl != null && this.mIsServiceConnected) {
                this.mIHwAudioKaraokeFeatureAidl.init(str);
            }
        } catch (RemoteException e) {
            TXCLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "isFeatureSupported,RemoteException ex : %s", e.getMessage());
        }
    }
}
