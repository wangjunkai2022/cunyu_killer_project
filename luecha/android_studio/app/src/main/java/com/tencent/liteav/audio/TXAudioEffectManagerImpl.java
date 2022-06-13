package com.tencent.liteav.audio;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXAudioEffectManagerImpl implements TXAudioEffectManager {
    private static final int EFFECT_PLAYER_ID_TYPE = 2;
    private static final int NEW_BGM_PLAYER_ID_TYPE = 1;
    private static final int OLD_BGM_PLAYER_ID_TYPE = 0;
    private static final String TAG = "AudioCenter:TXAudioEffectManager";
    private WeakReference<TXAudioEffectManagerListener> mAudioEffectManagerListener;
    private final int mIdType;
    private final List<Long> mPlayingMusicIDList;
    private static final HashMap<Long, TXAudioEffectManager.TXMusicPlayObserver> mMusicObserverMap = new HashMap<>();
    private static final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private static final b sCopyrightedMediaProcessor = new b();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface TXAudioEffectManagerListener {
        void onSwitchVoiceEarMonitor(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long convertIdToInt64(int i, int i2) {
        return ((long) i2) | (((long) i) << 32);
    }

    private static native void nativeClassInit();

    private native long nativeGetAvailableBGMBytes(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native long nativeGetCurrentPositionInMs(long j);

    private native long nativeGetDurationMS(long j);

    private static native long nativeGetDurationMSByPath(String str);

    private native void nativePause(long j);

    private native void nativeResume(long j);

    private native void nativeSeekToPosition(long j, long j2);

    private native void nativeSeekToTime(long j, int i);

    private native void nativeSetAllVolume(int i);

    private native void nativeSetChangerType(long j, int i);

    private native void nativeSetMuteDataDurationToPublish(long j, int i);

    private native void nativeSetPitch(long j, float f);

    private native void nativeSetPlayoutSpeedRate(long j, float f);

    private native void nativeSetPlayoutVolume(long j, int i);

    private native void nativeSetPublishVolume(long j, int i);

    private native void nativeSetReverbType(long j, int i);

    private native void nativeSetSpeedRate(long j, float f);

    private native void nativeSetVolume(long j, int i);

    private native boolean nativeStartPlay(long j, String str, int i, boolean z, boolean z2, boolean z3);

    private native void nativeStartPlayRange(long j, long j2, long j3);

    private native void nativeStopPlay(long j);

    static {
        h.f();
        nativeClassInit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class AudioEffectManagerHolder {
        private static final TXAudioEffectManagerImpl INSTANCE = new TXAudioEffectManagerImpl(0);

        private AudioEffectManagerHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class AudioEffectManagerCacheHolder {
        private static final TXAudioEffectManagerImpl INSTANCE = new TXAudioEffectManagerImpl(2);

        private AudioEffectManagerCacheHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class AudioEffectManagerAutoCacheHolder {
        private static final TXAudioEffectManagerImpl INSTANCE = new TXAudioEffectManagerImpl(1);

        private AudioEffectManagerAutoCacheHolder() {
        }
    }

    public static TXAudioEffectManagerImpl getInstance() {
        return AudioEffectManagerHolder.INSTANCE;
    }

    public static TXAudioEffectManagerImpl getCacheInstance() {
        return AudioEffectManagerCacheHolder.INSTANCE;
    }

    public static TXAudioEffectManagerImpl getAutoCacheHolder() {
        return AudioEffectManagerAutoCacheHolder.INSTANCE;
    }

    private TXAudioEffectManagerImpl(int i) {
        this.mPlayingMusicIDList = new ArrayList();
        this.mAudioEffectManagerListener = null;
        this.mIdType = i;
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void enableVoiceEarMonitor(boolean z) {
        TXAudioEffectManagerListener tXAudioEffectManagerListener;
        TXCLog.i("AudioCenter:TXAudioEffectManager", "enableVoiceEarMonitor enable:" + z);
        WeakReference<TXAudioEffectManagerListener> weakReference = this.mAudioEffectManagerListener;
        if (!(weakReference == null || (tXAudioEffectManagerListener = weakReference.get()) == null)) {
            tXAudioEffectManagerListener.onSwitchVoiceEarMonitor(z);
        }
        TXCAudioEngine.enableAudioEarMonitoring(z);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceEarMonitorVolume(int i) {
        TXCAudioEngine.setAudioEarMonitoringVolume(i);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceReverbType(TXAudioEffectManager.TXVoiceReverbType tXVoiceReverbType) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setVoiceReverbType reverbType:" + tXVoiceReverbType);
        TXCAudioEngine.getInstance().setReverbType(tXVoiceReverbType.getNativeValue());
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceChangerType(TXAudioEffectManager.TXVoiceChangerType tXVoiceChangerType) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setVoiceChangerType voiceChangerType:" + tXVoiceChangerType);
        TXCAudioEngine.getInstance().setVoiceChangerType(tXVoiceChangerType);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceCaptureVolume(int i) {
        TXCAudioEngine.getInstance().setSoftwareCaptureVolume(((float) i) / 100.0f);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoicePitch(double d) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setVoicePitch pitch:" + d);
        TXCAudioEngine.getInstance().setVoicePitch(d);
    }

    public void setAudioPlayoutVolume(int i) {
        TXCAudioEngine.getInstance().setMixingPlayoutVolume(((float) i) / 100.0f);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicObserver(final int i, final TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver) {
        AnonymousClass1 r0 = new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.1
            @Override // java.lang.Runnable
            public void run() {
                if (tXMusicPlayObserver == null) {
                    TXAudioEffectManagerImpl.mMusicObserverMap.remove(Long.valueOf(TXAudioEffectManagerImpl.convertIdToInt64(TXAudioEffectManagerImpl.this.mIdType, i)));
                } else {
                    TXAudioEffectManagerImpl.mMusicObserverMap.put(Long.valueOf(TXAudioEffectManagerImpl.convertIdToInt64(TXAudioEffectManagerImpl.this.mIdType, i)), tXMusicPlayObserver);
                }
                TXCLog.i("AudioCenter:TXAudioEffectManager", "setMusicObserver map count: %d", Integer.valueOf(TXAudioEffectManagerImpl.mMusicObserverMap.size()));
            }
        };
        if (Looper.myLooper() == mMainHandler.getLooper()) {
            r0.run();
        } else {
            mMainHandler.post(r0);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public boolean startPlayMusic(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
        if (audioMusicParam == null || TextUtils.isEmpty(audioMusicParam.path)) {
            TXCLog.e("AudioCenter:TXAudioEffectManager", "startPlayMusic failed. invalid param:" + audioMusicParam);
            return false;
        }
        TXCLog.i("AudioCenter:TXAudioEffectManager", "startPlayMusic param:" + audioMusicParam);
        long j = audioMusicParam.startTimeMS;
        long j2 = audioMusicParam.endTimeMS;
        long j3 = 0;
        long j4 = j < 0 ? 0 : j;
        if (j2 >= 0) {
            j3 = j2;
        }
        String a = sCopyrightedMediaProcessor.a(audioMusicParam.path);
        if (TextUtils.isEmpty(a)) {
            return false;
        }
        long convertIdToInt64 = convertIdToInt64(this.mIdType, audioMusicParam.id);
        if (!this.mPlayingMusicIDList.contains(Long.valueOf(convertIdToInt64))) {
            this.mPlayingMusicIDList.add(Long.valueOf(convertIdToInt64));
        }
        sCopyrightedMediaProcessor.a(convertIdToInt64, audioMusicParam.path);
        nativeStartPlayRange(convertIdToInt64, j4, j3);
        return nativeStartPlay(convertIdToInt64, a, audioMusicParam.loopCount, audioMusicParam.publish, audioMusicParam.isShortFile, false);
    }

    public boolean preloadMusic(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
        TXCLog.i("AudioBGMPlayer", "loadMusic");
        long max = Math.max(audioMusicParam.startTimeMS, 0L);
        long max2 = Math.max(audioMusicParam.endTimeMS, 0L);
        String a = sCopyrightedMediaProcessor.a(audioMusicParam.path);
        if (TextUtils.isEmpty(a)) {
            return false;
        }
        long convertIdToInt64 = convertIdToInt64(this.mIdType, audioMusicParam.id);
        if (!this.mPlayingMusicIDList.contains(Long.valueOf(convertIdToInt64))) {
            this.mPlayingMusicIDList.add(Long.valueOf(convertIdToInt64));
        }
        nativeStartPlayRange(convertIdToInt64, max, max2);
        return nativeStartPlay(convertIdToInt64, a, audioMusicParam.loopCount, audioMusicParam.publish, audioMusicParam.isShortFile, true);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void stopPlayMusic(int i) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "stopPlayMusic id:" + i);
        long convertIdToInt64 = convertIdToInt64(this.mIdType, i);
        this.mPlayingMusicIDList.remove(Long.valueOf(convertIdToInt64));
        sCopyrightedMediaProcessor.f(convertIdToInt64, nativeGetCurrentPositionInMs(convertIdToInt64));
        nativeStopPlay(convertIdToInt64);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void pausePlayMusic(int i) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "pausePlayMusic id:" + i);
        long convertIdToInt64 = convertIdToInt64(this.mIdType, i);
        this.mPlayingMusicIDList.remove(Long.valueOf(convertIdToInt64));
        sCopyrightedMediaProcessor.b(convertIdToInt64, nativeGetCurrentPositionInMs(convertIdToInt64));
        nativePause(convertIdToInt64);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void resumePlayMusic(int i) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "resumePlayMusic id:" + i);
        long convertIdToInt64 = convertIdToInt64(this.mIdType, i);
        if (!this.mPlayingMusicIDList.contains(Long.valueOf(convertIdToInt64))) {
            this.mPlayingMusicIDList.add(Long.valueOf(convertIdToInt64));
        }
        sCopyrightedMediaProcessor.c(convertIdToInt64, nativeGetCurrentPositionInMs(convertIdToInt64));
        nativeResume(convertIdToInt64);
    }

    public void interruptAllMusics() {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "interruptAllMusics");
        for (Long l : this.mPlayingMusicIDList) {
            nativePause(l.longValue());
        }
    }

    public void recoverAllMusics() {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "recoverAllMusics");
        for (Long l : this.mPlayingMusicIDList) {
            nativeResume(l.longValue());
        }
    }

    public void stopAllMusics() {
        stopAllMusics(true);
    }

    public void stopAllMusics(boolean z) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "stopAllMusics, cleanObserver:" + z);
        for (Long l : this.mPlayingMusicIDList) {
            final long longValue = l.longValue();
            nativeStopPlay(longValue);
            if (z) {
                mMainHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        TXAudioEffectManagerImpl.mMusicObserverMap.remove(Long.valueOf(longValue));
                    }
                });
            }
        }
        this.mPlayingMusicIDList.clear();
    }

    public void setMusicVolume(int i, int i2) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setMusicVolume " + i2);
        nativeSetVolume(convertIdToInt64(this.mIdType, i), i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPublishVolume(int i, int i2) {
        nativeSetPublishVolume(convertIdToInt64(this.mIdType, i), i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPlayoutVolume(int i, int i2) {
        nativeSetPlayoutVolume(convertIdToInt64(this.mIdType, i), i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setAllMusicVolume(int i) {
        nativeSetAllVolume(i);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPitch(int i, float f) {
        nativeSetPitch(convertIdToInt64(this.mIdType, i), f);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicSpeedRate(int i, float f) {
        nativeSetSpeedRate(convertIdToInt64(this.mIdType, i), f);
    }

    public void setMusicPlayoutSpeedRate(int i, float f) {
        nativeSetPlayoutSpeedRate(convertIdToInt64(this.mIdType, i), f);
    }

    public void setMusicChangerType(int i, int i2) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setMusicChangerType id:" + i + " voiceChangerType:" + i2);
        nativeSetChangerType(convertIdToInt64(this.mIdType, i), i2);
    }

    public void setMusicReverbType(int i, int i2) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setMusicReverbType id:" + i + " reverbType:" + i2);
        nativeSetReverbType(convertIdToInt64(this.mIdType, i), i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public long getMusicCurrentPosInMS(int i) {
        return nativeGetCurrentPositionInMs(convertIdToInt64(this.mIdType, i));
    }

    public long getAvailableBGMBytes(int i) {
        return nativeGetAvailableBGMBytes(convertIdToInt64(this.mIdType, i));
    }

    public void seekMusicToPosInBytes(int i, long j) {
        nativeSeekToPosition(convertIdToInt64(this.mIdType, i), j);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void seekMusicToPosInMS(int i, int i2) {
        long convertIdToInt64 = convertIdToInt64(this.mIdType, i);
        sCopyrightedMediaProcessor.d(convertIdToInt64, (long) i2);
        nativeSeekToTime(convertIdToInt64, i2);
    }

    public void setMuteDataDurationToPublish(int i, int i2) {
        TXCLog.i("AudioCenter:TXAudioEffectManager", "setMuteDataDurationToPublish id:" + i + " millis:" + i2);
        nativeSetMuteDataDurationToPublish(convertIdToInt64(this.mIdType, i), i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public long getMusicDurationInMS(String str) {
        String a = sCopyrightedMediaProcessor.a(str);
        if (TextUtils.isEmpty(a)) {
            return -1;
        }
        return nativeGetDurationMSByPath(a);
    }

    public long getMusicDurationInMSById(int i) {
        return nativeGetDurationMS(convertIdToInt64(this.mIdType, i));
    }

    public static void onEffectFinish(final long j, final int i) {
        mMainHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.3
            @Override // java.lang.Runnable
            public void run() {
                TXCLog.i("AudioCenter:TXAudioEffectManager", "onEffectFinish -> effect id = " + ((int) j) + ", errCode = " + i);
                if (TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j)) != null) {
                    ((TXAudioEffectManager.TXMusicPlayObserver) TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j))).onComplete((int) j, i);
                }
                TXAudioEffectManagerImpl.sCopyrightedMediaProcessor.f(j, TXAudioEffectManagerImpl.getAutoCacheHolder().nativeGetCurrentPositionInMs(j));
            }
        });
    }

    public static void onEffectStart(final long j, final int i) {
        mMainHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.4
            @Override // java.lang.Runnable
            public void run() {
                TXCLog.i("AudioCenter:TXAudioEffectManager", "onEffectStart -> effect id = " + ((int) j) + ", errCode = " + i);
                if (TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j)) != null) {
                    ((TXAudioEffectManager.TXMusicPlayObserver) TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j))).onStart((int) j, i);
                }
            }
        });
    }

    public static void onEffectProgress(final long j, final long j2, final long j3) {
        mMainHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.5
            @Override // java.lang.Runnable
            public void run() {
                if (TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j)) != null) {
                    ((TXAudioEffectManager.TXMusicPlayObserver) TXAudioEffectManagerImpl.mMusicObserverMap.get(Long.valueOf(j))).onPlayProgress((int) j, j2, j3);
                }
                TXAudioEffectManagerImpl.sCopyrightedMediaProcessor.a(j, TXAudioEffectManagerImpl.getAutoCacheHolder().nativeGetCurrentPositionInMs(j));
            }
        });
    }

    public static void onEffectLoop(final long j, final long j2) {
        mMainHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXAudioEffectManagerImpl.6
            @Override // java.lang.Runnable
            public void run() {
                TXCLog.i("AudioCenter:TXAudioEffectManager", "onEffectLoop -> id = " + ((int) j) + " loopCountRemain = " + j2);
                TXAudioEffectManagerImpl.sCopyrightedMediaProcessor.e(j, TXAudioEffectManagerImpl.getAutoCacheHolder().nativeGetCurrentPositionInMs(j));
            }
        });
    }

    public void setAudioEffectManagerListener(TXAudioEffectManagerListener tXAudioEffectManagerListener) {
        this.mAudioEffectManagerListener = new WeakReference<>(tXAudioEffectManagerListener);
    }
}
