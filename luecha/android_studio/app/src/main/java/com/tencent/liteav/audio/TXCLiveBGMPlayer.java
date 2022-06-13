package com.tencent.liteav.audio;

import android.os.Handler;
import android.os.Looper;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCLiveBGMPlayer implements TXAudioEffectManager.TXMusicPlayObserver {
    private static final int PLAY_ERR_OPEN = -1;
    private static final int PLAY_SUCCESS = 0;
    private static final String TAG = "AudioCenter:TXCLiveBGMPlayer";
    private int mBGMId;
    private final Handler mHandler;
    private boolean mIsPause;
    private boolean mIsRunning;
    private WeakReference<g> mWeakListener;

    static {
        h.f();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a {
        private static TXCLiveBGMPlayer a = new TXCLiveBGMPlayer();

        public static TXCLiveBGMPlayer a() {
            return a;
        }
    }

    public static TXCLiveBGMPlayer getInstance() {
        return a.a();
    }

    private TXCLiveBGMPlayer() {
        this.mIsRunning = false;
        this.mIsPause = false;
        this.mWeakListener = null;
        this.mBGMId = Integer.MAX_VALUE;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public synchronized void setOnPlayListener(g gVar) {
        if (gVar == null) {
            this.mWeakListener = null;
        }
        this.mWeakListener = new WeakReference<>(gVar);
    }

    public boolean startPlay(String str) {
        if (str == null || str.isEmpty()) {
            TXCLog.e("AudioCenter:TXCLiveBGMPlayer", "start live bgm failed! invalid params!");
            return false;
        }
        this.mIsRunning = true;
        TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(this.mBGMId, str);
        audioMusicParam.publish = true;
        audioMusicParam.loopCount = 0;
        boolean startPlayMusic = TXAudioEffectManagerImpl.getInstance().startPlayMusic(audioMusicParam);
        TXAudioEffectManagerImpl.getInstance().setMusicObserver(this.mBGMId, this);
        if (!startPlayMusic) {
            onPlayEnd(-1);
            return false;
        }
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "start bgm play : filePath = " + str);
        return true;
    }

    public boolean stopPlay() {
        this.mIsRunning = false;
        long currentTimeMillis = System.currentTimeMillis();
        TXAudioEffectManagerImpl.getInstance().setMusicObserver(this.mBGMId, null);
        TXAudioEffectManagerImpl.getInstance().stopPlayMusic(this.mBGMId);
        this.mIsPause = false;
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "stopBGMPlay cost(MS): " + (System.currentTimeMillis() - currentTimeMillis));
        return true;
    }

    public void stopAll() {
        TXAudioEffectManagerImpl.getInstance().stopAllMusics();
        TXAudioEffectManagerImpl.getAutoCacheHolder().stopAllMusics();
        TXAudioEffectManagerImpl.getCacheInstance().stopAllMusics();
    }

    public boolean isRunning() {
        return this.mIsRunning && !this.mIsPause;
    }

    public boolean isPlaying() {
        return this.mIsRunning;
    }

    public boolean pause() {
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "pause");
        this.mIsPause = true;
        TXAudioEffectManagerImpl.getInstance().pausePlayMusic(this.mBGMId);
        return true;
    }

    public boolean resume() {
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "resume");
        this.mIsPause = false;
        TXAudioEffectManagerImpl.getInstance().resumePlayMusic(this.mBGMId);
        return true;
    }

    public boolean setVolume(float f) {
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "setVolume");
        TXAudioEffectManagerImpl.getInstance().setMusicVolume(this.mBGMId, (int) (f * 100.0f));
        return true;
    }

    public boolean setPlayoutVolume(float f) {
        TXCLog.i("AudioCenter:TXCLiveBGMPlayer", "setPlayoutVolume:" + f);
        TXAudioEffectManagerImpl.getInstance().setMusicPlayoutVolume(this.mBGMId, (int) (f * 100.0f));
        return true;
    }

    public boolean setPublishVolume(float f) {
        TXAudioEffectManagerImpl.getInstance().setMusicPublishVolume(this.mBGMId, (int) (f * 100.0f));
        return true;
    }

    public int getBGMDuration(String str) {
        return (int) TXAudioEffectManagerImpl.getInstance().getMusicDurationInMS(str);
    }

    public long getBGMGetCurrentProgressInMs(String str) {
        if (str == null) {
            return TXAudioEffectManagerImpl.getInstance().getMusicCurrentPosInMS(this.mBGMId);
        }
        return 0;
    }

    public void setBGMPosition(int i) {
        TXAudioEffectManagerImpl.getInstance().seekMusicToPosInMS(this.mBGMId, i);
    }

    public void setPitch(float f) {
        TXAudioEffectManagerImpl.getInstance().setMusicPitch(this.mBGMId, f);
    }

    private void onPlayStart(int i) {
        final g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        this.mHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXCLiveBGMPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                g gVar2 = gVar;
                if (gVar2 != null) {
                    gVar2.a();
                }
            }
        });
    }

    private void onPlayEnd(final int i) {
        final g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        this.mHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXCLiveBGMPlayer.2
            @Override // java.lang.Runnable
            public void run() {
                g gVar2 = gVar;
                if (gVar2 != null) {
                    gVar2.a(i);
                }
            }
        });
    }

    private void onPlayProgress(final long j, final long j2) {
        final g gVar;
        synchronized (this) {
            gVar = this.mWeakListener != null ? this.mWeakListener.get() : null;
        }
        this.mHandler.post(new Runnable() { // from class: com.tencent.liteav.audio.TXCLiveBGMPlayer.3
            @Override // java.lang.Runnable
            public void run() {
                g gVar2 = gVar;
                if (gVar2 != null) {
                    gVar2.a(j, j2);
                }
            }
        });
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onPlayProgress(int i, long j, long j2) {
        onPlayProgress(j, j2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onStart(int i, int i2) {
        onPlayStart(i2);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onComplete(int i, int i2) {
        onPlayEnd(i2);
    }
}
