package com.tencent.liteav.basic.d;

import com.tencent.liteav.basic.util.g;

/* compiled from: MediaCodecHelper.java */
/* loaded from: classes2.dex */
public class a {
    protected static volatile a a;
    private volatile boolean b = false;
    private volatile boolean c = false;

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    private a() {
        new Thread(new Runnable() { // from class: com.tencent.liteav.basic.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.c = b.a(1920, 1080, 20);
                a.this.b = c.a(1920, 1080, 20);
                g.a().a("cached_h265_decode_capability", a.this.c);
                g.a().a("cached_h265_encode_capability", a.this.b);
            }
        }, "MediaCodecHelper").start();
    }

    private boolean d() {
        return g.a().b("cached_h265_decode_capability", false);
    }

    public static boolean b() {
        if (com.tencent.liteav.basic.a.a()) {
            return true;
        }
        return c();
    }

    public static boolean c() {
        return a().d();
    }
}
