package com.tencent.liteav.audio.impl.Play;

import android.content.Context;
import android.media.AudioTrack;
import com.tencent.liteav.audio.TXCAudioEngine;
import com.tencent.liteav.basic.log.TXCLog;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCMultAudioTrackPlayer {
    private static final String TAG = "AudioCenter:" + TXCMultAudioTrackPlayer.class.getSimpleName();
    private int mAudioMode;
    private AudioTrackThread mAudioThread;
    private volatile boolean mAudioTrackStarted;
    private int mBits;
    private int mChannel;
    private Context mContext;
    private volatile boolean mIsStarted;
    private boolean mMute;
    private int mSampleRate;

    private native void nativeClassInit();

    /* JADX INFO: Access modifiers changed from: private */
    public native byte[] nativeGetMixedTracksDataToAudioTrack();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class AudioTrackThread extends Thread {
        volatile boolean mIsLooping = false;

        public AudioTrackThread(String str) {
            super(str);
        }

        public void startLoop() {
            this.mIsLooping = true;
        }

        public void stopLoop() {
            this.mIsLooping = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class TXCMultAudioTrackPlayerHolder {
        private static TXCMultAudioTrackPlayer instance = new TXCMultAudioTrackPlayer();

        private TXCMultAudioTrackPlayerHolder() {
        }

        public static TXCMultAudioTrackPlayer getInstance() {
            return instance;
        }
    }

    public static TXCMultAudioTrackPlayer getInstance() {
        return TXCMultAudioTrackPlayerHolder.getInstance();
    }

    private TXCMultAudioTrackPlayer() {
        this.mAudioThread = null;
        this.mMute = false;
        this.mIsStarted = false;
        this.mAudioTrackStarted = false;
        this.mContext = null;
        this.mAudioMode = 0;
        this.mSampleRate = 48000;
        this.mChannel = 2;
        this.mBits = 16;
        nativeClassInit();
    }

    public void start() {
        TXCLog.w(TAG, "mult-track-player start!");
        if (this.mIsStarted) {
            TXCLog.e(TAG, "mult-track-player can not start because of has started!");
        } else if (this.mSampleRate == 0 || this.mChannel == 0) {
            String str = TAG;
            TXCLog.e(str, "strat mult-track-player failed with invalid audio info , samplerate:" + this.mSampleRate + ", channels:" + this.mChannel);
        } else {
            this.mIsStarted = true;
            if (this.mAudioThread == null) {
                this.mAudioThread = new AudioTrackThread("AUDIO_TRACK") { // from class: com.tencent.liteav.audio.impl.Play.TXCMultAudioTrackPlayer.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            int i = TXCMultAudioTrackPlayer.this.mChannel == 1 ? 2 : 3;
                            int i2 = TXCMultAudioTrackPlayer.this.mBits == 8 ? 3 : 2;
                            int minBufferSize = AudioTrack.getMinBufferSize(TXCMultAudioTrackPlayer.this.mSampleRate, i, i2);
                            AudioTrack audioTrack = new AudioTrack(3, TXCMultAudioTrackPlayer.this.mSampleRate, i, i2, minBufferSize, 1);
                            TXCLog.i(TXCMultAudioTrackPlayer.TAG, "create audio track, samplerate:" + TXCMultAudioTrackPlayer.this.mSampleRate + ", channels:" + TXCMultAudioTrackPlayer.this.mChannel + ", bits:" + TXCMultAudioTrackPlayer.this.mBits + " mMinBufferLength:" + minBufferSize);
                            try {
                                audioTrack.play();
                                TXCMultAudioTrackPlayer.this.mAudioTrackStarted = true;
                                TXCMultAudioTrackPlayer tXCMultAudioTrackPlayer = TXCMultAudioTrackPlayer.this;
                                tXCMultAudioTrackPlayer.setAudioMode(tXCMultAudioTrackPlayer.mContext, TXCMultAudioTrackPlayer.this.mAudioMode);
                                int i3 = 100;
                                int i4 = 0;
                                while (this.mIsLooping) {
                                    byte[] nativeGetMixedTracksDataToAudioTrack = TXCMultAudioTrackPlayer.this.nativeGetMixedTracksDataToAudioTrack();
                                    if (nativeGetMixedTracksDataToAudioTrack == null || nativeGetMixedTracksDataToAudioTrack.length <= 0) {
                                        try {
                                            sleep(5);
                                        } catch (InterruptedException unused) {
                                        }
                                    } else {
                                        TXCAudioEngine.onCorePlayPcmData(nativeGetMixedTracksDataToAudioTrack, 0, TXCMultAudioTrackPlayer.this.mSampleRate, TXCMultAudioTrackPlayer.this.mChannel);
                                        if (TXCMultAudioTrackPlayer.this.mMute) {
                                            Arrays.fill(nativeGetMixedTracksDataToAudioTrack, (byte) 0);
                                        }
                                        if (i3 != 0 && i4 < 800) {
                                            short[] sArr = new short[nativeGetMixedTracksDataToAudioTrack.length / 2];
                                            ByteBuffer.wrap(nativeGetMixedTracksDataToAudioTrack).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
                                            for (int i5 = 0; i5 < sArr.length; i5++) {
                                                sArr[i5] = (short) (sArr[i5] / i3);
                                            }
                                            ByteBuffer.wrap(nativeGetMixedTracksDataToAudioTrack).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().put(sArr);
                                            i4 += nativeGetMixedTracksDataToAudioTrack.length / ((TXCMultAudioTrackPlayer.this.mSampleRate * 2) / 1000);
                                            i3 = (i3 * (800 - i4)) / 800;
                                        }
                                        audioTrack.write(nativeGetMixedTracksDataToAudioTrack, 0, nativeGetMixedTracksDataToAudioTrack.length);
                                    }
                                }
                                try {
                                    audioTrack.pause();
                                    audioTrack.flush();
                                    audioTrack.stop();
                                    audioTrack.release();
                                } catch (Exception e) {
                                    TXCLog.e(TXCMultAudioTrackPlayer.TAG, "stop AudioTrack failed.", e);
                                }
                                TXCLog.e(TXCMultAudioTrackPlayer.TAG, "mult-player thread stop finish!");
                            } catch (Exception e2) {
                                TXCLog.e(TXCMultAudioTrackPlayer.TAG, "start play failed.", e2);
                            }
                        } catch (Exception e3) {
                            TXCLog.e(TXCMultAudioTrackPlayer.TAG, "create AudioTrack failed.", e3);
                        }
                    }
                };
                this.mAudioThread.startLoop();
                this.mAudioThread.start();
            }
            TXCLog.w(TAG, "mult-track-player thread start finish!");
        }
    }

    public void stop() {
        TXCLog.w(TAG, "mult-track-player stop!");
        if (!this.mIsStarted) {
            TXCLog.w(TAG, "mult-track-player can not stop because of not started yet!");
            return;
        }
        AudioTrackThread audioTrackThread = this.mAudioThread;
        if (audioTrackThread != null) {
            audioTrackThread.stopLoop();
            this.mAudioThread = null;
        }
        this.mAudioMode = 0;
        this.mContext = null;
        this.mAudioTrackStarted = false;
        this.mIsStarted = false;
        TXCLog.w(TAG, "mult-track-player stop finish!");
    }

    public synchronized void setAudioMode(Context context, int i) {
        this.mContext = context;
        this.mAudioMode = i;
        if (this.mAudioTrackStarted) {
            TXCLog.w(TAG, "mult-track-player setAudioRoute~");
        } else {
            TXCLog.w(TAG, "mult-track-player do'not setAudioRoute~");
        }
    }

    public boolean isPlaying() {
        return this.mIsStarted;
    }

    public void setMute(boolean z) {
        this.mMute = z;
    }
}
