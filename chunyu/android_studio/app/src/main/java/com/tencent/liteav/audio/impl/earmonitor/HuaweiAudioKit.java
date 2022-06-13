package com.tencent.liteav.audio.impl.earmonitor;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKaraokeFeatureKit;
import com.huawei.multimedia.liteav.audiokit.interfaces.HwAudioKit;
import com.huawei.multimedia.liteav.audiokit.interfaces.IAudioKitCallback;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.basic.util.j;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class HuaweiAudioKit implements IAudioKitCallback, TXSystemAudioKit, j.a {
    private static final int BACKGROUND_CHECK_INTERVAL = (int) TimeUnit.SECONDS.toMillis(1);
    private static final String TAG = "HuaweiAudioKit";
    private a mAudioKitCallback;
    private j mBackgroundCheckTimer;
    private HwAudioKit mHwAudioKit;
    private HwAudioKaraokeFeatureKit mKaraokeKit;
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());
    private boolean mIsAudioKitIniting = false;
    private boolean mIsEarMonitoringEnabled = false;
    private boolean mIsBackgroundWhenLastCheck = false;

    @Override // com.tencent.liteav.audio.impl.earmonitor.TXSystemAudioKit
    public void initialize(final Context context, final a aVar) {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.1
            @Override // java.lang.Runnable
            public void run() {
                if (HuaweiAudioKit.this.mHwAudioKit != null) {
                    TXCLog.e(HuaweiAudioKit.TAG, "it's already initialized.");
                    return;
                }
                TXCLog.i(HuaweiAudioKit.TAG, "start initialize audio kit");
                HuaweiAudioKit.this.mIsAudioKitIniting = true;
                HuaweiAudioKit.this.mAudioKitCallback = aVar;
                HuaweiAudioKit.this.mHwAudioKit = new HwAudioKit(context.getApplicationContext(), HuaweiAudioKit.this);
                HuaweiAudioKit.this.mHwAudioKit.initialize();
            }
        });
    }

    @Override // com.tencent.liteav.audio.impl.earmonitor.TXSystemAudioKit
    public void uninitialize() {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.2
            @Override // java.lang.Runnable
            public void run() {
                TXCLog.i(HuaweiAudioKit.TAG, "uninitialize");
                if (HuaweiAudioKit.this.mKaraokeKit != null) {
                    HuaweiAudioKit.this.mKaraokeKit.destroy();
                    HuaweiAudioKit.this.mKaraokeKit = null;
                }
                if (HuaweiAudioKit.this.mHwAudioKit != null) {
                    HuaweiAudioKit.this.mHwAudioKit.destroy();
                    HuaweiAudioKit.this.mHwAudioKit = null;
                }
                HuaweiAudioKit.this.mIsAudioKitIniting = false;
            }
        });
    }

    @Override // com.tencent.liteav.audio.impl.earmonitor.TXSystemAudioKit
    public void startSystemEarMonitoring() {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.3
            @Override // java.lang.Runnable
            public void run() {
                HuaweiAudioKit.this.startTimer();
                HuaweiAudioKit.this.startSystemEarMonitoringInternal();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTimer() {
        if (this.mBackgroundCheckTimer == null) {
            TXCLog.i(TAG, "start background checking timer");
            this.mBackgroundCheckTimer = new j(Looper.getMainLooper(), this);
            this.mBackgroundCheckTimer.a(0, BACKGROUND_CHECK_INTERVAL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSystemEarMonitoringInternal() {
        TXCLog.i(TAG, "startSystemEarMonitoring kit: %s", this.mKaraokeKit);
        HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = this.mKaraokeKit;
        if (hwAudioKaraokeFeatureKit != null) {
            int enableKaraokeFeature = hwAudioKaraokeFeatureKit.enableKaraokeFeature(true);
            if (enableKaraokeFeature == 0 || enableKaraokeFeature == 1805) {
                this.mIsEarMonitoringEnabled = true;
            } else {
                dealWithAudioKitResultInternal(1003);
            }
        }
    }

    @Override // com.tencent.liteav.audio.impl.earmonitor.TXSystemAudioKit
    public void stopSystemEarMonitoring() {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.4
            @Override // java.lang.Runnable
            public void run() {
                HuaweiAudioKit.this.stopTimer();
                HuaweiAudioKit.this.stopSystemEarMonitoringInternal();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopTimer() {
        if (this.mBackgroundCheckTimer != null) {
            TXCLog.i(TAG, "stop background checking timer");
            this.mBackgroundCheckTimer.a();
            this.mBackgroundCheckTimer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopSystemEarMonitoringInternal() {
        TXCLog.i(TAG, "stopSystemEarMonitoring");
        HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = this.mKaraokeKit;
        if (hwAudioKaraokeFeatureKit != null) {
            hwAudioKaraokeFeatureKit.enableKaraokeFeature(false);
            this.mIsEarMonitoringEnabled = false;
        }
    }

    @Override // com.tencent.liteav.audio.impl.earmonitor.TXSystemAudioKit
    public void setSystemEarMonitoringVolume(final int i) {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.5
            @Override // java.lang.Runnable
            public void run() {
                HuaweiAudioKit.this.setSystemEarMonitoringVolumeInternal(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSystemEarMonitoringVolumeInternal(int i) {
        TXCLog.i(TAG, "setSystemEarMonitoringVolumeInternal: %d, kit: %s", Integer.valueOf(i), this.mKaraokeKit);
        HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = this.mKaraokeKit;
        if (hwAudioKaraokeFeatureKit != null) {
            int parameter = hwAudioKaraokeFeatureKit.setParameter(HwAudioKaraokeFeatureKit.ParameName.CMD_SET_VOCAL_VOLUME_BASE, i);
            if (parameter == 1806 || parameter == -2) {
                dealWithAudioKitResultInternal(-2);
            }
        }
    }

    @Override // com.huawei.multimedia.liteav.audiokit.interfaces.IAudioKitCallback
    public void onResult(final int i) {
        this.mUiHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.impl.earmonitor.HuaweiAudioKit.6
            @Override // java.lang.Runnable
            public void run() {
                HuaweiAudioKit.this.dealWithAudioKitResultInternal(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealWithAudioKitResultInternal(int i) {
        a aVar;
        TXCLog.i(TAG, "on audio kit callback: %d", Integer.valueOf(i));
        if (i == 0) {
            this.mIsAudioKitIniting = false;
            a aVar2 = this.mAudioKitCallback;
            if (aVar2 != null) {
                aVar2.onAudioKitInitFinished(this, true);
            }
            if (this.mHwAudioKit.isFeatureSupported(HwAudioKit.FeatureType.HWAUDIO_FEATURE_KARAOKE)) {
                this.mKaraokeKit = (HwAudioKaraokeFeatureKit) this.mHwAudioKit.createFeature(HwAudioKit.FeatureType.HWAUDIO_FEATURE_KARAOKE);
                return;
            }
            a aVar3 = this.mAudioKitCallback;
            if (aVar3 != null) {
                aVar3.onEarMonitoringInitialized(this, false);
            }
        } else if (i == 1000) {
            a aVar4 = this.mAudioKitCallback;
            if (aVar4 != null) {
                aVar4.onEarMonitoringInitialized(this, true);
            }
        } else if (i != 1805 && (aVar = this.mAudioKitCallback) != null) {
            if (this.mIsAudioKitIniting) {
                aVar.onAudioKitInitFinished(this, false);
                this.mIsAudioKitIniting = false;
                return;
            }
            aVar.onAudioKitError(this);
        }
    }

    @Override // com.tencent.liteav.basic.util.j.a
    public void onTimeout() {
        boolean a = h.a(TXCCommonUtil.getAppContext());
        if (this.mIsEarMonitoringEnabled && this.mIsBackgroundWhenLastCheck && !a) {
            stopSystemEarMonitoringInternal();
            startSystemEarMonitoringInternal();
        } else if (a && !this.mIsBackgroundWhenLastCheck) {
            TXCLog.i(TAG, "app has gone to background.");
        }
        this.mIsBackgroundWhenLastCheck = a;
    }
}
