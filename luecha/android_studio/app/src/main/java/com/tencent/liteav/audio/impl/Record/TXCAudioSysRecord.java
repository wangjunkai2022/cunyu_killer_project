package com.tencent.liteav.audio.impl.Record;

import android.content.Context;
import android.media.AudioRecord;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCAudioSysRecord implements Runnable {
    private static final String TAG = "AudioCenter:" + TXCAudioSysRecord.class.getSimpleName();
    private static TXCAudioSysRecord instance = null;
    private Context mContext;
    private AudioRecord mMic;
    private WeakReference<c> mWeakRefListener;
    private int mSampleRate = 48000;
    private int mChannels = 1;
    private int mBits = 16;
    private int mAECType = 0;
    private byte[] mRecordBuffer = null;
    private Thread mRecordThread = null;
    private boolean mIsRunning = false;
    private boolean mIsCapFirstFrame = false;
    private boolean mSendMuteData = false;
    private AtomicBoolean mPause = new AtomicBoolean(false);
    private Object threadMutex = new Object();

    private native void nativeClassInit();

    private native void nativeSendSysRecordAudioData(byte[] bArr, int i, int i2, int i3, int i4);

    public static TXCAudioSysRecord getInstance() {
        if (instance == null) {
            synchronized (TXCAudioSysRecord.class) {
                if (instance == null) {
                    instance = new TXCAudioSysRecord();
                }
            }
        }
        return instance;
    }

    private TXCAudioSysRecord() {
        nativeClassInit();
    }

    public synchronized void setAudioRecordListener(c cVar) {
        if (cVar == null) {
            this.mWeakRefListener = null;
        } else {
            this.mWeakRefListener = new WeakReference<>(cVar);
        }
    }

    public void start(int i, int i2, int i3) {
        TXCLog.i(TAG, TtmlNode.START);
        synchronized (this.threadMutex) {
            stop();
            this.mSampleRate = i;
            this.mChannels = i2;
            this.mBits = i3;
            this.mIsRunning = true;
            this.mRecordThread = new Thread(this, "AudioSysRecord Thread");
            this.mRecordThread.start();
        }
        TXCLog.i(TAG, "start ok");
    }

    public void stop() {
        TXCLog.i(TAG, NotificationAction.ACTION_STOP);
        synchronized (this.threadMutex) {
            this.mIsRunning = false;
            long currentTimeMillis = System.currentTimeMillis();
            if (!(this.mRecordThread == null || !this.mRecordThread.isAlive() || Thread.currentThread().getId() == this.mRecordThread.getId())) {
                try {
                    this.mRecordThread.join();
                } catch (Exception e) {
                    String str = TAG;
                    TXCLog.e(str, "record stop Exception: " + e.getMessage());
                }
            }
            String str2 = TAG;
            TXCLog.i(str2, "stop ok,stop record cost time(MS): " + (System.currentTimeMillis() - currentTimeMillis));
            this.mRecordThread = null;
        }
        TXCLog.i(TAG, "stop ok");
    }

    public void pause(boolean z) {
        TXCLog.i(TAG, "system audio record pause");
        this.mPause.set(true);
        this.mSendMuteData = z;
    }

    public void resume() {
        TXCLog.i(TAG, "system audio record resume");
        this.mPause.set(false);
    }

    public synchronized boolean isRecording() {
        return this.mIsRunning;
    }

    private void init() {
        int i;
        AudioRecord audioRecord;
        IllegalArgumentException e;
        int i2 = this.mSampleRate;
        int i3 = this.mChannels;
        int i4 = this.mBits;
        TXCLog.i(TAG, String.format("audio record sampleRate = %d, channels = %d, bits = %d, aectype = %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(this.mAECType)));
        int i5 = i3 == 1 ? 16 : 12;
        int i6 = i4 == 8 ? 3 : 2;
        int minBufferSize = AudioRecord.getMinBufferSize(i2, i5, i6);
        try {
            TXCLog.i(TAG, "audio record type: system normal");
            i = minBufferSize;
        } catch (IllegalArgumentException e2) {
            e = e2;
            i = minBufferSize;
        }
        try {
            this.mMic = new AudioRecord(1, i2, i5, i6, minBufferSize * 2);
        } catch (IllegalArgumentException e3) {
            e = e3;
            TXCLog.e(TAG, "create AudioRecord failed.", e);
            audioRecord = this.mMic;
            if (audioRecord == null) {
            }
            TXCLog.e(TAG, "audio record: initialize the mic failed.");
            uninit();
            onRecordError(-1, "microphone permission denied!");
        }
        audioRecord = this.mMic;
        if (audioRecord == null && audioRecord.getState() == 1) {
            int i7 = ((i3 * 1024) * i4) / 8;
            if (i7 > i) {
                this.mRecordBuffer = new byte[i];
            } else {
                this.mRecordBuffer = new byte[i7];
            }
            TXCLog.i(TAG, String.format("audio record: mic open rate=%dHZ, channels=%d, bits=%d, buffer=%d/%d, state=%d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i), Integer.valueOf(this.mRecordBuffer.length), Integer.valueOf(this.mMic.getState())));
            AudioRecord audioRecord2 = this.mMic;
            if (audioRecord2 != null) {
                try {
                    audioRecord2.startRecording();
                } catch (Exception e4) {
                    TXCLog.e(TAG, "mic startRecording failed.", e4);
                    onRecordError(-1, "start recording failed!");
                }
            }
        } else {
            TXCLog.e(TAG, "audio record: initialize the mic failed.");
            uninit();
            onRecordError(-1, "microphone permission denied!");
        }
    }

    private void uninit() {
        if (this.mMic != null) {
            TXCLog.i(TAG, "stop mic");
            try {
                this.mMic.setRecordPositionUpdateListener(null);
                this.mMic.stop();
                this.mMic.release();
            } catch (Exception e) {
                TXCLog.e(TAG, "stop AudioRecord failed.", e);
            }
        }
        this.mMic = null;
        this.mRecordBuffer = null;
        this.mIsCapFirstFrame = false;
    }

    private void onRecordPcmData(byte[] bArr, int i, long j) {
        WeakReference<c> weakReference = this.mWeakRefListener;
        c cVar = weakReference != null ? weakReference.get() : null;
        if (cVar != null) {
            cVar.onAudioRecordPCM(bArr, i, j);
        } else {
            TXCLog.e(TAG, "onRecordPcmData:no callback");
        }
    }

    private void onRecordError(int i, String str) {
        c cVar;
        synchronized (this) {
            cVar = this.mWeakRefListener != null ? this.mWeakRefListener.get() : null;
        }
        if (cVar != null) {
            cVar.onAudioRecordError(i, str);
        } else {
            TXCLog.e(TAG, "onRecordError:no callback");
        }
    }

    private void onRecordStart() {
        c cVar;
        synchronized (this) {
            cVar = this.mWeakRefListener != null ? this.mWeakRefListener.get() : null;
        }
        if (cVar != null) {
            cVar.onAudioRecordStart();
        } else {
            TXCLog.e(TAG, "onRecordStart:no callback");
        }
    }

    private void onRecordStop() {
        c cVar;
        synchronized (this) {
            cVar = this.mWeakRefListener != null ? this.mWeakRefListener.get() : null;
        }
        if (cVar != null) {
            cVar.onAudioRecordStop();
        } else {
            TXCLog.e(TAG, "onRecordStop:no callback");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        if (!this.mIsRunning) {
            TXCLog.w(TAG, "audio record: abandom start audio sys record thread!");
            return;
        }
        onRecordStart();
        TXCLog.i(TAG, "start capture audio data ...,mIsRunning:" + this.mIsRunning + " Thread.interrupted:" + Thread.interrupted() + " mMic:" + this.mMic);
        init();
        loop0: while (true) {
            i = 0;
            int i2 = 0;
            while (this.mIsRunning && !Thread.interrupted() && this.mMic != null && i <= 5) {
                System.currentTimeMillis();
                AudioRecord audioRecord = this.mMic;
                byte[] bArr = this.mRecordBuffer;
                int read = audioRecord.read(bArr, i2, bArr.length - i2);
                if (read == this.mRecordBuffer.length - i2) {
                    boolean z = true;
                    if (!this.mIsCapFirstFrame) {
                        onRecordError(-6, "First frame captured#");
                        this.mIsCapFirstFrame = true;
                    }
                    if (this.mSendMuteData) {
                        Arrays.fill(this.mRecordBuffer, (byte) 0);
                    }
                    if (this.mPause.get() && !this.mSendMuteData) {
                        z = false;
                    }
                    if (z) {
                        byte[] bArr2 = this.mRecordBuffer;
                        onRecordPcmData(bArr2, bArr2.length, TXCTimeUtil.getTimeTick());
                        byte[] bArr3 = this.mRecordBuffer;
                        nativeSendSysRecordAudioData(bArr3, bArr3.length, this.mSampleRate, this.mChannels, this.mBits);
                    }
                } else if (read <= 0) {
                    TXCLog.e(TAG, "read pcm error, len =" + read);
                    i++;
                } else {
                    i2 += read;
                }
            }
        }
        TXCLog.d(TAG, "stop capture audio data ...,mIsRunning:" + this.mIsRunning + " mMic:" + this.mMic + " nFailedCount:" + i);
        uninit();
        if (i > 5) {
            onRecordError(-1, "read data failed!");
        } else {
            onRecordStop();
        }
    }
}
