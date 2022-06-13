package com.tencent.liteav.videodecoder;

import com.tencent.liteav.basic.structs.TXSVideoFrame;

/* compiled from: TXIVideoDecoderListener.java */
/* loaded from: classes2.dex */
public interface g {
    void onDecodeFailed(int i);

    void onDecodeFrame(TXSVideoFrame tXSVideoFrame, int i, int i2, long j, long j2, int i3);

    void onDecoderChange(String str, boolean z);

    void onVideoSizeChange(int i, int i2);
}
