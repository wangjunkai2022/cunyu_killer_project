package com.tencent.thumbplayer.h.b;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.tencent.thumbplayer.h.a.a;
import com.tencent.thumbplayer.h.f.a;
import com.tencent.thumbplayer.h.h.b;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class d implements c {
    private final MediaCodec a;

    public d(MediaCodec mediaCodec) {
        this.a = mediaCodec;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public int a(long j) {
        return this.a.dequeueInputBuffer(j);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public int a(MediaCodec.BufferInfo bufferInfo, long j) {
        return this.a.dequeueOutputBuffer(bufferInfo, j);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public MediaCodec a() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(int i, int i2, int i3, long j, int i4) {
        this.a.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(int i, boolean z) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        this.a.configure(mediaFormat, surface, mediaCrypto, i);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void a(a aVar) {
        b.d("DirectCodecWrapper", "DirectCodecWrapper setCodecCallback ignore...");
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public a.b b(e eVar) {
        b.d("DirectCodecWrapper", "setCanReuseType setCodecCallback ignore...");
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void b() {
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void c() {
        b.d("DirectCodecWrapper", "DirectCodecWrapper prepareToReUse ignore...");
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void d() {
        this.a.start();
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void e() {
        this.a.flush();
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void f() {
        this.a.stop();
    }

    @Override // com.tencent.thumbplayer.h.b.c
    public void g() {
        this.a.release();
    }
}
