package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.SystemClock;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.b.a.b;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.e.b;
import com.tencent.thumbplayer.tplayer.a.b.a;
import com.tencent.thumbplayer.tplayer.a.b.b.c;
import com.tencent.thumbplayer.tplayer.a.b.b.d;
import com.tencent.thumbplayer.tplayer.a.b.b.e;
import com.tencent.thumbplayer.tplayer.a.m;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;

/* loaded from: classes2.dex */
public class n extends c {
    private boolean i = true;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private m m = new m();
    private TPTrackInfo[] n = null;

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        Map<String, String> b = b(j, i, tPGeneralPlayFlowParams).b();
        a("reportVodEndEvent", b);
        b("vod_end", b);
        b.a("vod_end", b);
    }

    private void a(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        if (this.k) {
            i(new b.a().a(SystemClock.elapsedRealtime()).b(System.currentTimeMillis()).a());
            this.k = false;
        }
        if (this.j) {
            g(new b.a().a(SystemClock.elapsedRealtime()).b(System.currentTimeMillis()).a());
            this.j = false;
        }
        if (this.l) {
            if (this.m.j > 0) {
                this.m.k += SystemClock.elapsedRealtime() - this.m.j;
                this.m.j = 0;
            }
            this.l = false;
        }
        TPLogUtil.i("TPVodReporter", "reportPlayerEndEvent playerStopTimeMs:" + j + " errorCode:" + i);
        a(tPGeneralPlayFlowParams, tPDynamicStatisticParams);
        a(j, i, tPGeneralPlayFlowParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void a(long r6, long r8, long r10) {
        /*
            r5 = this;
            com.tencent.thumbplayer.tplayer.a.m r0 = r5.m
            java.util.Map<java.lang.Long, com.tencent.thumbplayer.tplayer.a.m$a> r0 = r0.t
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            boolean r0 = r0.containsKey(r1)
            java.lang.String r1 = "TPVodReporter"
            if (r0 != 0) goto L_0x0025
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "reportSelectTrackEndEvent mSelectTrackInfoList is not contain key:"
            r8.append(r9)
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            com.tencent.thumbplayer.utils.TPLogUtil.e(r1, r6)
            return
        L_0x0025:
            com.tencent.thumbplayer.tplayer.a.m r0 = r5.m
            java.util.Map<java.lang.Long, com.tencent.thumbplayer.tplayer.a.m$a> r0 = r0.t
            java.lang.Long r2 = java.lang.Long.valueOf(r6)
            java.lang.Object r0 = r0.get(r2)
            com.tencent.thumbplayer.tplayer.a.m$a r0 = (com.tencent.thumbplayer.tplayer.a.m.a) r0
            long r2 = r0.b
            long r8 = r8 - r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "reportSelectTrackEndEvent trackUniqueIndex:"
            r2.append(r3)
            r2.append(r6)
            java.lang.String r3 = " costTimeMs:"
            r2.append(r3)
            r2.append(r8)
            java.lang.String r3 = " trackId:"
            r2.append(r3)
            int r3 = r0.a
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r2)
            com.tencent.thumbplayer.tplayer.a.b.b.f r2 = new com.tencent.thumbplayer.tplayer.a.b.b.f
            r2.<init>()
            r2.d(r10)
            r2.c(r8)
            r8 = 0
            r9 = -1
            com.tencent.thumbplayer.api.TPTrackInfo[] r10 = r5.n
            if (r10 == 0) goto L_0x0082
            int r10 = r10.length
            int r11 = r0.a
            if (r10 <= r11) goto L_0x0082
            com.tencent.thumbplayer.api.TPTrackInfo[] r8 = r5.n
            int r9 = r0.a
            r8 = r8[r9]
            int r9 = r8.getTrackType()
            boolean r8 = r8.isInternal
            r4 = r9
            r9 = r8
            r8 = r4
            goto L_0x0087
        L_0x0082:
            java.lang.String r10 = "reportSelectTrackEndEvent do not find match track info"
            com.tencent.thumbplayer.utils.TPLogUtil.w(r1, r10)
        L_0x0087:
            r2.m(r8)
            r2.n(r9)
            com.tencent.thumbplayer.tplayer.a.j r8 = r5.f
            com.tencent.thumbplayer.tplayer.a.m r9 = r5.m
            com.tencent.thumbplayer.tplayer.a.b.a r9 = r9.a
            r8.b(r9)
            com.tencent.thumbplayer.tplayer.a.m r8 = r5.m
            com.tencent.thumbplayer.tplayer.a.b.a r8 = r8.a
            int r9 = r5.g
            int r10 = r9 + 1
            r5.g = r10
            r8.a(r9)
            com.tencent.thumbplayer.tplayer.a.m r8 = r5.m
            com.tencent.thumbplayer.tplayer.a.b.a r8 = r8.a
            r2.a(r8)
            java.util.Map r8 = r2.b()
            java.lang.String r9 = "onSelectTrackEnd"
            r5.a(r9, r8)
            java.lang.String r9 = "vod_select_track"
            r5.b(r9, r8)
            com.tencent.thumbplayer.b.a.b.a(r9, r8)
            com.tencent.thumbplayer.tplayer.a.m r8 = r5.m
            java.util.Map<java.lang.Long, com.tencent.thumbplayer.tplayer.a.m$a> r8 = r8.t
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r8.remove(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tplayer.a.n.a(long, long, long):void");
    }

    private void a(TPDrmInfo tPDrmInfo) {
        Map<String, String> b = b(tPDrmInfo).b();
        a("reportPlayerDrmInfoEvent", b);
        b("vod_drm_authentication", b);
        com.tencent.thumbplayer.b.a.b.a("vod_drm_authentication", b);
    }

    private void a(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        Map<String, String> b = b(tPGeneralPlayFlowParams, tPDynamicStatisticParams).b();
        a("reportVodEndFlowEvent", b);
        b("vod_flow", b);
        com.tencent.thumbplayer.b.a.b.a("vod_flow", b);
    }

    private void a(c cVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        cVar.r(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoDecoderType);
        cVar.s(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioDecoderType);
        cVar.t(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoRenderType);
        cVar.u(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioRenderType);
        cVar.q(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mDemuxerType);
    }

    private void a(e eVar, TPDynamicStatisticParams tPDynamicStatisticParams) {
        eVar.t(tPDynamicStatisticParams.mMaxVideoStreamBitrate);
        eVar.u(tPDynamicStatisticParams.mAvgVideoStreamBitrate);
        eVar.v(tPDynamicStatisticParams.mMinVideoStreamBitrate);
        eVar.w(tPDynamicStatisticParams.mMaxVideoDecodeCostTimeMs);
        eVar.x(tPDynamicStatisticParams.mAvgVideoDecodeCostTimeMs);
        eVar.y(tPDynamicStatisticParams.mMinVideoDecodeCostTimeMs);
        eVar.z((long) tPDynamicStatisticParams.mVideoDecodeFrameCount);
        eVar.A((long) tPDynamicStatisticParams.mVideoRenderFrameCount);
    }

    private void a(e eVar, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        eVar.f(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareStartTimeMs);
        eVar.g(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCorePrepareExecuteTimeMs);
        eVar.h(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mOpenDataSourceStartTimeMs);
        eVar.i(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFindStreamInfoSuccessTimeMs);
        eVar.j(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstClipOpenedTimeMs);
        eVar.k(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mInitFirstClipPositionTimeMs);
        eVar.l(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoPacketReadTimeMs);
        eVar.p(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoDecoderStartTimeMs);
        eVar.q(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoFrameRenderTimeMs);
        eVar.m(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioPacketReadTimeMs);
        eVar.r(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioDecoderStartTimeMs);
        eVar.s(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioFrameRenderTimeMs);
        eVar.n(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mPrepareDoneTimeMs);
    }

    private void a(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onPrepareDone fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        long c = bVar.c() - this.e.c;
        long d = bVar.d() - this.e.d;
        this.m.f = bVar.c();
        TPLogUtil.i("TPVodReporter", "Vod onPrepareDone timeMs:" + c + " Since1970TimeMs:" + d);
        a((b) this.m);
        a aVar = this.m.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        this.f.b(this.m.a);
        b((b) this.m);
        d dVar = new d();
        dVar.c(c);
        dVar.a(this.m.a);
        Map<String, String> b = dVar.b();
        a("onPrepareDone", b);
        b("vod_first_load", b);
        com.tencent.thumbplayer.b.a.b.a("vod_first_load", b);
    }

    private com.tencent.thumbplayer.tplayer.a.b.b.b b(TPDrmInfo tPDrmInfo) {
        com.tencent.thumbplayer.tplayer.a.b.b.b bVar = new com.tencent.thumbplayer.tplayer.a.b.b.b();
        bVar.m(tPDrmInfo.drmAbility);
        bVar.p(tPDrmInfo.drmSupportSecureDecoder);
        bVar.q(tPDrmInfo.drmSupportSecureDecrypt);
        bVar.o(tPDrmInfo.drmSecureLevel);
        bVar.p(tPDrmInfo.drmComponentName);
        bVar.n(tPDrmInfo.drmType);
        bVar.c(tPDrmInfo.drmPrepareStartTimeMs);
        bVar.d(tPDrmInfo.drmPrepareEndTimeMs);
        bVar.e(tPDrmInfo.drmOpenSessionStartTimeMs);
        bVar.f(tPDrmInfo.drmOpenSessionEndTimeMs);
        bVar.g(tPDrmInfo.drmGetProvisionReqStartTimeMs);
        bVar.h(tPDrmInfo.drmGetProvisionReqEndTimeMs);
        bVar.i(tPDrmInfo.drmSendProvisionReqTimeMs);
        bVar.j(tPDrmInfo.drmRecvProvisionRespTimeMs);
        bVar.k(tPDrmInfo.drmProvideProvisionRespStartTimeMs);
        bVar.l(tPDrmInfo.drmProvideProvisionRespEndTimeMs);
        bVar.m(tPDrmInfo.drmGetKeyReqStartTimeMs);
        bVar.n(tPDrmInfo.drmGetKeyReqEndTimeMs);
        bVar.o(tPDrmInfo.drmSendKeyReqTimeMs);
        bVar.p(tPDrmInfo.drmRecvKeyRespTimeMs);
        bVar.q(tPDrmInfo.drmProvideKeyRespStartTimeMs);
        bVar.r(tPDrmInfo.drmProvideKeyRespEndTimeMs);
        this.f.b(this.m.a);
        a aVar = this.m.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        bVar.a(this.m.a);
        return bVar;
    }

    private c b(long j, int i, TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        c cVar = new c();
        this.m.i += j - this.m.g;
        cVar.c(this.m.i);
        cVar.m(i);
        cVar.n(this.m.m);
        cVar.o(this.m.n);
        cVar.d((long) this.m.o);
        cVar.p(this.m.q);
        cVar.e((long) this.m.r);
        a(cVar, tPGeneralPlayFlowParams);
        a aVar = this.m.a;
        int i2 = this.g;
        this.g = i2 + 1;
        aVar.a(i2);
        this.f.b(this.m.a);
        cVar.a(this.m.a);
        return cVar;
    }

    private e b(TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        e eVar = new e();
        eVar.c(this.e.a);
        eVar.d(this.e.b);
        eVar.e(this.e.c);
        eVar.o(this.m.f);
        a(eVar, tPGeneralPlayFlowParams);
        a(eVar, tPDynamicStatisticParams);
        this.f.b(this.m.a);
        a aVar = this.m.a;
        int i = this.g;
        this.g = i + 1;
        aVar.a(i);
        eVar.a(this.m.a);
        return eVar;
    }

    private void b(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onPlayerStart fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        this.i = false;
        this.l = false;
        if (this.m.g == 0) {
            this.m.g = bVar.c();
        }
        this.m.h = bVar.c();
        TPLogUtil.i("TPVodReporter", "Vod onPlayerStart timeMs:" + this.m.h);
        if (this.m.j > 0) {
            this.m.k += bVar.c() - this.m.j;
            this.m.j = 0;
        }
    }

    private void c() {
        TPLogUtil.i("TPVodReporter", "onAppForeground");
        a(this.m.a.a());
    }

    private void c(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause fail:params is not match");
        } else if (this.l) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause has been called");
        } else {
            this.l = true;
            this.m.j = ((com.tencent.thumbplayer.e.b) obj).c();
            TPLogUtil.i("TPVodReporter", "Vod onPlayerPause timeMs:" + this.m.j);
        }
    }

    private void d() {
        TPLogUtil.i("TPVodReporter", "onAppBackground");
        if (!this.i) {
            a("vod_flow", b(b(), a(false)));
            a("vod_end", b(SystemClock.elapsedRealtime(), 0, b()));
        }
    }

    private void d(Object obj) {
        if (this.i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.i = true;
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onPlayerEnd fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 2 || !(b[0] instanceof TPGeneralPlayFlowParams) || !(b[1] instanceof TPDynamicStatisticParams)) {
            TPLogUtil.e("TPVodReporter", "onPlayerEnd fail:eventparams is not match");
            return;
        }
        a(bVar.c(), 0, (TPGeneralPlayFlowParams) b[0], (TPDynamicStatisticParams) b[1]);
        a(this.m.a.a());
    }

    private void e(Object obj) {
        if (this.i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.i = true;
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onPlayerError fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 4 || !(b[0] instanceof Integer) || !(b[1] instanceof Integer) || !(b[2] instanceof TPGeneralPlayFlowParams) || !(b[3] instanceof TPDynamicStatisticParams)) {
            TPLogUtil.e("TPVodReporter", "onPlayerError fail:eventparams is not match");
            return;
        }
        Integer num = (Integer) b[0];
        a(bVar.c(), ((Integer) b[1]).intValue(), (TPGeneralPlayFlowParams) b[2], (TPDynamicStatisticParams) b[3]);
        a(this.m.a.a());
    }

    private void f(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onSeekStart fail:params is not match");
            return;
        }
        if (this.k) {
            i(new b.a().a(SystemClock.elapsedRealtime()).b(System.currentTimeMillis()).a());
        }
        if (this.j) {
            g(new b.a().a(SystemClock.elapsedRealtime()).b(System.currentTimeMillis()).a());
        }
        this.j = true;
        this.m.l = ((com.tencent.thumbplayer.e.b) obj).c();
        TPLogUtil.i("TPVodReporter", "Vod onSeekStart timeMs:" + this.m.l);
    }

    private void g(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onSeekEnd fail:params is not match");
            return;
        }
        this.j = false;
        long c = ((com.tencent.thumbplayer.e.b) obj).c() - this.m.l;
        if (c > 1200) {
            this.m.n++;
            m mVar = this.m;
            mVar.o = (int) (((long) mVar.o) + c);
        }
        this.m.m++;
        TPLogUtil.i("TPVodReporter", "Vod onSeekEnd seekCostTimeMs:" + c + " mSeekTotalCount:" + this.m.m + " mSeekBufferingTotalCount:" + this.m.n + " mSeekBufferingTotalDurationMs:" + this.m.o);
    }

    private void h(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onBufferingStart fail:params is not match");
            return;
        }
        this.k = true;
        if (!this.j) {
            this.m.p = ((com.tencent.thumbplayer.e.b) obj).c();
            TPLogUtil.i("TPVodReporter", "Vod onBufferingStart timeMs:" + this.m.p);
        }
    }

    private void i(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onBufferingEnd fail:params is not match");
            return;
        }
        this.k = false;
        if (!this.j) {
            long c = ((com.tencent.thumbplayer.e.b) obj).c() - this.m.p;
            TPLogUtil.i("TPVodReporter", "Vod onBufferingEnd bufferingCostTimeMs:" + c);
            if (c > 1200) {
                this.m.q++;
                m mVar = this.m;
                mVar.r = (int) (((long) mVar.r) + c);
                com.tencent.thumbplayer.tplayer.a.b.b.a aVar = new com.tencent.thumbplayer.tplayer.a.b.b.a();
                aVar.b(this.m.s);
                aVar.c(c);
                this.f.b(this.m.a);
                a aVar2 = this.m.a;
                int i = this.g;
                this.g = i + 1;
                aVar2.a(i);
                aVar.a(this.m.a);
                Map<String, String> b = aVar.b();
                a("onBufferingEnd", b);
                b("vod_second_buffering", b);
                com.tencent.thumbplayer.b.a.b.a("vod_second_buffering", b);
            }
        }
    }

    private void j(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed playSpeedParams is null");
        } else if (b.length != 1) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed playSpeedParams count is not match");
        } else if (!(b[0] instanceof Float)) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed playSpeedParams[0] is not Float");
        } else {
            this.m.s = ((Float) b[0]).floatValue();
            TPLogUtil.i("TPVodReporter", "Vod onSetPlaySpeed mPlaySpeed:" + this.m.s);
        }
    }

    private void k(Object obj) {
        String str;
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            str = "onSelectTrackStart fail:params is not match";
        } else {
            com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
            Object[] b = bVar.b();
            if (b == null || b.length != 2 || !(b[0] instanceof Integer) || !(b[1] instanceof Long)) {
                str = "onSelectTrackStart fail:eventparams is not match";
            } else {
                Integer num = (Integer) b[0];
                Long l = (Long) b[1];
                TPLogUtil.i("TPVodReporter", "Vod onSelectTrackStart trackId:" + num + " trackUniqueIndex:" + l);
                if (!this.m.t.containsKey(l)) {
                    m.a aVar = new m.a();
                    aVar.a = num.intValue();
                    aVar.b = bVar.c();
                    this.m.t.put(l, aVar);
                    return;
                }
                return;
            }
        }
        TPLogUtil.e("TPVodReporter", str);
    }

    private void l(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackEnd fail:params is not match");
            return;
        }
        com.tencent.thumbplayer.e.b bVar = (com.tencent.thumbplayer.e.b) obj;
        Object[] b = bVar.b();
        if (b == null || b.length != 3 || !(b[1] instanceof Long) || !(b[1] instanceof Long) || !(b[1] instanceof Long)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackEnd fail:eventparams is not match");
            return;
        }
        Long l = (Long) b[0];
        Long l2 = (Long) b[1];
        Long l3 = (Long) b[2];
        TPLogUtil.i("TPVodReporter", "Vod onSelectTrackEnd errorCode:" + l2 + " trackUniqueIndex:" + l3);
        a(l3.longValue(), bVar.c(), l2.longValue());
    }

    private void m(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onDrmInfo fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null || b.length != 1 || !(b[0] instanceof TPDrmInfo)) {
            TPLogUtil.e("TPVodReporter", "onDrmInfo drmInfoParams error");
        } else {
            a((TPDrmInfo) b[0]);
        }
    }

    private void n(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onTrackInfo fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPVodReporter", "onTrackInfo trackInfoParams is null");
        } else if (!(b instanceof TPTrackInfo[])) {
            TPLogUtil.e("TPVodReporter", "onTrackInfo trackInfoParams is not TPTrackInfo[]");
        } else {
            this.n = (TPTrackInfo[]) ((TPTrackInfo[]) b).clone();
        }
    }

    private void o(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate dtProcessUpdateParams is null");
        } else if (b.length != 5) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate dtProcessUpdateParams count is not match");
        } else if (!(b[1] instanceof Integer)) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate dtProcessUpdateParams[1] is not Integer");
        } else {
            int intValue = ((Integer) b[1]).intValue();
            TPLogUtil.i("TPVodReporter", "Vod onDTProcessUpdate speedKBs:" + intValue);
            this.m.b = intValue;
        }
    }

    private void p(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams is null");
        } else if (b.length != 4) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            if (!(b[2] instanceof String)) {
                TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[2] is not String");
                return;
            }
            String obj3 = b[2].toString();
            TPLogUtil.i("TPVodReporter", "Vod onDTCdnUrlUpdate cdnIp:" + obj2 + " uIp:" + obj3);
            m mVar = this.m;
            mVar.c = obj2;
            mVar.d = obj3;
        }
    }

    private void q(Object obj) {
        if (!(obj instanceof com.tencent.thumbplayer.e.b)) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        Object[] b = ((com.tencent.thumbplayer.e.b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate dtProtocolUpdateParams is null");
        } else if (b.length != 2) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate dtProtocolUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate dtProtocolUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            TPLogUtil.i("TPVodReporter", "Vod onDTProtocolUpdate protocolVer:" + obj2);
            this.m.e = obj2;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i, Object obj) {
        if (i == 1001) {
            c();
        } else if (i != 1002) {
            switch (i) {
                case 2:
                    a(obj);
                    return;
                case 3:
                    b(obj);
                    return;
                case 4:
                    c(obj);
                    return;
                case 5:
                    d(obj);
                    return;
                case 6:
                    e(obj);
                    return;
                case 7:
                    f(obj);
                    return;
                case 8:
                    g(obj);
                    return;
                case 9:
                    h(obj);
                    return;
                case 10:
                    i(obj);
                    return;
                case 11:
                    k(obj);
                    return;
                case 12:
                    l(obj);
                    return;
                case 13:
                    j(obj);
                    return;
                case 14:
                    m(obj);
                    return;
                case 15:
                    n(obj);
                    return;
                default:
                    switch (i) {
                        case 100:
                            o(obj);
                            return;
                        case 101:
                            p(obj);
                            return;
                        case 102:
                            q(obj);
                            return;
                        default:
                            return;
                    }
            }
        } else {
            d();
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f.a(this.m.a);
    }
}
