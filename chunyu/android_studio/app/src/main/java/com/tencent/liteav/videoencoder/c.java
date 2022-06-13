package com.tencent.liteav.videoencoder;

import android.media.MediaFormat;
import com.tencent.liteav.basic.e.f;
import com.tencent.liteav.basic.module.a;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import org.json.JSONArray;

/* compiled from: TXIVideoEncoder.java */
/* loaded from: classes2.dex */
public class c extends a {
    protected f mEncodeFilter;
    protected boolean mInit;
    protected f mInputFilter;
    protected d mListener = null;
    protected int mInputWidth = 0;
    protected int mInputHeight = 0;
    protected int mOutputWidth = 0;
    protected int mOutputHeight = 0;
    protected int mInputTextureID = -1;
    protected Object mGLContextExternal = null;
    private long mVideoGOPEncode = 0;
    private boolean mEncodeFirstGOP = false;
    protected int mStreamType = 2;
    protected int mRotation = 0;
    protected JSONArray mEncFmt = null;
    protected boolean mEnableXMirror = false;

    public void enableNearestRPS(int i) {
    }

    public int getEncodeCost() {
        return 0;
    }

    public long getRealBitrate() {
        return 0;
    }

    public double getRealFPS() {
        return 0.0d;
    }

    public boolean isH265Encoder() {
        return false;
    }

    public long pushVideoFrame(int i, int i2, int i3, long j) {
        return 10000002;
    }

    public long pushVideoFrameAsync(int i, int i2, int i3, long j) {
        return 10000002;
    }

    public long pushVideoFrameSync(int i, int i2, int i3, long j) {
        return 10000002;
    }

    public void restartIDR() {
    }

    public void setBitrate(int i) {
    }

    public void setBitrateFromQos(int i, int i2) {
    }

    public void setEncodeIdrFpsFromQos(int i) {
    }

    public void setFPS(int i) {
    }

    public void setGLFinishedTextureNeed(boolean z) {
    }

    public void setRPSRefBitmap(int i, int i2, long j) {
    }

    public void signalEOSAndFlush() {
    }

    public void stop() {
    }

    public int start(TXSVideoEncoderParam tXSVideoEncoderParam) {
        if (tXSVideoEncoderParam != null) {
            this.mOutputWidth = tXSVideoEncoderParam.width;
            this.mOutputHeight = tXSVideoEncoderParam.height;
            this.mInputWidth = tXSVideoEncoderParam.width;
            this.mInputHeight = tXSVideoEncoderParam.height;
            this.mGLContextExternal = tXSVideoEncoderParam.glContext;
            this.mStreamType = tXSVideoEncoderParam.streamType;
            this.mEncFmt = tXSVideoEncoderParam.encFmt;
        }
        this.mVideoGOPEncode = 0;
        this.mEncodeFirstGOP = false;
        return 10000002;
    }

    public void setListener(d dVar) {
        this.mListener = dVar;
    }

    public void setRotation(int i) {
        this.mRotation = i;
    }

    public int getVideoWidth() {
        return this.mOutputWidth;
    }

    public int getVideoHeight() {
        return this.mOutputHeight;
    }

    protected void callDelegate(int i) {
        callDelegate(new TXSNALPacket(), i);
    }

    protected void callDelegate(TXSNALPacket tXSNALPacket, int i) {
        d dVar = this.mListener;
        if (dVar != null) {
            tXSNALPacket.streamType = this.mStreamType;
            dVar.a(tXSNALPacket, i);
            if (tXSNALPacket.nalType == 0) {
                long j = this.mVideoGOPEncode;
                if (j != 0) {
                    this.mEncodeFirstGOP = true;
                    setStatusValue(4006, Long.valueOf(j));
                }
                this.mVideoGOPEncode = 1;
                return;
            }
            this.mVideoGOPEncode++;
            if (!this.mEncodeFirstGOP) {
                setStatusValue(4006, Long.valueOf(this.mVideoGOPEncode));
            }
        }
    }

    protected void callDelegate(MediaFormat mediaFormat) {
        d dVar = this.mListener;
        if (dVar != null) {
            dVar.a(mediaFormat);
        }
    }

    protected void onEncodeFinished(int i, long j, long j2) {
        d dVar = this.mListener;
        if (dVar != null) {
            dVar.a(i, j, j2);
        }
    }

    public void setXMirror(boolean z) {
        this.mEnableXMirror = z;
    }
}
