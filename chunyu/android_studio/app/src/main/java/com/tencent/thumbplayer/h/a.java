package com.tencent.thumbplayer.h;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.tencent.thumbplayer.h.b;
import com.tencent.thumbplayer.h.b.c;
import com.tencent.thumbplayer.h.b.d;
import com.tencent.thumbplayer.h.b.e;
import com.tencent.thumbplayer.h.b.f;
import com.tencent.thumbplayer.h.b.g;
import com.tencent.thumbplayer.h.f.a;
import com.tencent.thumbplayer.h.f.b;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class a {
    private static final a a = new a();
    private static boolean e = false;
    private static boolean f = true;
    private boolean d;
    private b b = b.e;
    private boolean c = true;
    private final HashMap<b, c> g = new HashMap<>();
    private final com.tencent.thumbplayer.h.e.a h = new com.tencent.thumbplayer.h.e.a();
    private final com.tencent.thumbplayer.h.d.a i = new com.tencent.thumbplayer.h.d.a();
    private final com.tencent.thumbplayer.h.d.a j = new com.tencent.thumbplayer.h.d.a();
    private boolean k = true;

    public static a a() {
        return a;
    }

    private c a(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "createDirectCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        return bVar.a() == b.EnumC0045b.CreateByName ? new d(MediaCodec.createByCodecName(bVar.l())) : new d(MediaCodec.createDecoderByType(bVar.l()));
    }

    private c a(MediaFormat mediaFormat, b bVar, Surface surface) {
        boolean b = bVar.b();
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "getCodec isVideo:" + b + " codecFinalReuseEnable:" + bVar.a);
        }
        if (Build.VERSION.SDK_INT < 23 || !bVar.a) {
            bVar.b = false;
            if (com.tencent.thumbplayer.h.h.b.a()) {
                com.tencent.thumbplayer.h.h.b.b("TCodecManager", "getCodec return DirectCodecWrapper for mediaFormat:" + mediaFormat + " codecFinalReuseEnable:false surface:" + surface);
            }
            return a(mediaFormat, bVar);
        }
        e a2 = e.a(mediaFormat);
        c a3 = a(b, a2);
        e.a(a2.a);
        if (a3 != null) {
            a.b b2 = a3.b(a2);
            if (b2 == a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION || b2 == a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION) {
                if (com.tencent.thumbplayer.h.h.b.a()) {
                    com.tencent.thumbplayer.h.h.b.b("TCodecManager", "getCodec reuse, isVideo:" + b + " reuseType:" + b2);
                }
                a3.b();
                a3.c();
                bVar.b = true;
                return a3;
            } else if (b2 == a.b.KEEP_CODEC_RESULT_NO && com.tencent.thumbplayer.h.h.b.a()) {
                com.tencent.thumbplayer.h.h.b.d("TCodecManager", "getCodec not reuse, isVideo:" + b + " reuseType:" + b2);
            }
        }
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "getCodec not reuse, for can't find reUseAble CodecWrapper. isVideo:" + b);
        }
        bVar.b = false;
        c b3 = b(mediaFormat, bVar);
        b3.b();
        this.g.put(bVar, b3);
        return b3;
    }

    private c a(boolean z, e eVar) {
        return (z ? this.i : this.j).a(eVar);
    }

    private c b(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "createNewReuseCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        String string = mediaFormat.getString("mime");
        e a2 = e.a(mediaFormat);
        com.tencent.thumbplayer.h.f.a.a(a2, mediaFormat);
        return f.a(bVar.a() == b.EnumC0045b.CreateByName ? MediaCodec.createByCodecName(bVar.l()) : MediaCodec.createDecoderByType(string), string, a2);
    }

    public static boolean b() {
        return f;
    }

    private void c(c cVar) {
        com.tencent.thumbplayer.h.d.a aVar;
        if (d()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (cVar instanceof com.tencent.thumbplayer.h.b.a) {
                aVar = this.j;
            } else {
                return;
            }
            aVar.a((f) cVar);
        }
    }

    public final c a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, b bVar) {
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "configureStart videoPoolInfo:" + this.i.a() + ", audioPoolInfo:" + this.j.a());
        }
        this.d = true;
        this.k = true;
        c a2 = a(mediaFormat, bVar, surface);
        c(a2);
        a2.a(bVar.c());
        a2.a(mediaFormat, surface, mediaCrypto, i);
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "configureEnd   videoPoolInfo:" + this.i.a() + ", audioPoolInfo:" + this.j.a());
        }
        return a2;
    }

    public final void a(c cVar) {
        com.tencent.thumbplayer.h.d.a aVar;
        if (d()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (cVar instanceof com.tencent.thumbplayer.h.b.a) {
                aVar = this.j;
            } else {
                return;
            }
            aVar.b((f) cVar);
        }
    }

    public boolean a(b bVar, Surface surface) {
        boolean d = d();
        boolean d2 = bVar.d();
        boolean b = bVar.b();
        boolean z = d && d2;
        boolean z2 = Build.VERSION.SDK_INT >= 23 && !com.tencent.thumbplayer.h.h.c.a();
        if (com.tencent.thumbplayer.h.h.b.a()) {
            com.tencent.thumbplayer.h.h.b.b("TCodecManager", "reuseEnable getCodec isVideo:" + b + " reuseEnable:" + z + " globalReuseEnable:" + d + " mediaCodecReuseEnable:" + d2 + " canUseSetOutputSurfaceAPI:" + z2 + " ,surface:" + surface);
        }
        return z && b && z2 && surface != null;
    }

    public final void b(c cVar) {
        com.tencent.thumbplayer.h.d.a aVar;
        if (d()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (cVar instanceof com.tencent.thumbplayer.h.b.a) {
                aVar = this.j;
            } else {
                return;
            }
            aVar.c((f) cVar);
        }
    }

    public final com.tencent.thumbplayer.h.f.b c() {
        return this.b;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.k;
    }
}
