package com.tencent.liteav.audio;

import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.audio.impl.Play.TXCMultAudioTrackPlayer;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCUGCBGMPlayer implements TXAudioEffectManager.TXMusicPlayObserver {
    private static final int PLAY_ERR_OPEN = -1;
    private static final int PLAY_SUCCESS = 0;
    private static final String TAG = "AudioCenter:TXCUGCBGMPlayer";
    private int mBGMId;
    private long mEndTimeMS;
    private boolean mIsRunning;
    private long mSeekBytes;
    private float mSpeedRate;
    private long mStartTimeMS;
    private float mVolume;
    private WeakReference<g> mWeakListener;

    static {
        h.f();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a {
        private static TXCUGCBGMPlayer a = new TXCUGCBGMPlayer();

        public static TXCUGCBGMPlayer a() {
            return a;
        }
    }

    public static TXCUGCBGMPlayer getInstance() {
        return a.a();
    }

    private TXCUGCBGMPlayer() {
        this.mWeakListener = null;
        this.mIsRunning = false;
        this.mVolume = 1.0f;
        this.mSpeedRate = 1.0f;
        this.mStartTimeMS = 0;
        this.mEndTimeMS = 0;
        this.mSeekBytes = 0;
        this.mBGMId = Integer.MIN_VALUE;
        TXCMultAudioTrackPlayer.getInstance();
    }

    public synchronized void setOnPlayListener(g gVar) {
        if (gVar == null) {
            this.mWeakListener = null;
        }
        this.mWeakListener = new WeakReference<>(gVar);
    }

    public void startPlay(String str, boolean z) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "startPlay:" + str + "record:" + z);
        if (str != null && !str.isEmpty()) {
            if (this.mIsRunning) {
                TXCLog.w("AudioCenter:TXCUGCBGMPlayer", "BGM is playing, restarting...");
                stopPlay();
            }
            this.mSeekBytes = 0;
            this.mIsRunning = true;
            TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(this.mBGMId, str);
            audioMusicParam.publish = z;
            audioMusicParam.loopCount = 0;
            audioMusicParam.startTimeMS = this.mStartTimeMS;
            audioMusicParam.endTimeMS = this.mEndTimeMS;
            audioMusicParam.isShortFile = true;
            TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "start bgm play : filePath = " + str + " publish:" + z + " startTimeMS:" + this.mStartTimeMS + " endTimeMS:" + this.mEndTimeMS + " isShortFile:" + audioMusicParam.isShortFile + "mVolume:" + this.mVolume);
            TXAudioEffectManagerImpl.getCacheInstance().setMusicVolume(this.mBGMId, (int) (this.mVolume * 100.0f));
            TXAudioEffectManagerImpl.getCacheInstance().setMusicPlayoutSpeedRate(this.mBGMId, this.mSpeedRate);
            if (z) {
                TXAudioEffectManagerImpl.getCacheInstance().setMuteDataDurationToPublish(this.mBGMId, 200);
            }
            boolean startPlayMusic = TXAudioEffectManagerImpl.getCacheInstance().startPlayMusic(audioMusicParam);
            TXAudioEffectManagerImpl.getCacheInstance().setMusicObserver(this.mBGMId, this);
            if (!startPlayMusic) {
                onPlayEnd(-1);
            } else {
                onPlayStart();
            }
        }
    }

    public void stopPlay() {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "stopPlay");
        this.mIsRunning = false;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            TXAudioEffectManagerImpl.getCacheInstance().setMusicObserver(this.mBGMId, null);
            TXAudioEffectManagerImpl.getCacheInstance().stopPlayMusic(this.mBGMId);
        }
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "stopBGMPlay cost(MS): " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public void pause() {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "pause");
        TXAudioEffectManagerImpl.getCacheInstance().pausePlayMusic(this.mBGMId);
    }

    public void resume() {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "resume");
        TXAudioEffectManagerImpl.getCacheInstance().resumePlayMusic(this.mBGMId);
    }

    public void setVolume(float f) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "setVolume:" + f);
        this.mVolume = f;
        TXAudioEffectManagerImpl.getCacheInstance().setMusicVolume(this.mBGMId, (int) (f * 100.0f));
    }

    public void setSpeedRate(float f) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "setSpeedRate:" + f);
        this.mSpeedRate = f;
        TXAudioEffectManagerImpl.getCacheInstance().setMusicPlayoutSpeedRate(this.mBGMId, f);
    }

    public void setChangerType(int i) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "changerType:" + i);
        TXAudioEffectManagerImpl.getCacheInstance().setMusicChangerType(this.mBGMId, i);
    }

    public void setReverbType(int i) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "int reverbType:" + i);
        TXAudioEffectManagerImpl.getCacheInstance().setMusicReverbType(this.mBGMId, i);
    }

    public void playFromTime(long j, long j2) {
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "startPlayRange:" + j + ", " + j2);
        this.mStartTimeMS = j;
        this.mEndTimeMS = j2;
    }

    public void seekBytes(long j) {
        if (j < 0) {
            TXCLog.e("AudioCenter:TXCUGCBGMPlayer", "seek bytes can not be negative. change to 0");
            j = 0;
        }
        long availableBGMBytes = TXAudioEffectManagerImpl.getCacheInstance().getAvailableBGMBytes(this.mBGMId);
        if (availableBGMBytes > 0) {
            j %= availableBGMBytes;
        }
        this.mSeekBytes = j;
        TXCLog.i("AudioCenter:TXCUGCBGMPlayer", "mSeekBytes:" + this.mSeekBytes);
        TXAudioEffectManagerImpl.getCacheInstance().seekMusicToPosInBytes(this.mBGMId, j);
    }

    public long getDurationMS(String str) {
        return TXAudioEffectManagerImpl.getCacheInstance().getMusicDurationInMS(str);
    }

    private void onPlayStart() {
        g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        if (gVar != null) {
            gVar.a();
        }
    }

    private void onPlayEnd(int i) {
        g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        if (gVar != null) {
            gVar.a(i);
        }
    }

    private void onPlayProgress(long j, long j2) {
        g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        if (gVar != null) {
            gVar.a(j, j2);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onPlayProgress(int i, long j, long j2) {
        onPlayProgress(j, j2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onStart(int i, int i2) {
        onPlayStart();
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onComplete(int i, int i2) {
        onPlayEnd(i2);
    }
}
