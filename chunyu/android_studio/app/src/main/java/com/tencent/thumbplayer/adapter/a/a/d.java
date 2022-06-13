package com.tencent.thumbplayer.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.b;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.c;
import com.tencent.thumbplayer.adapter.e;
import com.tencent.thumbplayer.adapter.g;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerState;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.c.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class d implements b {
    private com.tencent.thumbplayer.f.a a;
    private com.tencent.thumbplayer.f.b b;
    private Context c;
    private b d;
    private e f;
    private com.tencent.thumbplayer.adapter.b j;
    private boolean m;
    private boolean n;
    private LinkedList<Long> o;
    private int l = 0;
    private TPPlayerState e = new TPPlayerState();
    private c h = new c();
    private a g = new a();
    private g i = new g(this.e);
    private List<ITPMediaTrackClip> k = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements c.a, c.b, c.AbstractC0037c, c.f, c.h, c.i, c.j, c.l, c.n, c.o, c.p {
        private a() {
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.a(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            d.this.a();
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

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
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
            d.this.b();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            d.this.d();
        }
    }

    public d(Context context, com.tencent.thumbplayer.f.b bVar) {
        this.b = new com.tencent.thumbplayer.f.b(bVar, "TPSystemClipPlayer");
        this.a = new com.tencent.thumbplayer.f.a(this.b);
        this.c = context;
        this.f = new e(this.a.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (!this.i.b(7)) {
            return null;
        }
        return this.f.a(tPPostProcessFrameBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        e eVar = this.f;
        if (eVar != null) {
            eVar.a(152, (long) this.l, 0, (Object) null);
        }
        if (this.m) {
            h();
            if (this.n && this.f != null && !com.tencent.thumbplayer.utils.b.a(this.o)) {
                Long poll = this.o.poll();
                if (poll != null) {
                    this.f.a(3, poll.longValue(), 0, (Object) null);
                }
                this.n = false;
            }
        } else if (this.i.b(1)) {
            this.e.changeState(4);
            e eVar2 = this.f;
            if (eVar2 != null) {
                eVar2.a();
            }
            b(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, long j, long j2) {
        if (this.i.b(4)) {
            this.f.a(i, i2, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2, Object obj) {
        if (this.i.b(3)) {
            this.f.a(i, j, j2, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        if (this.i.b(6)) {
            this.j.b(j2);
            this.j.a(j);
            this.f.a(j, j2);
        }
    }

    private void a(b bVar) {
        if (1 == this.h.e().g()) {
            bVar.a(this.h.e().c());
        } else if (4 == this.h.e().g()) {
            bVar.a(this.h.e().d());
        }
        if (this.h.e().g() == 0) {
            bVar.a(this.h.e().a(), this.h.e().b());
        }
        for (TPOptionalParam tPOptionalParam : this.h.o()) {
            bVar.a(tPOptionalParam);
        }
        for (c.d dVar : this.h.m()) {
            bVar.a(dVar.a, dVar.b, dVar.c);
        }
        for (c.a aVar : this.h.n()) {
            bVar.a(aVar.a, aVar.b, aVar.c);
        }
        if (this.h.k() != null) {
            bVar.a(this.h.k().a, this.h.k().b, this.h.k().c);
        }
        bVar.a(this.h.g());
        if (this.h.h() != 0.0f) {
            bVar.a(this.h.h());
        }
        if (this.h.j() != 0.0f) {
            bVar.b(this.h.j());
        }
        if (this.h.d() instanceof SurfaceHolder) {
            bVar.a((SurfaceHolder) this.h.d());
        } else if (this.h.d() instanceof Surface) {
            bVar.a((Surface) this.h.d());
        }
        bVar.a((c.h) this.g);
        bVar.a((c.i) this.g);
        bVar.a((c.AbstractC0037c) this.g);
        bVar.a((c.f) this.g);
        bVar.a((c.j) this.g);
        bVar.a((c.p) this.g);
        bVar.a((c.l) this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.i.b(7)) {
            this.f.a(tPAudioFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (this.i.b(7)) {
            this.f.a(tPSubtitleData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (this.i.b(7)) {
            this.f.a(tPVideoFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (!this.i.b(7)) {
            return null;
        }
        return this.f.b(tPPostProcessFrameBuffer);
    }

    private List<ITPMediaTrackClip> b(ITPMediaAsset iTPMediaAsset) {
        boolean z = iTPMediaAsset instanceof com.tencent.thumbplayer.c.e;
        if (z || (iTPMediaAsset instanceof com.tencent.thumbplayer.c.g) || (iTPMediaAsset instanceof h)) {
            List<ITPMediaTrackClip> arrayList = new ArrayList<>();
            if (z) {
                List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.c.e) iTPMediaAsset).getAllAVTracks();
                if (com.tencent.thumbplayer.utils.b.a(allAVTracks) || allAVTracks.get(0) == null) {
                    throw new IllegalStateException("empty av tracks when set data source!");
                }
                arrayList = allAVTracks.get(0).getAllTrackClips();
            } else if (iTPMediaAsset instanceof com.tencent.thumbplayer.c.g) {
                arrayList = ((com.tencent.thumbplayer.c.g) iTPMediaAsset).getAllTrackClips();
            } else {
                arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            }
            long j = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).setStartPositionMs(j);
                j += arrayList.get(i).getOriginalDurationMs();
            }
            return arrayList;
        }
        throw new IllegalStateException("system mediaPlayer : media asset is illegal source!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i.b(2)) {
            if (this.l >= this.k.size() - 1) {
                this.e.changeState(7);
                this.f.b();
                return;
            }
            try {
                d(this.l + 1, 0);
            } catch (IOException e) {
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.c("handleOnComplete:" + e.toString());
            }
        }
    }

    private void b(b bVar) {
        TPTrackInfo[] r = r();
        if (r != null) {
            for (int i = 0; i < r.length; i++) {
                if (r[i].equals(this.h.a(r[i].getTrackType()))) {
                    bVar.a(i, -1L);
                }
            }
        }
    }

    private ITPMediaTrackClip c() {
        return this.k.get(this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.i.b(5)) {
            if (this.e.is(7)) {
                h();
            }
            this.f.c();
        }
    }

    private void d(int i) {
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            long j = (long) i;
            if (this.k.get(i2).getStartPositionMs() <= j && j <= this.k.get(i2).getStartPositionMs() + this.k.get(i2).getOriginalDurationMs()) {
                try {
                    d(i2, j - this.k.get(i2).getStartPositionMs());
                } catch (IOException e) {
                    com.tencent.thumbplayer.f.a aVar = this.a;
                    aVar.c("selectClipPlayer:" + e.toString());
                }
            }
        }
    }

    private void d(int i, long j) {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.b("switchPlayer: clipNo:" + i + "   startPostion:" + j);
        b bVar = this.d;
        if (bVar != null) {
            bVar.l();
        }
        this.m = true;
        this.l = i;
        this.h.b(this.k.get(this.l).getFilePath());
        this.d = e();
        if (this.d != null) {
            this.d.a(new TPOptionalParam().buildLong(100, j));
            this.d.f();
            return;
        }
        throw new RuntimeException("error , create player failed");
    }

    private b e() {
        e eVar = new e(this.c, this.b);
        if (this.j == null) {
            this.j = new com.tencent.thumbplayer.adapter.b();
        }
        a(eVar);
        return eVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f) {
        if (this.i.a(3)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(f);
            }
            this.h.a(f);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i) {
        if (this.i.a(9)) {
            long j = (long) i;
            if (j < c().getStartPositionMs() || j > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i);
            } else if (this.d != null) {
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.b("seek to:" + i);
                this.d.a((int) (j - c().getStartPositionMs()));
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, @TPCommonEnum.TPSeekMode int i2) {
        if (this.i.a(9)) {
            long j = (long) i;
            if (j < c().getStartPositionMs() || j > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i);
            } else if (this.d != null) {
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.b("seek to:" + i + "/mode=" + i2);
                this.d.a((int) (j - c().getStartPositionMs()), i2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i, long j) {
        this.a.e("selectTrack not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.h.a(assetFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.h.a(parcelFileDescriptor);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        if (this.i.a(4)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(surface);
            }
            this.h.a(surface);
            return;
        }
        throw new IllegalStateException("setSurface , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        if (this.i.a(4)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(surfaceHolder);
            }
            this.h.a(surfaceHolder);
            return;
        }
        throw new IllegalStateException("setSurfaceHolder , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.AbstractC0037c cVar) {
        this.f.a(cVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.f.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.f.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.f.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.f.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.f.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.f.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (this.i.a(3)) {
            if (tPOptionalParam.getKey() == 100) {
                int i = (int) tPOptionalParam.getParamLong().value;
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.b("start position:" + i);
                for (int i2 = 0; i2 < this.k.size(); i2++) {
                    long j = (long) i;
                    if (this.k.get(i2).getStartPositionMs() <= j && j <= this.k.get(i2).getStartPositionMs() + this.k.get(i2).getOriginalDurationMs()) {
                        this.l = i2;
                        this.h.b(this.k.get(i2).getFilePath());
                        tPOptionalParam.getParamLong().value = j - this.k.get(i2).getStartPositionMs();
                    }
                }
            }
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(tPOptionalParam);
            }
            this.h.a(tPOptionalParam);
            return;
        }
        throw new IllegalStateException("setPlayerOptionalParam , state invalid");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        try {
            this.k = b(iTPMediaAsset);
            this.h.b(this.k.get(this.l).getFilePath());
            this.e.changeState(2);
        } catch (Exception e) {
            this.a.a(e);
            throw new IllegalStateException("exception when system clip player set data source!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j) {
        List<ITPMediaTrackClip> b = b(iTPMediaAsset);
        if (!com.tencent.thumbplayer.utils.b.a(b)) {
            long n = n();
            try {
                this.k = b;
                this.n = true;
                if (com.tencent.thumbplayer.utils.b.a(this.o)) {
                    this.o = new LinkedList<>();
                }
                this.o.offer(Long.valueOf(j));
                com.tencent.thumbplayer.f.a aVar = this.a;
                aVar.c("try to switch definition with system clip player, current clipNo:" + this.l);
                d((int) n);
            } catch (Exception e) {
                this.a.a(e);
                throw new IllegalStateException("exception when system clip player switch definition!");
            }
        } else {
            throw new IllegalStateException("exception when switch Definition with clip mediaAsset empty source!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.f.b bVar) {
        this.a.a(new com.tencent.thumbplayer.f.b(bVar, "TPSystemClipPlayer"));
        e eVar = this.f;
        if (eVar != null && bVar != null) {
            eVar.a(this.a.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, String str3) {
        this.a.e("addSubtitleSource not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, String str2, List<TPOptionalParam> list) {
        this.a.e("addAudioTrackSource not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.h.a(str, map);
        this.e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z) {
        if (this.i.a(3)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(z);
            }
            this.h.a(z);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z, long j, long j2) {
        if (this.i.a(3)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(z, j, j2);
            }
            this.h.a(z, j, j2);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i) {
        b bVar = this.d;
        if (bVar != null) {
            return bVar.b(i);
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f) {
        if (this.i.a(3)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.b(f);
            }
            this.h.b(f);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i, long j) {
        this.a.e("deselectTrack not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z) {
        if (this.i.a(3)) {
            b bVar = this.d;
            if (bVar != null) {
                bVar.b(z);
            }
            this.h.b(z);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i) {
        b bVar = this.d;
        return bVar != null ? bVar.c(i) : "";
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i, long j) {
        this.a.e("selectProgram not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (this.i.a(1)) {
            if (this.h.f()) {
                this.d = e();
                if (this.d != null) {
                    this.e.changeState(3);
                    this.d.f();
                    return;
                }
                throw new RuntimeException("error , create player failed");
            }
            throw new IOException("error , prepare , data source invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        if (this.i.a(1)) {
            if (this.h.f()) {
                this.d = e();
                if (this.d != null) {
                    this.e.changeState(3);
                    this.d.g();
                    return;
                }
                throw new RuntimeException("error , create player failed");
            }
            throw new IllegalStateException("error , prepare , state invalid , data source invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        if (this.i.a(5)) {
            b bVar = this.d;
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
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        if (this.i.a(6)) {
            b bVar = this.d;
            if (bVar != null) {
                try {
                    bVar.i();
                    this.e.changeState(6);
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , pause ,state invalid");
                }
            } else {
                throw new IllegalStateException("error , pause , player is null");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.tencent.thumbplayer.adapter.a.b] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.tencent.thumbplayer.adapter.a.b
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void j() {
        /*
            r3 = this;
            com.tencent.thumbplayer.adapter.g r0 = r3.i
            r1 = 7
            boolean r0 = r0.a(r1)
            if (r0 != 0) goto L_0x000a
            return
        L_0x000a:
            com.tencent.thumbplayer.adapter.a.b r0 = r3.d
            if (r0 == 0) goto L_0x0032
            r0 = 9
            com.tencent.thumbplayer.api.TPPlayerState r1 = r3.e     // Catch: IllegalStateException -> 0x0024, all -> 0x0022
            r2 = 8
            r1.changeState(r2)     // Catch: IllegalStateException -> 0x0024, all -> 0x0022
            com.tencent.thumbplayer.adapter.a.b r1 = r3.d     // Catch: IllegalStateException -> 0x0024, all -> 0x0022
            r1.j()     // Catch: IllegalStateException -> 0x0024, all -> 0x0022
            com.tencent.thumbplayer.api.TPPlayerState r1 = r3.e
            r1.changeState(r0)
            return
        L_0x0022:
            r1 = move-exception
            goto L_0x002c
        L_0x0024:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: all -> 0x0022
            java.lang.String r2 = "error , pause ,state invalid"
            r1.<init>(r2)     // Catch: all -> 0x0022
            throw r1     // Catch: all -> 0x0022
        L_0x002c:
            com.tencent.thumbplayer.api.TPPlayerState r2 = r3.e
            r2.changeState(r0)
            throw r1
        L_0x0032:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "error , stop , player is null"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.d.j():void");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("reset, current state:" + this.e);
        b bVar = this.d;
        if (bVar != null) {
            bVar.k();
        }
        this.h.a();
        this.f.d();
        this.e.changeState(1);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.f.a aVar = this.a;
        aVar.c("release, current state:" + this.e);
        b bVar = this.d;
        if (bVar != null) {
            bVar.l();
            this.d = null;
        }
        this.h.a();
        this.f.d();
        this.e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        long j = 0;
        for (ITPMediaTrackClip iTPMediaTrackClip : this.k) {
            j += iTPMediaTrackClip.getOriginalDurationMs();
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        long j = 0;
        int i = 0;
        while (i < this.k.size() && i < this.l) {
            j += this.k.get(i).getOriginalDurationMs();
            i++;
        }
        return !this.i.a(12) ? j : j + this.d.n();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        if (this.i.a(15)) {
            return this.d.o();
        }
        com.tencent.thumbplayer.adapter.b bVar = this.j;
        if (bVar != null) {
            return bVar.k();
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        com.tencent.thumbplayer.adapter.b bVar = this.j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.a() <= 0) {
            if (!this.i.a(13)) {
                return 0;
            }
            this.j.a((long) this.d.p());
        }
        return (int) this.j.a();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.adapter.b bVar = this.j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.b() <= 0) {
            if (!this.i.a(13)) {
                return 0;
            }
            this.j.b((long) this.d.q());
        }
        return (int) this.j.b();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        this.a.e("getTrackInfo not supported.");
        return new TPTrackInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        this.a.e("getProgramInfo not supported.");
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        return -1;
    }
}
