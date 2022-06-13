package com.tencent.thumbplayer.adapter;

import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.utils.TPLogUtil;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class e implements c.a, c.b, c.AbstractC0037c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p {
    private c.i a;
    private c.AbstractC0037c b;
    private c.h c;
    private c.f d;
    private c.j e;
    private c.p f;
    private c.l g;
    private c.n h;
    private c.a i;
    private c.m j;
    private c.o k;
    private c.b l;
    private c.k m;
    private c.e n;
    private c.g o;
    private c.d p;
    private String r = "TPPlayerListenerS";
    private a q = new a(this.r);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a implements c.a, c.b, c.AbstractC0037c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p {
        private String a;

        public a(String str) {
            this.a = str;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.a, " empty base listener , notify , onVideoProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i) {
            TPLogUtil.i(this.a, " empty base listener , notify , onSdpExchange");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            TPLogUtil.i(this.a, " empty base listener , notify , onPrepared");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i, int i2, long j, long j2) {
            TPLogUtil.i(this.a, " empty base listener , notify , onError");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            TPLogUtil.i(this.a, " empty base listener , notify , onInfo");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j, long j2) {
            TPLogUtil.i(this.a, " empty base listener , notify , onVideoSizeChanged");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            TPLogUtil.i(this.a, " empty base listener , notify , onAudioFrameOut");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            TPLogUtil.i(this.a, " empty base listener , notify , onEventRecord");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            TPLogUtil.i(this.a, " empty base listener , notify , onDetailInfo");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            TPLogUtil.i(this.a, " empty base listener , notify , onSubtitleData");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            TPLogUtil.i(this.a, " empty base listener , notify , TPSubtitleFrameBuffer");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            TPLogUtil.i(this.a, " empty base listener , notify , onVideoFrameOut");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.a, " empty base listener , notify , onAudioProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.AbstractC0037c
        public void b() {
            TPLogUtil.i(this.a, " empty base listener , notify , onCompletion");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.k
        public void b(int i, int i2) {
            TPLogUtil.i(this.a, " empty base listener , notify , onStateChange");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            TPLogUtil.i(this.a, " empty base listener , notify , onSeekComplete");
        }
    }

    public e(String str) {
        a(str);
        a aVar = this.q;
        this.a = aVar;
        this.b = aVar;
        this.c = aVar;
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        this.i = aVar;
        this.j = aVar;
        this.k = aVar;
        this.l = aVar;
        this.m = aVar;
        this.n = aVar;
        this.o = aVar;
        this.p = aVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.o
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.k.a(tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.d
    public TPRemoteSdpInfo a(String str, int i) {
        return this.p.a(str, i);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.i
    public void a() {
        this.a.a();
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.f
    public void a(@TPCommonEnum.TPErrorType int i, int i2, long j, long j2) {
        this.d.a(i, i2, j, j2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.h
    public void a(int i, long j, long j2, Object obj) {
        this.c.a(i, j, j2, obj);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.p
    public void a(long j, long j2) {
        this.f.a(j, j2);
    }

    public void a(c.a aVar) {
        if (aVar == null) {
            aVar = this.q;
        }
        this.i = aVar;
    }

    public void a(c.b bVar) {
        if (bVar == null) {
            bVar = this.q;
        }
        this.l = bVar;
    }

    public void a(c.AbstractC0037c cVar) {
        if (cVar == null) {
            cVar = this.q;
        }
        this.b = cVar;
    }

    public void a(c.d dVar) {
        if (dVar == null) {
            dVar = this.q;
        }
        this.p = dVar;
    }

    public void a(c.e eVar) {
        if (eVar == null) {
            eVar = this.q;
        }
        this.n = eVar;
    }

    public void a(c.f fVar) {
        if (fVar == null) {
            fVar = this.q;
        }
        this.d = fVar;
    }

    public void a(c.g gVar) {
        if (gVar == null) {
            gVar = this.q;
        }
        this.o = gVar;
    }

    public void a(c.h hVar) {
        if (hVar == null) {
            hVar = this.q;
        }
        this.c = hVar;
    }

    public void a(c.i iVar) {
        if (iVar == null) {
            iVar = this.q;
        }
        this.a = iVar;
    }

    public void a(c.j jVar) {
        if (jVar == null) {
            jVar = this.q;
        }
        this.e = jVar;
    }

    public void a(c.k kVar) {
        if (kVar == null) {
            kVar = this.q;
        }
        this.m = kVar;
    }

    public void a(c.l lVar) {
        if (lVar == null) {
            lVar = this.q;
        }
        this.g = lVar;
    }

    public void a(c.m mVar) {
        if (mVar == null) {
            mVar = this.q;
        }
        this.j = mVar;
    }

    public void a(c.n nVar) {
        if (nVar == null) {
            nVar = this.q;
        }
        this.h = nVar;
    }

    public void a(c.o oVar) {
        if (oVar == null) {
            oVar = this.q;
        }
        this.k = oVar;
    }

    public void a(c.p pVar) {
        if (pVar == null) {
            pVar = this.q;
        }
        this.f = pVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.a
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        this.i.a(tPAudioFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.g
    public void a(TPDrmInfo tPDrmInfo) {
        this.o.a(tPDrmInfo);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.e
    public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.n.a(tPPlayerDetailInfo);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.l
    public void a(TPSubtitleData tPSubtitleData) {
        this.g.a(tPSubtitleData);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.m
    public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        this.j.a(tPSubtitleFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.n
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        this.h.a(tPVideoFrameBuffer);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "TPPlayerListenerS";
        }
        this.r = str;
        a aVar = this.q;
        if (aVar != null) {
            aVar.a = this.r;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.b
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.l.b(tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.AbstractC0037c
    public void b() {
        this.b.b();
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.k
    public void b(int i, int i2) {
        this.m.b(i, i2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.j
    public void c() {
        this.e.c();
    }

    public void d() {
        a aVar = this.q;
        this.a = aVar;
        this.b = aVar;
        this.c = aVar;
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        this.i = aVar;
        this.j = aVar;
        this.m = aVar;
        this.k = aVar;
        this.l = aVar;
        this.n = aVar;
        this.o = aVar;
        this.p = aVar;
    }
}
