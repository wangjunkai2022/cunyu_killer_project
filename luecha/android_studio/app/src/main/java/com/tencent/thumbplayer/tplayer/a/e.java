package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.SystemClock;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.b.a.b;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.e.b;
import com.tencent.thumbplayer.tplayer.a.b.a.a;
import com.tencent.thumbplayer.tplayer.a.b.a.c;
import com.tencent.thumbplayer.tplayer.a.b.a.d;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class e extends c {
    private boolean i = true;
    private boolean j = false;
    private d k = new d();
    private final Object l = new Object();
    private Future<?> m = null;
    private Runnable n = new Runnable() { // from class: com.tencent.thumbplayer.tplayer.a.e.1
        @Override // java.lang.Runnable
        public void run() {
            if (e.this.i) {
                TPLogUtil.i("TPLiveReporter", "Period Timer Exit because play done.");
                e.this.m.cancel(true);
                e.this.m = null;
                return;
            }
            e.this.g();
        }
    };

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        Map<String, String> b = b(j, i, tPGeneralPlayFlowParams).b();
        a("reportLiveEndEvent", b);
        b("live_end", b);
        b.a("live_end", b);
    }

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        if (this.j) {
            f(new b.a().a(SystemClock.elapsedRealtime()).b(System.currentTimeMillis()).a());
            this.j = false;
        }
        this.k.m += SystemClock.elapsedRealtime() - this.k.h;
        d();
        TPLogUtil.i("TPLiveReporter", "reportPlayerEndEvent playerStopTimeMs:" + j + " errorCode:" + i);
        a(tPGeneralPlayFlowParams, tPDynamicStatisticParams);
        a(j, i, tPGeneralPlayFlowParams);
    }

    private void a(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        Map<String, String> b = b(tPGeneralPlayFlowParams, tPDynamicStatisticParams).b();
        a("reportLiveEndFlowEvent", b);
        b("live_flow", b);
        com.tencent.thumbplayer.b.a.b.a("live_flow", b);
    }

    private void a(a aVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        aVar.o(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoDecoderType);
        aVar.p(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioDecoderType);
        aVar.q(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoRenderType);
        aVar.r(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioRenderType);
        aVar.n(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mDemuxerType);
    }

    private void a(d dVar, TPDynamicStatisticParams tPDynamicStatisticParams) {
        dVar.t(tPDynamicStatisticParams.mMaxVideoStreamBitrate);
        dVar.u(tPDynamicStatisticParams.mAvgVideoStreamBitrate);
        dVar.v(tPDynamicStatisticParams.mMinVideoStreamBitrate);
        dVar.w(tPDynamicStatisticParams.mMaxVideoDecodeCostTimeMs);
        dVar.x(tPDynamicStatisticParams.mAvgVideoDecodeCostTimeMs);
        dVar.y(tPDynamicStatisticParams.mMinVideoDecodeCostTimeMs);
        dVar.z((long) tPDynamicStatisticParams.mVideoDecodeFrameCount);
        dVar.A((long) tPDynamicStatisticParams.mVideoRenderFrameCount);
    }

    private void a(d dVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        dVar.f(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareStartTimeMs);
        dVar.g(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCorePrepareExecuteTimeMs);
        dVar.h(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mOpenDataSourceStartTimeMs);
        dVar.i(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFindStreamInfoSuccessTimeMs);
        dVar.j(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstClipOpenedTimeMs);
        dVar.k(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mInitFirstClipPositionTimeMs);
        dVar.l(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoPacketReadTimeMs);
        dVar.p(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoDecoderStartTimeMs);
        dVar.q(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoFrameRenderTimeMs);
        dVar.m(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioPacketReadTimeMs);
        dVar.r(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioDecoderStartTimeMs);
        dVar.s(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioFrameRenderTimeMs);
        dVar.n(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mPrepareDoneTimeMs);
    }

    private void a(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onPrepareDone fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        long c = bVar.c() - this.e.c;
        long d = bVar.d() - this.e.d;
        this.k.f = bVar.c();
        TPLogUtil.i("TPLiveReporter", "Live onPrepareDone timeMs:" + c + " Since1970TimeMs:" + d);
        a((b) this.k);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.k.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        this.f.b(this.k.a);
        b((b) this.k);
        com.tencent.thumbplayer.tplayer.a.b.a.b bVar2 = new com.tencent.thumbplayer.tplayer.a.b.a.b();
        bVar2.c(c);
        bVar2.a(this.k.a);
        Map<String, String> b = bVar2.b();
        a("onPrepareDone", b);
        b("live_first_load", b);
        com.tencent.thumbplayer.b.a.b.a("live_first_load", b);
    }

    private a b(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        a aVar = new a();
        this.k.i += j - this.k.g;
        aVar.c(this.k.i);
        aVar.m(i);
        a(aVar, tPGeneralPlayFlowParams);
        com.tencent.thumbplayer.tplayer.a.b.a aVar2 = this.k.a;
        int i2 = this.g;
        this.g = i2 + 1;
        aVar2.a(i2);
        this.f.b(this.k.a);
        aVar.a(this.k.a);
        return aVar;
    }

    private d b(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        d dVar = new d();
        dVar.c(this.e.a);
        dVar.d(this.e.b);
        dVar.e(this.e.c);
        dVar.o(this.k.f);
        a(dVar, tPGeneralPlayFlowParams);
        a(dVar, tPDynamicStatisticParams);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.k.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        this.f.b(this.k.a);
        dVar.a(this.k.a);
        return dVar;
    }

    private void b(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerStart fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        this.i = false;
        if (this.k.g == 0) {
            this.k.g = bVar.c();
        }
        this.k.h = bVar.c();
        TPLogUtil.i("TPLiveReporter", "Live onPlayerStart FirstStartTimeMs:" + this.k.g + " mPlayerStartOccurElapsedTimeMs:" + this.k.h);
        c();
    }

    private void c() {
        TPLogUtil.i("TPLiveReporter", "startPeriodReportTimer");
        synchronized (this.l) {
            if (this.m == null) {
                this.m = o.a().e().scheduleAtFixedRate(this.n, 0, 60000, TimeUnit.MILLISECONDS);
            }
        }
    }

    private void c(b bVar) {
        ITPReportInfoGetter iTPReportInfoGetter = this.a;
        if (iTPReportInfoGetter != null) {
            Map<String, String> periodExtendReportInfo = iTPReportInfoGetter.getPeriodExtendReportInfo();
            if (periodExtendReportInfo == null) {
                TPLogUtil.e("TPLiveReporter", "fillPeriodExtReportInfoToCommonParams fail, period ExtendReportInfo is null");
                return;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            a(periodExtendReportInfo, hashMap, hashMap2);
            bVar.a.c(hashMap);
            bVar.a.d(hashMap2);
        }
    }

    private void c(Object obj) {
        if (this.i) {
            TPLogUtil.e("TPLiveReporter", "Player has been called End");
            return;
        }
        this.i = true;
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerEnd fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 2 || !(b[0] instanceof TPGeneralPlayFlowParams) || !(b[1] instanceof TPDynamicStatisticParams)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerEnd fail:eventparams is not match");
            return;
        }
        a(bVar.c(), 0, (TPGeneralPlayFlowParams) b[0], (TPDynamicStatisticParams) b[1]);
        a(this.k.a.a());
    }

    private synchronized void d() {
        TPLogUtil.i("TPLiveReporter", "destroyPeriodReportTimer");
        synchronized (this.l) {
            if (this.m != null) {
                this.m.cancel(true);
                this.m = null;
            }
        }
    }

    private void d(Object obj) {
        if (this.i) {
            TPLogUtil.e("TPLiveReporter", "Player has been called End");
            return;
        }
        this.i = true;
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerError fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 4 || !(b[0] instanceof Integer) || !(b[1] instanceof Integer) || !(b[2] instanceof TPGeneralPlayFlowParams) || !(b[3] instanceof TPDynamicStatisticParams)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerError fail:eventparams is not match");
            return;
        }
        Integer num = (Integer) b[0];
        a(bVar.c(), ((Integer) b[1]).intValue(), (TPGeneralPlayFlowParams) b[2], (TPDynamicStatisticParams) b[3]);
        a(this.k.a.a());
    }

    private void e() {
        TPLogUtil.i("TPLiveReporter", "onAppForeground");
        a(this.k.a.a());
    }

    private void e(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onBufferingStart fail:params is not match");
            return;
        }
        this.j = true;
        this.k.j = ((com.tencent.thumbplayer.e.b) obj).c();
        TPLogUtil.i("TPLiveReporter", "Live onBufferingStart timeMs:" + this.k.j);
        long j = this.k.j - this.k.h;
        d dVar = this.k;
        dVar.m = dVar.m + j;
    }

    private void f() {
        TPLogUtil.i("TPLiveReporter", "onAppBackground");
        if (!this.i) {
            a("live_flow", b(b(), a(false)));
            a("live_end", b(SystemClock.elapsedRealtime(), 0, b()));
        }
    }

    private void f(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onBufferingEnd fail:params is not match");
            return;
        }
        this.j = false;
        long c = ((com.tencent.thumbplayer.e.b) obj).c() - this.k.j;
        this.k.h = SystemClock.elapsedRealtime();
        TPLogUtil.i("TPLiveReporter", "Live onBufferingEnd bufferingCostTimeMs:" + c);
        if (c > 1200) {
            this.k.l++;
            this.k.k += c;
            this.k.j = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        TPLogUtil.i("TPLiveReporter", "periodReportEvent enter.");
        this.k.m += SystemClock.elapsedRealtime() - this.k.h;
        this.k.h = SystemClock.elapsedRealtime();
        c cVar = new c();
        cVar.m(this.k.l);
        cVar.c(this.k.k);
        cVar.d(this.k.m);
        TPDynamicStatisticParams a = this.b.a(true);
        cVar.e(a.mMaxVideoStreamBitrate);
        cVar.f(a.mAvgVideoStreamBitrate);
        cVar.g(a.mMinVideoStreamBitrate);
        cVar.h(a.mMaxVideoDecodeCostTimeMs);
        cVar.i(a.mAvgVideoDecodeCostTimeMs);
        cVar.j(a.mMinVideoDecodeCostTimeMs);
        cVar.m((long) a.mMaxVideoGopSize);
        cVar.l((long) a.mAvgVideoGopSize);
        cVar.k((long) a.mMinVideoGopSize);
        cVar.n((long) a.mVideoDecodeFrameCount);
        cVar.o((long) a.mVideoRenderFrameCount);
        cVar.p(a.mVideoBufferedDurationMs);
        cVar.q(a.mAudioBufferedDurationMs);
        c((b) this.k);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.k.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        this.f.b(this.k.a);
        cVar.a(this.k.a);
        Map<String, String> b = cVar.b();
        a("periodReportEvent", b);
        b("live_period_report", b);
        com.tencent.thumbplayer.b.a.b.a("live_period_report", b);
        d dVar = this.k;
        dVar.l = 0;
        dVar.k = 0;
        dVar.m = 0;
        dVar.a.c((Map<String, String>) null);
        this.k.a.d((Map<String, String>) null);
    }

    private void g(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPLiveReporter", "onDTProcessUpdate dtProcessUpdateParams is null");
        } else if (b.length != 5) {
            TPLogUtil.e("TPLiveReporter", "onDTProcessUpdate dtProcessUpdateParams count is not match");
        } else if (!(b[1] instanceof Integer)) {
            TPLogUtil.e("TPLiveReporter", "onDTProcessUpdate dtProcessUpdateParams[1] is not Integer");
        } else {
            int intValue = ((Integer) b[1]).intValue();
            TPLogUtil.i("TPLiveReporter", "Live onDTProcessUpdate speedKBs:" + intValue);
            this.k.b = intValue;
        }
    }

    private void h(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams is null");
        } else if (b.length != 4) {
            TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            if (!(b[2] instanceof String)) {
                TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[2] is not String");
                return;
            }
            String obj3 = b[2].toString();
            TPLogUtil.i("TPLiveReporter", "Live onDTCdnUrlUpdate cdnIp:" + obj2 + " uIp:" + obj3);
            d dVar = this.k;
            dVar.c = obj2;
            dVar.d = obj3;
        }
    }

    private void i(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPLiveReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPLiveReporter", "onDTProtocolUpdate dtProtocolUpdateParams is null");
        } else if (b.length != 2) {
            TPLogUtil.e("TPLiveReporter", "onDTProtocolUpdate dtProtocolUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPLiveReporter", "onDTProtocolUpdate dtProtocolUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            TPLogUtil.i("TPLiveReporter", "Live onDTProtocolUpdate protocolVer:" + obj2);
            this.k.e = obj2;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
        d();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i, Object obj) {
        if (i == 2) {
            a(obj);
        } else if (i == 3) {
            b(obj);
        } else if (i == 5) {
            c(obj);
        } else if (i == 6) {
            d(obj);
        } else if (i == 9) {
            e(obj);
        } else if (i == 10) {
            f(obj);
        } else if (i == 1001) {
            e();
        } else if (i != 1002) {
            switch (i) {
                case 100:
                    g(obj);
                    return;
                case 101:
                    h(obj);
                    return;
                case 102:
                    i(obj);
                    return;
                default:
                    return;
            }
        } else {
            f();
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f.a(this.k.a);
    }
}
