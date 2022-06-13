package com.tencent.thumbplayer.adapter.a.a;

import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.a.a;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback;
import com.tencent.thumbplayer.core.subtitle.TPNativeSubtitleRenderParams;
import com.tencent.thumbplayer.core.subtitle.TPSubtitleParser;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c implements a {
    TPNativeSubtitleRenderParams b;
    private a.AbstractC0034a c;
    private a.c d;
    private a.b e;
    private TPSubtitleParser f;
    private String g;
    int a = 0;
    private Future<?> h = null;
    private final Object i = new Object();
    private a j = a.IDLE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum a {
        IDLE,
        INITED,
        PREPARED,
        STOPED,
        ERROR
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        if (this.j != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.j);
            return;
        }
        TPMediaTrackInfo[] trackInfo = this.f.getTrackInfo();
        if (trackInfo == null || trackInfo.length <= 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, trackInfos is empty.");
            this.j = a.ERROR;
        } else if (trackInfo[0].trackType != 3) {
            this.j = a.ERROR;
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, track type not match.");
        } else {
            this.f.selectTrackAsync(0, j);
            this.j = a.PREPARED;
            if (this.a == 0) {
                synchronized (this.i) {
                    if (this.h != null) {
                        this.h.cancel(true);
                        this.h = null;
                    }
                    this.h = o.a().e().scheduleAtFixedRate(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.c.2
                        @Override // java.lang.Runnable
                        public void run() {
                            c.this.b(0);
                        }
                    }, 0, 200, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        a.c cVar = this.d;
        a.AbstractC0034a aVar = this.c;
        if (cVar == null || aVar == null) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, posLis:" + cVar + ", subLis:" + aVar);
            return;
        }
        long a2 = cVar.a();
        if (a2 < 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, cur position:" + a2);
            return;
        }
        String subtitleText = this.f.getSubtitleText(a2, i);
        if (!TextUtils.equals(this.g, subtitleText)) {
            this.g = subtitleText;
            aVar.a(new a.d(subtitleText));
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a() {
        if (this.j != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.j);
            return;
        }
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "prepare.");
        this.f.init();
        this.f.loadAsync();
        TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams = this.b;
        if (tPNativeSubtitleRenderParams != null) {
            this.f.setRenderParams(tPNativeSubtitleRenderParams);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(int i) {
        this.a = i;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.AbstractC0034a aVar) {
        this.c = aVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.b bVar) {
        this.e = bVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.c cVar) {
        this.d = cVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(TPSubtitleRenderModel tPSubtitleRenderModel) {
        this.b = com.tencent.thumbplayer.adapter.a.b.c.a(tPSubtitleRenderModel);
        TPSubtitleParser tPSubtitleParser = this.f;
        if (tPSubtitleParser != null) {
            tPSubtitleParser.setRenderParams(this.b);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(String str, final long j) {
        if (this.j != a.IDLE) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegalState, state:" + this.j);
        } else if (TextUtils.isEmpty(str)) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegal argument, url:" + str);
        } else {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "setDataSource, url: " + str);
            if (this.f != null) {
                TPLogUtil.w("TPSysPlayerExternalSubtitle", "setDataSource, mTpSubParser != null.");
                try {
                    this.f.stop();
                    this.f.unInit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.f = null;
            }
            this.f = new TPSubtitleParser(str, new ITPSubtitleParserCallback() { // from class: com.tencent.thumbplayer.adapter.a.a.c.1
                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public long onGetCurrentPlayPositionMs() {
                    if (c.this.d != null) {
                        return c.this.d.a();
                    }
                    return 0;
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onLoadResult(int i) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onLoadResult, index:" + i);
                    c.this.a(j);
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSelectResult(int i, long j2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSelectResult, errCode:" + i + ", selectOpaque:" + j2 + ", opaque =" + j);
                    if (i == 0 && c.this.e != null) {
                        c.this.e.a(j);
                    } else if (i != 0 && c.this.e != null) {
                        c.this.e.a(i, j);
                    }
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleFrame");
                    if (c.this.c != null) {
                        c.this.c.a(tPSubtitleFrame);
                    }
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleNote(String str2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleNote");
                    if (c.this.c != null) {
                        c.this.c.a(str2);
                    }
                }
            }, this.a);
            this.j = a.INITED;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void b() {
        if (this.j != a.PREPARED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "startAsync, illegalState, state:" + this.j);
            return;
        }
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "startAsync");
        this.f.startAsync();
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void c() {
        if (this.j != a.PREPARED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "pauseAsync, illegalState, state:" + this.j);
            return;
        }
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "pauseAsync");
        this.f.pauseAsync();
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void d() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "stop.");
        if (this.j == a.INITED || this.j == a.PREPARED || this.j == a.ERROR) {
            TPSubtitleParser tPSubtitleParser = this.f;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.f.unInit();
                } catch (Exception e) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e);
                }
            }
            this.f = null;
        }
        if (this.a == 0) {
            synchronized (this.i) {
                if (this.h != null) {
                    this.h.cancel(true);
                    this.h = null;
                }
            }
        }
        this.j = a.STOPED;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void e() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "reset.");
        if (this.j != a.IDLE) {
            TPSubtitleParser tPSubtitleParser = this.f;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.f.unInit();
                } catch (Exception e) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e);
                }
            }
            this.f = null;
        }
        synchronized (this.i) {
            if (this.h != null) {
                this.h.cancel(true);
                this.h = null;
            }
        }
        this.j = a.IDLE;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void f() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "release.");
        this.d = null;
        this.c = null;
    }
}
