package com.tencent.thumbplayer.api;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPVideoFrameBuffer {
    public byte[][] data;
    public int dstHeight;
    public int dstWidth;
    public int flags;
    public int format;
    public int[] lineSize;
    public long ptsMs;
    public int rotation;
    public int srcHeight;
    public int srcWidth;
    public int trackID;

    public byte[][] getData() {
        return this.data;
    }

    public int getDstHeight() {
        return this.dstHeight;
    }

    public int getDstWidth() {
        return this.dstWidth;
    }

    public int getFlags() {
        return this.flags;
    }

    public int getFormat() {
        return this.format;
    }

    public int[] getLineSize() {
        return this.lineSize;
    }

    public long getPtsMs() {
        return this.ptsMs;
    }

    public int getRotation() {
        return this.rotation;
    }

    public int getSrcHeight() {
        return this.srcHeight;
    }

    public int getSrcWidth() {
        return this.srcWidth;
    }

    public int getTrackID() {
        return this.trackID;
    }
}
