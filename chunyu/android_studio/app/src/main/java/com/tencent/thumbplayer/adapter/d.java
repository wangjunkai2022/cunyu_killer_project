package com.tencent.thumbplayer.adapter;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.c;
import com.tencent.thumbplayer.adapter.strategy.e;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerState;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.f.b;
import com.tencent.thumbplayer.g.a;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class d implements a, c.k {
    private b a;
    private com.tencent.thumbplayer.f.a b;
    private Context c;
    private com.tencent.thumbplayer.adapter.a.b d;
    private boolean f;
    private e g;
    private com.tencent.thumbplayer.adapter.strategy.a k;
    private int m;
    private com.tencent.thumbplayer.g.a n;
    private TPPlayerState e = new TPPlayerState();
    private c i = new c();
    private a h = new a();
    private g j = new g(this.e);
    private b l = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements c.a, c.b, c.AbstractC0037c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.l, c.m, c.n, c.o, c.p {
        private a() {
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.a(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i) {
            return d.this.a(str, i);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            d.this.u();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i, int i2, long j, long j2) {
            d.this.a(i, i2, j, j2);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            d.this.a(i, j, j2, obj);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j, long j2) {
            d.this.a(j, j2);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            d.this.a(tPAudioFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            d.this.a(tPDrmInfo);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            d.this.a(tPPlayerDetailInfo);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            d.this.a(tPSubtitleFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            d.this.a(tPVideoFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.b(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.AbstractC0037c
        public void b() {
            d.this.w();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            d.this.x();
        }
    }

    public d(Context context, b bVar) {
        this.a = new b(bVar, "TPPlayerAdapter");
        this.b = new com.tencent.thumbplayer.f.a(this.a);
        this.c = context;
        this.e.setOnPlayerStateChangeListener(this);
        this.g = new e(this.a.a());
    }

    private com.tencent.thumbplayer.adapter.a.b a(int i, b bVar) {
        com.tencent.thumbplayer.adapter.a.b bVar2;
        Context context;
        try {
        } catch (Exception e) {
            this.b.c("to create Player," + e.toString());
        }
        if (i == 1) {
            this.b.c("to create androidPlayer");
            bVar2 = com.tencent.thumbplayer.adapter.a.d.a(this.c, this.i.p(), bVar);
        } else {
            if (i == 2) {
                this.b.c("to create thumbPlayer");
                context = this.c;
            } else if (i == 3) {
                this.b.c("to create thumbPlayer software dec");
                context = this.c;
            } else {
                this.b.c("to create no Player");
                bVar2 = null;
            }
            bVar2 = com.tencent.thumbplayer.adapter.a.d.a(context, bVar);
        }
        if (bVar2 == null) {
            this.b.c("play is null!");
            return null;
        }
        this.m = i;
        b(bVar2);
        return bVar2;
    }

    private com.tencent.thumbplayer.adapter.strategy.a a(c cVar) {
        com.tencent.thumbplayer.adapter.strategy.a.a aVar;
        try {
            aVar = new com.tencent.thumbplayer.adapter.strategy.a.a(cVar);
        } catch (IllegalArgumentException unused) {
            aVar = new com.tencent.thumbplayer.adapter.strategy.a.a(null);
        }
        return e.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (!this.j.b(7)) {
            return null;
        }
        return this.g.a(tPPostProcessFrameBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPRemoteSdpInfo a(String str, int i) {
        return this.g.a(str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, long j, long j2) {
        if (this.j.b(4)) {
            com.tencent.thumbplayer.adapter.strategy.a aVar = this.k;
            b bVar = this.l;
            int a2 = aVar.a(bVar, new com.tencent.thumbplayer.adapter.strategy.a.b(this.m, i, i2, bVar.d()));
            if (a2 != 0) {
                try {
                    e(a2);
                    return;
                } catch (IOException | IllegalStateException e) {
                    this.b.a(e);
                }
            }
            this.e.changeState(10);
            this.g.a(i, i2, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, Object obj) {
        b bVar;
        if (this.f) {
            this.b.c("handleOnInfo, mIsRetrying");
            return;
        }
        if (i == 152 && (bVar = this.l) != null) {
            bVar.f(((int) j) + 1);
        }
        this.g.a(i, j, j2, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        if (!this.j.b(6)) {
            this.b.c("handleOnVideoSizeChange, invalid state");
            return;
        }
        this.l.b(j2);
        this.l.a(j);
        this.g.a(j, j2);
    }

    private void a(com.tencent.thumbplayer.adapter.a.b bVar) {
        TPProgramInfo l;
        TPProgramInfo[] s = s();
        if (!(s == null || (l = this.i.l()) == null)) {
            for (int i = 0; i < s.length; i++) {
                if (!TextUtils.isEmpty(l.url) && s[i] != null && l.url.equals(s[i].url)) {
                    bVar.c(i, -1);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.j.b(7)) {
            this.g.a(tPAudioFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPDrmInfo tPDrmInfo) {
        this.g.a(tPDrmInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.g.a(tPPlayerDetailInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (!this.j.b(7)) {
            this.b.c("handleOnSubtitleData, invalid state");
        } else {
            this.g.a(tPSubtitleData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        if (!this.j.b(7)) {
            this.b.c("handleOnSubtitleFrameOut, invalid state");
        } else {
            this.g.a(tPSubtitleFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (!this.j.b(7)) {
            this.b.c("handleOnVideoFrameOut, invalid state");
        } else {
            this.g.a(tPVideoFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (!this.j.b(7)) {
            return null;
        }
        return this.g.b(tPPostProcessFrameBuffer);
    }

    private void b(com.tencent.thumbplayer.adapter.a.b bVar) {
        String a2;
        bVar.a((c.h) this.h);
        bVar.a((c.i) this.h);
        bVar.a((c.AbstractC0037c) this.h);
        bVar.a((c.f) this.h);
        bVar.a((c.j) this.h);
        bVar.a((c.p) this.h);
        bVar.a((c.l) this.h);
        bVar.a((c.m) this.h);
        bVar.a((c.e) this.h);
        bVar.a((c.g) this.h);
        bVar.a((c.d) this.h);
        if (z()) {
            bVar.a((c.n) this.h);
            bVar.a((c.a) this.h);
            bVar.a((c.o) this.h);
            bVar.a((c.b) this.h);
        }
        if (1 == this.i.e().g()) {
            bVar.a(this.i.e().c());
        } else if (4 == this.i.e().g()) {
            bVar.a(this.i.e().d());
        } else if (3 == this.i.e().g()) {
            int i = this.m;
            if (i == 2) {
                a2 = this.i.e().f().b();
            } else if (i == 1) {
                a2 = this.i.e().f().a();
            }
            bVar.a(a2, this.i.e().b());
        } else if (2 == this.i.e().g()) {
            bVar.a(this.i.e().e());
        }
        for (TPOptionalParam tPOptionalParam : this.i.o()) {
            bVar.a(tPOptionalParam);
        }
        for (int i2 = 0; i2 < this.i.b().size(); i2++) {
            TPTrackInfo tPTrackInfo = this.i.b().get(i2);
            if (tPTrackInfo.trackType == 3) {
                Iterator<c.d> it = this.i.m().iterator();
                while (true) {
                    if (it.hasNext()) {
                        c.d next = it.next();
                        if (!TextUtils.isEmpty(next.c) && next.c.equals(tPTrackInfo.name)) {
                            bVar.a(next.a, next.b, next.c);
                            break;
                        }
                    }
                }
            } else if (tPTrackInfo.trackType == 2) {
                Iterator<c.a> it2 = this.i.n().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        c.a next2 = it2.next();
                        if (!TextUtils.isEmpty(next2.b) && next2.b.equals(tPTrackInfo.name)) {
                            bVar.a(next2.a, next2.b, next2.c);
                            break;
                        }
                    }
                }
            }
        }
        Iterator<c.C0038c> it3 = this.i.c().iterator();
        while (it3.hasNext()) {
            c.C0038c next3 = it3.next();
            if (next3.c.isSelected) {
                TPTrackInfo[] r = bVar.r();
                if (r == null) {
                    this.b.e("playerTrackInfoList is null.");
                } else {
                    for (int i3 = 0; i3 < r.length; i3++) {
                        if (next3.c.name.equals(r[i3].name)) {
                            bVar.a(i3, next3.b);
                        }
                    }
                }
            }
        }
        if (this.i.k() != null) {
            bVar.a(this.i.k().a, this.i.k().b, this.i.k().c);
        }
        bVar.a(this.i.g());
        if (this.i.h() != 0.0f) {
            bVar.a(this.i.h());
        }
        if (this.i.j() != 0.0f) {
            bVar.b(this.i.j());
        }
        if (!"".equals(this.i.i())) {
            bVar.a(this.i.i());
        }
        if (this.i.d() instanceof SurfaceHolder) {
            bVar.a((SurfaceHolder) this.i.d());
        } else if (this.i.d() instanceof Surface) {
            bVar.a((Surface) this.i.d());
        }
        bVar.a(new TPOptionalParam().buildQueueInt(204, this.k.a()));
    }

    private void d(int i) {
        if (i != 4 && i == 5) {
            try {
                this.d.h();
                this.e.changeState(5);
            } catch (IllegalStateException e) {
                this.b.a(e);
            }
        }
    }

    private void e(int i) {
        this.g.a(1013, (long) i, 0, (Object) null);
        TPPlayerState tPPlayerState = this.e;
        tPPlayerState.setLastState(tPPlayerState.state());
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            long n = bVar.n();
            com.tencent.thumbplayer.f.a aVar = this.b;
            aVar.c("switchPlayer, current position:" + n);
            this.l.f(n);
            this.l.i(this.d.o());
            this.d.k();
            this.d.l();
        }
        this.d = a(i, this.a);
        if (this.d != null) {
            this.f = true;
            com.tencent.thumbplayer.f.a aVar2 = this.b;
            aVar2.c("switch player to type:" + this.m);
            if (this.l != null) {
                this.d.a(new TPOptionalParam().buildLong(100, this.l.h()));
            }
            this.e.setInnerPlayStateState(3);
            this.d.g();
            return;
        }
        throw new RuntimeException("error , create player failed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.g.a(1000, (long) this.m, 0, (Object) null);
        if (this.f) {
            if (this.e.innerPlayState() != 3) {
                this.b.d("handleOnPrepared, invalid state, mIsRetrying.");
                return;
            }
        } else if (!this.j.b(1)) {
            this.b.c("handleOnPrepared, invalid state");
            return;
        }
        v();
        a(this.d);
        if (this.f) {
            this.f = false;
            com.tencent.thumbplayer.f.a aVar = this.b;
            aVar.c("handleOnPrepared, mIsRetrying, recoverState, state:" + this.e.state());
            int state = this.e.state();
            this.e.changeState(4);
            if (this.e.lastState() == 3) {
                this.g.a();
            }
            this.g.a(1014, 0, 0, (Object) null);
            d(state);
            return;
        }
        this.e.setInnerPlayStateState(4);
        this.e.changeState(4);
        this.g.a();
    }

    private void v() {
        if (z()) {
            this.l = b.a(c(0));
            this.l.e((int) this.d.b(204));
            this.l.a((int) this.d.b(203));
            this.l.c((int) this.d.b(102));
            this.l.g((int) this.d.b(201));
            this.l.b((int) this.d.b(210));
        }
        if (this.l == null) {
            this.l = new b();
        }
        this.l.h(this.d.m());
        TPOptionalParam b = this.i.b(100);
        if (b != null) {
            this.l.f(b.getParamLong().value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (!this.j.b(2)) {
            this.b.c("handleOnComplete, invalid state");
            return;
        }
        this.e.changeState(7);
        this.g.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.j.b(5)) {
            this.g.c();
        }
    }

    private int y() {
        if (this.k == null) {
            this.k = a(this.i);
        }
        return this.k.a(this.l);
    }

    private boolean z() {
        int i = this.m;
        return i == 2 || i == 3;
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int a() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.l();
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(f);
            } else {
                this.b.c("setAudioGainRatio, mPlayerBase = null!");
            }
            this.i.a(f);
            return;
        }
        throw new IllegalStateException("error , setAudioGainRatio , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i) {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        if (this.j.a(9)) {
            if (this.d != null) {
                if (this.e.state() == 7) {
                    this.e.changeState(5);
                }
                this.d.a(i);
                com.tencent.thumbplayer.g.a aVar2 = this.n;
                if (aVar2 != null) {
                    try {
                        aVar2.a((long) i);
                        return;
                    } catch (Exception unused) {
                        aVar = this.b;
                        str = "seekTo, rich media processor seek err.";
                    }
                } else {
                    return;
                }
            } else {
                aVar = this.b;
                str = "seekTo, mPlayerBase = null!";
            }
            aVar.d(str);
            return;
        }
        throw new IllegalStateException("error , seek to , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        String str;
        com.tencent.thumbplayer.f.a aVar;
        if (this.j.a(9)) {
            if (this.d != null) {
                if (this.e.state() == 7) {
                    this.e.changeState(5);
                }
                this.d.a(i, i2);
                com.tencent.thumbplayer.g.a aVar2 = this.n;
                if (aVar2 != null) {
                    try {
                        aVar2.a((long) i);
                        return;
                    } catch (Exception unused) {
                        aVar = this.b;
                        str = "seekTo, rich media processor seek err.";
                    }
                } else {
                    return;
                }
            } else {
                aVar = this.b;
                str = "seekTo, mPlayerBase = null!";
            }
            aVar.d(str);
            return;
        }
        throw new IllegalStateException("error , seek to , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, long j) {
        if (this.j.a(3)) {
            TPTrackInfo[] r = r();
            if (r == null) {
                this.b.e("fatal err, tpTrackInfos is null");
            } else if (i < 0 || i > r.length - 1) {
                throw new IllegalArgumentException("error : track not found");
            } else {
                com.tencent.thumbplayer.adapter.a.b bVar = this.d;
                if (bVar != null) {
                    bVar.a(i, j);
                }
                this.i.a(i, j, r[i]);
            }
        } else {
            throw new IllegalStateException("error : selectTrack , state invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (!this.j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        } else if (assetFileDescriptor != null) {
            this.i.a(assetFileDescriptor);
            this.e.changeState(2);
        } else {
            throw new IllegalArgumentException("error : setDataSource , afd invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (!this.j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        } else if (parcelFileDescriptor != null) {
            this.i.a(parcelFileDescriptor);
            this.e.changeState(2);
        } else {
            throw new IllegalArgumentException("error : setDataSource , pfd invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surface);
        }
        this.i.a(surface);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(surfaceHolder);
        }
        this.i.a(surfaceHolder);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        this.g.a(aVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        this.g.a(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.AbstractC0037c cVar) {
        this.g.a(cVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
        this.g.a(dVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
        this.g.a(eVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.g.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
        this.g.a(gVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.g.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.g.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.g.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(c.k kVar) {
        this.g.a(kVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.g.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.g.a(mVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        this.g.a(nVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        this.g.a(oVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.g.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar) {
        a(eVar, (Map<String, String>) null);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar, int i, long j) {
        if (this.j.a(17)) {
            this.i.a(eVar, (Map<String, String>) null);
            if (this.d != null) {
                int i2 = this.m;
                this.d.a(i2 == 2 ? eVar.b() : i2 == 1 ? eVar.a() : "", i, j);
                return;
            }
            this.b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map) {
        if (this.j.a(2)) {
            this.i.a(eVar, map);
            this.e.changeState(2);
            return;
        }
        throw new IllegalStateException("error : setDataSource , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map, int i, long j) {
        if (this.j.a(17)) {
            this.i.a(eVar, map);
            if (this.d != null) {
                int i2 = this.m;
                this.d.a(i2 == 2 ? eVar.b() : i2 == 1 ? eVar.a() : "", map, i, j);
                return;
            }
            this.b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
            return;
        }
        throw new IllegalStateException("error , no player for capture :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(tPOptionalParam);
            }
            this.i.a(tPOptionalParam);
            return;
        }
        throw new IllegalStateException("setPlayerOptionalParam , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (!this.j.a(2)) {
            this.b.e("setVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.l.b(tPVideoInfo.getHeight());
            this.l.a(tPVideoInfo.getWidth());
            this.l.c(tPVideoInfo.getDefinition());
            this.l.g(tPVideoInfo.getVideoCodecId());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        if (!this.j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        } else if (iTPMediaAsset != null) {
            this.i.a(iTPMediaAsset);
            this.e.changeState(2);
        } else {
            throw new IllegalArgumentException("error : setDataSource , mediaAsset invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        if (this.j.a(17)) {
            this.i.a(iTPMediaAsset);
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(iTPMediaAsset, i, j);
            } else {
                this.b.d("switchDefinition, mPlayerBase = null!");
            }
        } else {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.e);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        if (iTPRichMediaSynchronizer == null) {
            com.tencent.thumbplayer.g.a aVar = this.n;
            if (aVar != null) {
                aVar.a((a.AbstractC0042a) null);
            }
            this.n = null;
        } else if (iTPRichMediaSynchronizer instanceof com.tencent.thumbplayer.g.a) {
            this.n = (com.tencent.thumbplayer.g.a) iTPRichMediaSynchronizer;
            this.n.a(new a.AbstractC0042a() { // from class: com.tencent.thumbplayer.adapter.d.1
                @Override // com.tencent.thumbplayer.g.a.AbstractC0042a
                public long a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer2) {
                    return d.this.n();
                }
            });
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(b bVar) {
        this.a.a(bVar, "TPPlayerAdapter");
        this.b.a(this.a);
        this.g.a(this.a.a());
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(this.a);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(str);
            } else {
                this.b.c("setAudioGainRatio, mPlayerBase = null!");
            }
            this.i.a(str);
            return;
        }
        throw new IllegalStateException("error , setAudioNormalizeVolumeParams , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, String str3) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(str, str2, str3);
            }
            this.i.a(str, str2, str3);
            return;
        }
        throw new IllegalStateException("error : addSubtitleSource , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, List<TPOptionalParam> list) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(str, str2, list);
            }
            this.i.a(str, str2, list);
            return;
        }
        throw new IllegalStateException("error : addAudioTrackSource , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, int i, long j) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(z);
            } else {
                this.b.c("setOutputMute, mPlayerBase = null!");
            }
            this.i.a(z);
            return;
        }
        throw new IllegalStateException("error , setOutputMute , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z, long j, long j2) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a(z, j, j2);
            } else {
                this.b.c("setLoopback, mPlayerBase = null!");
            }
            this.i.a(z, j, j2);
            return;
        }
        throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int b() {
        return this.e.state();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.b(i);
        }
        this.b.d("getPropertyLong, mPlayerBase = null, return !");
        return -1;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.b(f);
            } else {
                this.b.c("setPlaySpeedRatio, mPlayerBase = null!");
            }
            this.i.b(f);
            com.tencent.thumbplayer.g.a aVar = this.n;
            if (aVar != null) {
                try {
                    aVar.a(f);
                } catch (Exception unused) {
                    this.b.d("setPlaySpeedRatio, rich media processor setPlaySpeedRatio err.");
                }
            }
        } else {
            throw new IllegalStateException("error , setPlaySpeedRatio , state invalid , current state :" + this.e);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.k
    public void b(int i, int i2) {
        this.g.b(i, i2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i, long j) {
        if (this.j.a(3)) {
            TPTrackInfo[] r = r();
            if (r == null) {
                this.b.e("fatal err, tpTrackInfos is null");
            } else if (i < 0 || i > r.length - 1) {
                throw new IllegalArgumentException("error : track not found");
            } else {
                com.tencent.thumbplayer.adapter.a.b bVar = this.d;
                if (bVar != null) {
                    bVar.b(i, j);
                }
                this.i.b(i, j, r[i]);
            }
        } else {
            throw new IllegalStateException("error : deselectTrack , state invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void b(TPVideoInfo tPVideoInfo) {
        if (!this.j.a(3)) {
            this.b.e("updateVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.l.b(tPVideoInfo.getHeight());
            this.l.a(tPVideoInfo.getWidth());
            this.l.c(tPVideoInfo.getDefinition());
            this.l.g(tPVideoInfo.getVideoCodecId());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z) {
        if (this.j.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.b(z);
            } else {
                this.b.c("setLoopback, mPlayerBase = null!");
            }
            this.i.b(z);
            return;
        }
        throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            return bVar.c(i);
        }
        this.b.d("getPropertyString, mPlayerBase = null, return !");
        return "";
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i, long j) {
        if (this.j.a(18)) {
            TPProgramInfo[] s = s();
            if (s == null) {
                s = new TPProgramInfo[0];
            }
            if (i < 0 || i > s.length - 1) {
                throw new IllegalArgumentException("error : program index not found");
            }
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                bVar.c(i, j);
            }
            this.i.a(s[i]);
            return;
        }
        throw new IllegalStateException("error : selectProgram , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public boolean c() {
        TPPlayerState tPPlayerState = this.e;
        return tPPlayerState != null && tPPlayerState.state() == 5;
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int d() {
        return this.m;
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public b e() {
        return this.l;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (!this.j.a(1)) {
            throw new IllegalStateException("error , prepare , state invalid , current state :" + this.e);
        } else if (this.i.f()) {
            this.d = a(y(), this.a);
            if (this.d != null) {
                this.e.setInnerPlayStateState(3);
                this.e.changeState(3);
                this.d.f();
                return;
            }
            throw new RuntimeException("error , create player failed");
        } else {
            throw new IOException("error , prepare , data source invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        if (!this.j.a(1)) {
            throw new IllegalStateException("error , prepare , state invalid , current state :" + this.e);
        } else if (this.i.f()) {
            this.d = a(y(), this.a);
            if (this.d != null) {
                this.e.setInnerPlayStateState(3);
                this.e.changeState(3);
                this.d.g();
                return;
            }
            throw new RuntimeException("error , create player failed");
        } else {
            throw new IllegalStateException("error , prepare , state invalid , data source invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        if (this.j.a(5)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar != null) {
                try {
                    bVar.h();
                    this.e.changeState(5);
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , start ,state invalid");
                }
            } else {
                throw new IllegalStateException("error , start , player is null");
            }
        } else {
            throw new IllegalStateException("error , start , state invalid , current state :" + this.e);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        if (this.j.a(6)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.d;
            if (bVar == null) {
                throw new IllegalStateException("error , pause , player is null");
            } else if (this.f) {
                this.e.changeState(6);
            } else {
                try {
                    bVar.i();
                    this.e.changeState(6);
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , pause ,state invalid");
                }
            }
        } else {
            throw new IllegalStateException("error , pause , state invalid , current state :" + this.e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.tencent.thumbplayer.adapter.a.b] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.tencent.thumbplayer.adapter.a.b
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void j() {
        /*
            r3 = this;
            com.tencent.thumbplayer.adapter.g r0 = r3.j
            r1 = 7
            boolean r0 = r0.a(r1)
            if (r0 == 0) goto L_0x0039
            com.tencent.thumbplayer.adapter.a.b r0 = r3.d
            if (r0 == 0) goto L_0x0031
            r0 = 9
            com.tencent.thumbplayer.api.TPPlayerState r1 = r3.e     // Catch: IllegalStateException -> 0x0023, all -> 0x0021
            r2 = 8
            r1.changeState(r2)     // Catch: IllegalStateException -> 0x0023, all -> 0x0021
            com.tencent.thumbplayer.adapter.a.b r1 = r3.d     // Catch: IllegalStateException -> 0x0023, all -> 0x0021
            r1.j()     // Catch: IllegalStateException -> 0x0023, all -> 0x0021
            com.tencent.thumbplayer.api.TPPlayerState r1 = r3.e
            r1.changeState(r0)
            return
        L_0x0021:
            r1 = move-exception
            goto L_0x002b
        L_0x0023:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: all -> 0x0021
            java.lang.String r2 = "error , stop ,state invalid"
            r1.<init>(r2)     // Catch: all -> 0x0021
            throw r1     // Catch: all -> 0x0021
        L_0x002b:
            com.tencent.thumbplayer.api.TPPlayerState r2 = r3.e
            r2.changeState(r0)
            throw r1
        L_0x0031:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "error , stop , player is null"
            r0.<init>(r1)
            throw r0
        L_0x0039:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "error , stop , state invalid , current state :"
            r1.append(r2)
            com.tencent.thumbplayer.api.TPPlayerState r2 = r3.e
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.d.j():void");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        com.tencent.thumbplayer.f.a aVar = this.b;
        aVar.c("reset, current state :" + this.e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.k();
            this.d.l();
            this.d = null;
        }
        this.i.a();
        this.l.n();
        this.k = null;
        this.f = false;
        this.e.changeState(1);
        this.e.setLastState(1);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.f.a aVar = this.b;
        aVar.c("release, current state :" + this.e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar != null) {
            bVar.l();
            this.d = null;
        }
        this.i.a();
        this.g.d();
        this.k = null;
        this.f = false;
        this.e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        b bVar = this.l;
        if (bVar != null && bVar.j() > 0) {
            return this.l.j();
        }
        if (!this.j.a(11)) {
            return 0;
        }
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
        if (bVar2 == null) {
            this.b.d("getDurationMs, mPlayerBase = null, return 0!");
            return 0;
        }
        long m = bVar2.m();
        b bVar3 = this.l;
        if (bVar3 != null) {
            bVar3.h(m);
        }
        return m;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        if (!this.j.a(12)) {
            b bVar = this.l;
            if (bVar != null) {
                return bVar.h();
            }
            return 0;
        }
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
        if (bVar2 == null) {
            this.b.d("getCurrentPositionMs, mPlayerBase = null, return 0!");
            return 0;
        }
        long n = bVar2.n();
        b bVar3 = this.l;
        if (bVar3 != null) {
            bVar3.f(n);
        }
        return n;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        if (!this.j.a(12)) {
            return 0;
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        if (bVar == null) {
            this.b.d("getBufferedDurationMs, mPlayerBase = null, return 0!");
            return 0;
        }
        long o = bVar.o();
        b bVar2 = this.l;
        if (bVar2 != null) {
            bVar2.i(o);
        }
        return o;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        b bVar = this.l;
        if (bVar != null && bVar.a() > 0) {
            return (int) this.l.a();
        }
        if (!this.j.a(13)) {
            aVar = this.b;
            str = "getVideoWidth, state error!";
        } else {
            com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
            if (bVar2 == null) {
                aVar = this.b;
                str = "getVideoWidth, mPlayerBase = null, return 0!";
            } else {
                int p = bVar2.p();
                b bVar3 = this.l;
                if (bVar3 != null) {
                    bVar3.a((long) p);
                }
                return p;
            }
        }
        aVar.d(str);
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.f.a aVar;
        String str;
        b bVar = this.l;
        if (bVar != null && bVar.b() > 0) {
            return (int) this.l.b();
        }
        if (!this.j.a(13)) {
            aVar = this.b;
            str = "getVideoHeight, state error!";
        } else {
            com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
            if (bVar2 == null) {
                aVar = this.b;
                str = "getVideoHeight, mPlayerBase = null, return 0!";
            } else {
                int q = bVar2.q();
                b bVar3 = this.l;
                if (bVar3 != null) {
                    bVar3.b((long) q);
                }
                return q;
            }
        }
        aVar.d(str);
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        return bVar != null ? bVar.r() : (TPTrackInfo[]) this.i.b().toArray(new TPTrackInfo[0]);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        com.tencent.thumbplayer.adapter.a.b bVar = this.d;
        return (bVar == null || bVar.s() == null) ? new TPProgramInfo[0] : this.d.s();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        if (!this.j.a(19)) {
            b bVar = this.l;
            if (bVar != null) {
                return bVar.i();
            }
            return -1;
        }
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.d;
        if (bVar2 == null) {
            this.b.d("getDemuxerOffsetInFile, mPlayerBase = null, return 0!");
            return -1;
        }
        long t = bVar2.t();
        b bVar3 = this.l;
        if (bVar3 != null) {
            bVar3.g(t);
        }
        return t;
    }
}
