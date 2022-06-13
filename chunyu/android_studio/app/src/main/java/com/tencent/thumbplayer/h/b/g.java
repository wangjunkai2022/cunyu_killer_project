package com.tencent.thumbplayer.h.b;

import android.media.MediaCodec;
import com.tencent.thumbplayer.h.f.a;
import com.tencent.thumbplayer.h.h.c;

/* loaded from: classes2.dex */
public final class g extends f {
    public g(MediaCodec mediaCodec, e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.h.b.f
    public a.b a(e eVar) {
        return (!a.a(this, eVar) || eVar.b > this.g.a || eVar.c > this.g.b || c.a(this, eVar) > this.g.c) ? a.b.KEEP_CODEC_RESULT_NO : eVar.a(this.e) ? a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION : a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION;
    }

    @Override // com.tencent.thumbplayer.h.b.f
    public boolean j() {
        return super.j() && this.f != null && this.e.d == 0;
    }

    @Override // com.tencent.thumbplayer.h.b.f
    public String toString() {
        return "VideoCodecWrapper[" + hashCode() + ']';
    }
}
