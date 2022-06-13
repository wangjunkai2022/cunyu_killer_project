package com.tencent.thumbplayer.h.b;

import android.media.MediaCodec;
import com.tencent.thumbplayer.h.f.a;

/* loaded from: classes2.dex */
public final class a extends f {
    public a(MediaCodec mediaCodec, e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.h.b.f
    public a.b a(e eVar) {
        return com.tencent.thumbplayer.h.f.a.a(this, eVar) ? a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION : a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.h.b.f
    public String toString() {
        return "AudioCodecWrapper[" + hashCode() + ']';
    }
}
