package com.tencent.liteav.muxer;

import android.content.Context;
import android.media.MediaFormat;
import com.tencent.liteav.basic.log.TXCLog;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCMP4Muxer.java */
/* loaded from: classes5.dex */
public class c implements a {
    private int a;
    private a b;

    public c(Context context, int i) {
        this.a = 0;
        if (i == 0) {
            this.a = 0;
            this.b = new d();
            TXCLog.i("TXCMP4Muxer", "TXCMP4Muxer: use sw model ");
        } else if (i != 1) {
            boolean a = a(context);
            TXCLog.i("TXCMP4Muxer", getClass().getName() + "  useSW:" + a);
            if (a) {
                this.a = 0;
                this.b = new d();
                TXCLog.i("TXCMP4Muxer", "TXCMP4Muxer: use sw model ");
                return;
            }
            this.a = 1;
            this.b = new b();
            TXCLog.i("TXCMP4Muxer", "TXCMP4Muxer: use hw model ");
        } else {
            this.a = 1;
            this.b = new b();
            TXCLog.i("TXCMP4Muxer", "TXCMP4Muxer: use hw model ");
        }
    }

    public static boolean a(Context context) {
        com.tencent.liteav.basic.f.c.a().a(context);
        return com.tencent.liteav.basic.f.c.a().d() == 1;
    }

    @Override // com.tencent.liteav.muxer.a
    public void a(MediaFormat mediaFormat) {
        this.b.a(mediaFormat);
    }

    @Override // com.tencent.liteav.muxer.a
    public void b(MediaFormat mediaFormat) {
        this.b.b(mediaFormat);
    }

    @Override // com.tencent.liteav.muxer.a
    public void a(String str) {
        TXCLog.i("TXCMP4Muxer", "TXCMP4Muxer : setTargetPath ():" + str);
        this.b.a(str);
    }

    @Override // com.tencent.liteav.muxer.a
    public void a(byte[] bArr, int i, int i2, long j, int i3) {
        this.b.a(bArr, i, i2, j, i3);
    }

    @Override // com.tencent.liteav.muxer.a
    public void b(byte[] bArr, int i, int i2, long j, int i3) {
        this.b.b(bArr, i, i2, j, i3);
    }

    @Override // com.tencent.liteav.muxer.a
    public int a() {
        return this.b.a();
    }

    @Override // com.tencent.liteav.muxer.a
    public int b() {
        return this.b.b();
    }

    @Override // com.tencent.liteav.muxer.a
    public boolean c() {
        return this.b.c();
    }
}
