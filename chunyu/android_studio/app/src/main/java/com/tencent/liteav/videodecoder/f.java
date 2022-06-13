package com.tencent.liteav.videodecoder;

import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import org.json.JSONArray;

/* compiled from: TXCVideoMediaCodecDecoderWrapper.java */
/* loaded from: classes2.dex */
public class f extends e {
    private Handler a;
    private g b;
    private WeakReference<b> c;
    private Surface d;
    private JSONArray e;
    private boolean f;
    private int g;
    private int h;
    private boolean i;

    public f(Looper looper) {
        this.a = new Handler(looper);
    }

    private void a(Runnable runnable) {
        this.a.post(runnable);
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public void setListener(final g gVar) {
        this.b = gVar;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.1
            @Override // java.lang.Runnable
            public void run() {
                f.super.setListener(gVar);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public void setNotifyListener(final WeakReference<b> weakReference) {
        this.c = weakReference;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.2
            @Override // java.lang.Runnable
            public void run() {
                f.super.setNotifyListener(weakReference);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public int config(final Surface surface) {
        this.d = surface;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.3
            @Override // java.lang.Runnable
            public void run() {
                f.super.config(surface);
            }
        });
        return 0;
    }

    @Override // com.tencent.liteav.videodecoder.e
    public void a(final JSONArray jSONArray) {
        this.e = jSONArray;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.4
            @Override // java.lang.Runnable
            public void run() {
                f.super.a(jSONArray);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public void enableLimitDecCache(final boolean z) {
        this.f = z;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.5
            @Override // java.lang.Runnable
            public void run() {
                f.super.enableLimitDecCache(z);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e
    public void a(final int i, final int i2) {
        this.g = i;
        this.h = i2;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.6
            @Override // java.lang.Runnable
            public void run() {
                f.super.a(i, i2);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public int start(final ByteBuffer byteBuffer, final ByteBuffer byteBuffer2, final boolean z, final boolean z2) {
        this.i = z2;
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.7
            @Override // java.lang.Runnable
            public void run() {
                f.this.a("start decoder.");
                f fVar = f.this;
                f.super.setListener(fVar.b);
                f fVar2 = f.this;
                f.super.setNotifyListener(fVar2.c);
                f fVar3 = f.this;
                f.super.config(fVar3.d);
                f fVar4 = f.this;
                f.super.a(fVar4.e);
                f fVar5 = f.this;
                f.super.enableLimitDecCache(fVar5.f);
                f fVar6 = f.this;
                f.super.a(fVar6.g, f.this.h);
                f.super.start(byteBuffer, byteBuffer2, z, z2);
                f.this.a("start decoder finish.");
            }
        });
        return 0;
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public void stop() {
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.8
            @Override // java.lang.Runnable
            public void run() {
                f.this.a("stop decoder.");
                f.super.stop();
                f.this.a("stop decoder finish.");
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public void decode(final TXSNALPacket tXSNALPacket) {
        this.i = a(tXSNALPacket);
        a(new Runnable() { // from class: com.tencent.liteav.videodecoder.f.9
            @Override // java.lang.Runnable
            public void run() {
                f.super.decode(tXSNALPacket);
            }
        });
    }

    @Override // com.tencent.liteav.videodecoder.e, com.tencent.liteav.videodecoder.b
    public int GetDecodeCost() {
        return super.GetDecodeCost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        TXCLog.i("TXCVideoMediaCodecWrapper", "decoder(" + hashCode() + ") " + str);
    }
}
