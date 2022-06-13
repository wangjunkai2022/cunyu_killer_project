package com.tencent.thumbplayer.h.b;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.tencent.thumbplayer.h.a.a;
import com.tencent.thumbplayer.h.f.a;

/* loaded from: classes2.dex */
public interface c {
    int a(long j);

    int a(MediaCodec.BufferInfo bufferInfo, long j);

    MediaCodec a();

    void a(int i, int i2, int i3, long j, int i4);

    void a(int i, boolean z);

    void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i);

    void a(Surface surface);

    void a(a aVar);

    a.b b(e eVar);

    void b();

    void c();

    void d();

    void e();

    void f();

    void g();
}
