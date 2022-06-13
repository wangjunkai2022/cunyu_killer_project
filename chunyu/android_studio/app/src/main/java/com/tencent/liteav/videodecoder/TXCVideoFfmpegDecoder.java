package com.tencent.liteav.videodecoder;

import android.view.Surface;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class TXCVideoFfmpegDecoder implements b {
    private boolean mFirstDec;
    private g mListener;
    private long mNativeDecoder;
    private long mNativeNotify;
    private ByteBuffer mPps;
    private byte[] mRawData;
    private ByteBuffer mSps;
    private int mVideoHeight;
    private int mVideoWidth;

    private static native void nativeClassInit();

    private native boolean nativeDecode(byte[] bArr, long j, long j2, long j3);

    private native void nativeInit(WeakReference<TXCVideoFfmpegDecoder> weakReference, boolean z);

    private native void nativeLoadRawData(byte[] bArr, long j, int i);

    private native void nativeRelease();

    private static void postEventFromNative(WeakReference<TXCVideoFfmpegDecoder> weakReference, long j, int i, int i2, long j2, long j3, int i3) {
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int GetDecodeCost() {
        return 0;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int config(Surface surface) {
        return 0;
    }

    public void config(JSONArray jSONArray) {
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void enableLimitDecCache(boolean z) {
    }

    public boolean isH265() {
        return false;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void setNotifyListener(WeakReference<b> weakReference) {
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void setListener(g gVar) {
        this.mListener = gVar;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void decode(TXSNALPacket tXSNALPacket) {
        g gVar;
        g gVar2;
        if (this.mFirstDec) {
            ByteBuffer byteBuffer = this.mSps;
            if (!(byteBuffer == null || this.mPps == null)) {
                byte[] array = byteBuffer.array();
                byte[] array2 = this.mPps.array();
                byte[] bArr = new byte[array.length + array2.length];
                System.arraycopy(array, 0, bArr, 0, array.length);
                System.arraycopy(array2, 0, bArr, array.length, array2.length);
                if (!nativeDecode(bArr, tXSNALPacket.pts - 1, tXSNALPacket.dts - 1, (long) tXSNALPacket.rotation) && (gVar2 = this.mListener) != null) {
                    gVar2.onDecodeFailed(-2);
                }
            }
            this.mFirstDec = false;
        }
        if (!nativeDecode(tXSNALPacket.nalData, tXSNALPacket.pts, tXSNALPacket.dts, (long) tXSNALPacket.rotation) && (gVar = this.mListener) != null) {
            gVar.onDecodeFailed(-2);
        }
    }

    @Override // com.tencent.liteav.videodecoder.b
    public int start(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, boolean z, boolean z2) {
        this.mSps = byteBuffer;
        this.mPps = byteBuffer2;
        this.mFirstDec = true;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        nativeInit(new WeakReference<>(this), z);
        return 0;
    }

    @Override // com.tencent.liteav.videodecoder.b
    public void stop() {
        nativeRelease();
    }

    public void loadNativeData(byte[] bArr, long j, int i) {
        nativeLoadRawData(bArr, j, i);
    }

    static {
        h.f();
        nativeClassInit();
    }
}
