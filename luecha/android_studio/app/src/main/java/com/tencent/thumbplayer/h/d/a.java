package com.tencent.thumbplayer.h.d;

import com.tencent.thumbplayer.h.b.e;
import com.tencent.thumbplayer.h.b.f;
import com.tencent.thumbplayer.h.h.b;
import com.tencent.thumbplayer.h.h.d;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class a {
    private final b a = new b(2, "keep");
    private final b b = new b(Integer.MAX_VALUE, "running");

    public a() {
        this.a.a(new c() { // from class: com.tencent.thumbplayer.h.d.a.2
            @Override // com.tencent.thumbplayer.h.d.c
            public void a(f fVar) {
                if (b.a()) {
                    b.b("CodecWrapperManager", "onErase codecWrapper:" + fVar);
                }
                fVar.i();
            }
        });
    }

    public f a(e eVar) {
        f a = this.a.a(eVar);
        if (b.a()) {
            b.b("CodecWrapperManager", "obtainCodecWrapper codecWrapper:" + a);
        }
        return a;
    }

    public final String a() {
        return "runningPool:" + this.b + " keepPool:" + this.a;
    }

    public void a(final f fVar) {
        if (b.a()) {
            b.b("CodecWrapperManager", "transToRunning codecWrapper:" + fVar);
        }
        this.a.b(fVar);
        this.b.a(fVar);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.h.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                com.tencent.thumbplayer.h.a.a h = fVar.h();
                if (h != null) {
                    h.onTransToRunningPool();
                }
            }
        });
    }

    public void b(f fVar) {
        if (b.a()) {
            b.b("CodecWrapperManager", "removeFromRunning codecWrapper:" + fVar);
        }
        this.b.b(fVar);
    }

    public void c(f fVar) {
        if (b.a()) {
            b.b("CodecWrapperManager", "transTokeep codecWrapper:" + fVar);
        }
        this.b.b(fVar);
        this.a.a(fVar);
        com.tencent.thumbplayer.h.a.a h = fVar.h();
        if (h != null) {
            h.onTransToKeepPool();
        }
    }
}
