package com.tencent.thumbplayer.h.d;

import android.text.TextUtils;
import com.tencent.thumbplayer.h.b.e;
import com.tencent.thumbplayer.h.b.f;
import com.tencent.thumbplayer.h.f.a;
import com.tencent.thumbplayer.h.f.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public final class b {
    private c a;
    private final int b;
    private final String c;
    private final CopyOnWriteArraySet<f> d = new CopyOnWriteArraySet<>();

    public b(int i, String str) {
        this.b = i;
        this.c = str;
    }

    private f a(f fVar, Iterator it) {
        while (it.hasNext()) {
            f fVar2 = (f) it.next();
            if (TextUtils.equals(fVar.m(), fVar2.m())) {
                return fVar2;
            }
        }
        return null;
    }

    private f b() {
        Iterator<f> it = this.d.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private final f b(e eVar) {
        Iterator<f> it = this.d.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.b && next.a(eVar) != a.b.KEEP_CODEC_RESULT_NO) {
                return next;
            }
            next.k();
            if (next.l()) {
                b(next);
            }
        }
        return null;
    }

    private f c(f fVar) {
        f a;
        return (com.tencent.thumbplayer.h.a.a().c().d != b.a.SAME || (a = a(fVar, this.d.iterator())) == null) ? b() : a;
    }

    public f a(e eVar) {
        f b = b(eVar);
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("CodecWrapperPool", "obtain codecWrapper:" + b);
        }
        if (b == null) {
            return null;
        }
        this.d.remove(b);
        return b;
    }

    public void a(f fVar) {
        if (a()) {
            b(c(fVar));
        }
        this.d.add(fVar);
    }

    public final void a(c cVar) {
        this.a = cVar;
    }

    public boolean a() {
        return this.d.size() == this.b;
    }

    public void b(f fVar) {
        if (this.d.remove(fVar)) {
            c cVar = this.a;
            if (cVar != null) {
                cVar.a(fVar);
                return;
            }
            return;
        }
        com.tencent.thumbplayer.h.h.b.d("CodecWrapperPool", "pool:" + this.c + " remove " + fVar + " not found");
    }

    public String toString() {
        return "size:" + this.d.size() + " elements:" + this.d;
    }
}
