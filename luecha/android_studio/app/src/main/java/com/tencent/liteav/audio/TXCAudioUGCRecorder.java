package com.tencent.liteav.audio;

import android.content.Context;
import com.tencent.liteav.audio.impl.Record.TXCAudioSysRecord;
import com.tencent.liteav.audio.impl.Record.a;
import com.tencent.liteav.audio.impl.Record.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCAudioUGCRecorder implements c {
    private static final TXCAudioUGCRecorder INSTANCE = new TXCAudioUGCRecorder();
    private static final String TAG = "AudioCenter:TXCAudioUGCRecorder";
    protected Context mContext;
    private WeakReference<f> mWeakRecordListener;
    private final int AAC_SAMPLE_NUM = 1024;
    protected AtomicInteger mSampleRate = new AtomicInteger(48000);
    protected int mChannels = 1;
    protected int mBits = 16;
    protected int mAACFrameLength = ((this.mChannels * 1024) * this.mBits) / 8;
    protected int mReverbType = 0;
    protected int mVoiceChangerType = 0;
    protected int mAECType = 0;
    protected boolean mIsEarphoneOn = false;
    private long mLastPTS = 0;
    private float mVolume = 1.0f;
    private a mBGMRecorder = null;
    private boolean mEnableBGMRecord = false;
    private int mShouldClearAACDataCnt = 0;
    private boolean mCurBGMRecordFlag = false;
    private AtomicReference<Float> mSpeedRate = new AtomicReference<>(Float.valueOf(1.0f));
    private boolean mIsRunning = false;
    private boolean mIsPause = false;
    private boolean mIsMute = false;
    private final List<byte[]> mEncodedAudioList = new ArrayList();

    private native void nativeClassInit();

    private native void nativeEnableMixMode(boolean z);

    private native void nativeSetChangerType(int i);

    private native void nativeSetReverbType(int i);

    private native void nativeSetSpeedRate(float f);

    private native void nativeSetVolume(float f);

    private native void nativeStartAudioRecord(int i, int i2, int i3);

    private native void nativeStopAudioRecord();

    static {
        h.f();
    }

    public static TXCAudioUGCRecorder getInstance() {
        return INSTANCE;
    }

    private TXCAudioUGCRecorder() {
        TXCAudioSysRecord.getInstance();
        nativeClassInit();
    }

    public int startRecord(Context context) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "startRecord");
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        updateAudioEffector();
        TXCAudioSysRecord.getInstance().setAudioRecordListener(this);
        nativeStartAudioRecord(this.mSampleRate.get(), this.mChannels, this.mBits);
        this.mIsRunning = true;
        this.mLastPTS = 0;
        return 0;
    }

    public int stopRecord() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "stopRecord");
        TXCAudioSysRecord.getInstance().setAudioRecordListener(null);
        a aVar = this.mBGMRecorder;
        if (aVar != null) {
            aVar.a();
            this.mBGMRecorder = null;
        }
        nativeStopAudioRecord();
        nativeEnableMixMode(false);
        nativeSetVolume(1.0f);
        synchronized (this.mEncodedAudioList) {
            this.mEncodedAudioList.clear();
        }
        this.mIsRunning = false;
        this.mLastPTS = 0;
        this.mIsPause = false;
        this.mIsMute = false;
        this.mShouldClearAACDataCnt = 0;
        return 0;
    }

    public void pause() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "pause");
        TXCAudioEngine.getInstance().pauseLocalAudio();
        synchronized (this.mEncodedAudioList) {
            this.mIsPause = true;
        }
    }

    public void resume() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "resume");
        TXCAudioEngine.getInstance().resumeLocalAudio();
        synchronized (this.mEncodedAudioList) {
            this.mIsPause = false;
        }
        nativeEnableMixMode(this.mEnableBGMRecord);
        if (this.mIsMute || this.mEnableBGMRecord) {
            nativeSetVolume(0.0f);
        } else {
            nativeSetVolume(this.mVolume);
        }
    }

    public synchronized void setListener(f fVar) {
        if (fVar == null) {
            this.mWeakRecordListener = null;
        } else {
            this.mWeakRecordListener = new WeakReference<>(fVar);
        }
    }

    public f getListener() {
        WeakReference<f> weakReference = this.mWeakRecordListener;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setChannels(int i) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setChannels: " + i);
        this.mChannels = i;
    }

    public int getChannels() {
        return this.mChannels;
    }

    public void setSampleRate(int i) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setSampleRate: " + i);
        this.mSampleRate.set(i);
    }

    public int getSampleRate() {
        return this.mSampleRate.get();
    }

    public synchronized void setReverbType(int i) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setReverbType: " + i);
        this.mReverbType = i;
        nativeSetReverbType(i);
    }

    public void setAECType(int i, Context context) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setAECType: 0");
        this.mAECType = 0;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
    }

    public int getAECType() {
        return this.mAECType;
    }

    public void setMute(boolean z) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setMute: " + z);
        this.mIsMute = z;
        if (z) {
            nativeSetVolume(0.0f);
        } else {
            nativeSetVolume(this.mVolume);
        }
    }

    public void enableBGMRecord(boolean z) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "enableBGMRecord: " + z);
        if (this.mEnableBGMRecord != z && !z) {
            this.mShouldClearAACDataCnt = 2;
        }
        this.mEnableBGMRecord = z;
        updateAudioEffector();
    }

    public boolean isRecording() {
        return this.mIsRunning;
    }

    public boolean isPaused() {
        return this.mIsPause;
    }

    public void onEncodedData(byte[] bArr) {
        synchronized (this.mEncodedAudioList) {
            this.mEncodedAudioList.add(bArr);
        }
    }

    public synchronized void setVolume(float f) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setVolume: " + f);
        this.mVolume = f;
        if (this.mIsMute) {
            nativeSetVolume(0.0f);
        } else {
            nativeSetVolume(f);
        }
    }

    public synchronized boolean getIsMute() {
        return this.mIsMute;
    }

    public synchronized void setSpeedRate(float f) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setSpeedRate: " + f);
        this.mSpeedRate.set(Float.valueOf(f));
        nativeSetSpeedRate(this.mSpeedRate.get().floatValue());
    }

    public synchronized void clearCache() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "clearCache");
        synchronized (this.mEncodedAudioList) {
            this.mEncodedAudioList.clear();
        }
    }

    @Override // com.tencent.liteav.audio.impl.Record.c
    public void onAudioRecordStart() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "sys audio record start");
    }

    @Override // com.tencent.liteav.audio.impl.Record.c
    public void onAudioRecordStop() {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "sys audio record stop");
    }

    @Override // com.tencent.liteav.audio.impl.Record.c
    public void onAudioRecordError(int i, String str) {
        TXCLog.e("AudioCenter:TXCAudioUGCRecorder", "sys audio record error: " + i + ", " + str);
        f listener = getListener();
        if (listener != null) {
            listener.a(i, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034 A[Catch: all -> 0x0072, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x0015, B:11:0x0019, B:13:0x002b, B:16:0x0034, B:18:0x003c, B:19:0x004c, B:20:0x0053, B:22:0x005b, B:23:0x006e), top: B:29:0x000c }] */
    @Override // com.tencent.liteav.audio.impl.Record.c
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void onAudioRecordPCM(byte[] r8, int r9, long r10) {
        /*
            r7 = this;
            long r8 = r7.mLastPTS
            int r0 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r0 < 0) goto L_0x0009
            r10 = 2
            long r10 = r10 + r8
        L_0x0009:
            java.util.List<byte[]> r8 = r7.mEncodedAudioList
            monitor-enter(r8)
            java.util.List<byte[]> r9 = r7.mEncodedAudioList     // Catch: all -> 0x0072
            boolean r9 = r9.isEmpty()     // Catch: all -> 0x0072
            r0 = 0
            if (r9 != 0) goto L_0x0031
            boolean r9 = r7.mIsPause     // Catch: all -> 0x0072
            if (r9 != 0) goto L_0x0031
            java.util.List<byte[]> r9 = r7.mEncodedAudioList     // Catch: all -> 0x0072
            r1 = 0
            java.lang.Object r9 = r9.get(r1)     // Catch: all -> 0x0072
            byte[] r9 = (byte[]) r9     // Catch: all -> 0x0072
            java.util.List<byte[]> r2 = r7.mEncodedAudioList     // Catch: all -> 0x0072
            r2.remove(r1)     // Catch: all -> 0x0072
            int r1 = r7.mShouldClearAACDataCnt     // Catch: all -> 0x0072
            if (r1 <= 0) goto L_0x0032
            int r9 = r7.mShouldClearAACDataCnt     // Catch: all -> 0x0072
            int r9 = r9 + -1
            r7.mShouldClearAACDataCnt = r9     // Catch: all -> 0x0072
        L_0x0031:
            r9 = r0
        L_0x0032:
            if (r9 == 0) goto L_0x006e
            r7.mLastPTS = r10     // Catch: all -> 0x0072
            com.tencent.liteav.audio.f r0 = r7.getListener()     // Catch: all -> 0x0072
            if (r0 == 0) goto L_0x004c
            java.util.concurrent.atomic.AtomicInteger r1 = r7.mSampleRate     // Catch: all -> 0x0072
            int r4 = r1.get()     // Catch: all -> 0x0072
            int r5 = r7.mChannels     // Catch: all -> 0x0072
            int r6 = r7.mBits     // Catch: all -> 0x0072
            r1 = r9
            r2 = r10
            r0.b(r1, r2, r4, r5, r6)     // Catch: all -> 0x0072
            goto L_0x0053
        L_0x004c:
            java.lang.String r0 = "AudioCenter:TXCAudioUGCRecorder"
            java.lang.String r1 = "onAudioRecordPCM listener is null"
            com.tencent.liteav.basic.log.TXCLog.e(r0, r1)     // Catch: all -> 0x0072
        L_0x0053:
            java.util.concurrent.atomic.AtomicInteger r0 = r7.mSampleRate     // Catch: all -> 0x0072
            int r0 = r0.get()     // Catch: all -> 0x0072
            if (r0 <= 0) goto L_0x006e
            r1 = 1232732160(0x497a0000, float:1024000.0)
            java.util.concurrent.atomic.AtomicReference<java.lang.Float> r2 = r7.mSpeedRate     // Catch: all -> 0x0072
            java.lang.Object r2 = r2.get()     // Catch: all -> 0x0072
            java.lang.Float r2 = (java.lang.Float) r2     // Catch: all -> 0x0072
            float r2 = r2.floatValue()     // Catch: all -> 0x0072
            float r2 = r2 * r1
            float r0 = (float) r0     // Catch: all -> 0x0072
            float r2 = r2 / r0
            long r0 = (long) r2     // Catch: all -> 0x0072
            long r10 = r10 + r0
        L_0x006e:
            monitor-exit(r8)     // Catch: all -> 0x0072
            if (r9 != 0) goto L_0x0009
            return
        L_0x0072:
            r9 = move-exception
            monitor-exit(r8)     // Catch: all -> 0x0072
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.TXCAudioUGCRecorder.onAudioRecordPCM(byte[], int, long):void");
    }

    private synchronized void updateAudioEffector() {
        boolean z = false;
        if (this.mEnableBGMRecord || this.mAECType == 1) {
            z = true;
        }
        if (!z) {
            nativeSetReverbType(this.mReverbType);
            nativeSetChangerType(this.mVoiceChangerType);
            if (this.mIsMute) {
                nativeSetVolume(0.0f);
            } else {
                nativeSetVolume(this.mVolume);
            }
        }
        if (z) {
            nativeSetVolume(0.0f);
        }
        nativeEnableMixMode(z);
        nativeSetSpeedRate(this.mSpeedRate.get().floatValue());
    }

    public synchronized void setChangerType(int i) {
        TXCLog.i("AudioCenter:TXCAudioUGCRecorder", "setChangerType: " + i);
        this.mVoiceChangerType = i;
        nativeSetChangerType(i);
    }
}
