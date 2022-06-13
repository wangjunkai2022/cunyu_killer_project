package com.tencent.thumbplayer.h;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.tencent.thumbplayer.h.b.c;
import com.tencent.thumbplayer.h.h.d;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class b {
    public boolean a;
    public boolean b;
    private c c;
    private com.tencent.thumbplayer.h.a.a d;
    private boolean g;
    private final String h;
    private EnumC0045b i;
    private boolean f = true;
    private final com.tencent.thumbplayer.h.g.a e = new com.tencent.thumbplayer.h.g.a(b());

    /* loaded from: classes5.dex */
    public static abstract class a {
        public abstract void onError(b bVar, MediaCodec.CodecException codecException);

        public abstract void onInputBufferAvailable(b bVar, int i);

        public abstract void onOutputBufferAvailable(b bVar, int i, MediaCodec.BufferInfo bufferInfo);

        public abstract void onOutputFormatChanged(b bVar, MediaFormat mediaFormat);
    }

    /* renamed from: com.tencent.thumbplayer.h.b$b */
    /* loaded from: classes5.dex */
    public enum EnumC0045b {
        CreateByName,
        CreateByType
    }

    /* loaded from: classes5.dex */
    public static final class c extends MediaCodec.Callback {
        private final b a;
        private final a b;

        public c(b bVar, a aVar) {
            this.a = bVar;
            this.b = aVar;
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onError(this.a, codecException);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onInputBufferAvailable(this.a, i);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onOutputBufferAvailable(this.a, i, bufferInfo);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            a aVar = this.b;
            if (aVar != null) {
                aVar.onOutputFormatChanged(this.a, mediaFormat);
            }
        }
    }

    private b(String str, EnumC0045b bVar) {
        this.h = str;
        this.i = bVar;
    }

    public static b a(String str) {
        return new b(str, EnumC0045b.CreateByName);
    }

    private void b(Surface surface) {
        this.a = a.a().a(this, surface);
        this.e.a();
        this.e.b();
        this.e.a(this.a);
    }

    private void m() {
        this.e.b(this.b);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.h.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.c != null) {
                    b.this.c.a(b.this.d);
                }
                if (b.this.d != null) {
                    b.this.d.onCreate(Boolean.valueOf(b.this.b));
                }
            }
        });
    }

    private void n() {
        this.e.c();
    }

    private void o() {
        this.e.d();
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.h.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.d != null) {
                    b.this.d.onStarted(Boolean.valueOf(b.this.b), b.this.e.e());
                }
            }
        });
    }

    public final int a(long j) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a(j);
        }
        return -1000;
    }

    public final int a(MediaCodec.BufferInfo bufferInfo, long j) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a(bufferInfo, j);
        }
        return -1000;
    }

    public EnumC0045b a() {
        return this.i;
    }

    public final ByteBuffer a(int i) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return null;
        }
        return a2.getOutputBuffer(i);
    }

    public final void a(int i, int i2, int i3, long j, int i4) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(i, i2, i3, j, i4);
        }
    }

    public final void a(int i, int i2, MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            a2.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
        }
    }

    public void a(int i, boolean z) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(i, z);
        }
    }

    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        if (this.g) {
            com.tencent.thumbplayer.h.h.b.d("TMediaCodec", "configure ignored, mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i + " stack:" + Log.getStackTraceString(new Throwable()));
            return;
        }
        this.g = true;
        b(surface);
        try {
            this.c = a.a().a(mediaFormat, surface, mediaCrypto, i, this);
        } catch (IOException e) {
            com.tencent.thumbplayer.h.h.b.b("TMediaCodec", "createCodec mediaFormat:" + mediaFormat, e);
        }
        m();
    }

    public void a(Bundle bundle) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            a2.setParameters(bundle);
        }
    }

    public final void a(Surface surface) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(surface);
        }
    }

    public final void a(com.tencent.thumbplayer.h.a.a aVar) {
        this.d = aVar;
    }

    public final void a(a aVar, Handler handler) {
        MediaCodec a2;
        if (Build.VERSION.SDK_INT < 23) {
            com.tencent.thumbplayer.h.h.b.d("TMediaCodec", "ignore method setCallback for API lower than 23");
            return;
        }
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            a2.setCallback(new c(this, aVar), handler);
        }
    }

    public final void a(boolean z) {
        this.f = z;
    }

    public final Image b(int i) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a().getOutputImage(i);
        }
        return null;
    }

    public final boolean b() {
        return com.tencent.thumbplayer.h.h.c.a(this.h);
    }

    public final com.tencent.thumbplayer.h.a.a c() {
        return this.d;
    }

    public final ByteBuffer c(int i) {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.a().getInputBuffer(i);
        }
        return null;
    }

    public final void d(int i) {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar != null && (a2 = cVar.a()) != null) {
            a2.setVideoScalingMode(i);
        }
    }

    public final boolean d() {
        return this.f;
    }

    public void e() {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TMediaCodec", "start codecWrapper:" + this.c);
        }
        n();
        c cVar = this.c;
        if (cVar != null) {
            cVar.d();
        }
        o();
    }

    public void f() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.f();
        }
    }

    public void g() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.g();
        }
    }

    public final void h() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.e();
        }
    }

    public final MediaFormat i() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return null;
        }
        return a2.getOutputFormat();
    }

    public final ByteBuffer[] j() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return null;
        }
        return a2.getInputBuffers();
    }

    public final ByteBuffer[] k() {
        MediaCodec a2;
        c cVar = this.c;
        if (cVar == null || (a2 = cVar.a()) == null) {
            return null;
        }
        return a2.getOutputBuffers();
    }

    public final String l() {
        return this.h;
    }
}
