package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.e.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class f extends c {
    private b i = new b();

    private void a(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError fail:params is not match");
            return;
        }
        Object[] b = ((b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError prepareErrorParams is null");
        } else if (b.length != 4) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError prepareErrorParams count is not match");
        } else if (!(b[0] instanceof Integer)) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError prepareErrorParams[0] is not Integer");
        } else {
            int intValue = ((Integer) b[0]).intValue();
            if (!(b[1] instanceof Integer)) {
                TPLogUtil.e("TPPrepareFailReporter", "onPrepareError prepareErrorParams[1] is not Integer");
                return;
            }
            int intValue2 = ((Integer) b[1]).intValue();
            TPLogUtil.i("TPPrepareFailReporter", "onPrepareError errorType:" + intValue + " errorCode:" + intValue2);
            com.tencent.thumbplayer.tplayer.a.b.b bVar = new com.tencent.thumbplayer.tplayer.a.b.b();
            bVar.m(intValue2);
            c();
            b(this.i);
            this.f.b(this.i.a);
            bVar.a(this.i.a);
            Map<String, String> b2 = bVar.b();
            a("onPrepareError", b2);
            b("prepare_fail", b2);
            com.tencent.thumbplayer.b.a.b.a("prepare_fail", b2);
        }
    }

    private void b(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        Object[] b = ((b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate dtProcessUpdateParams is null");
        } else if (b.length != 5) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate dtProcessUpdateParams count is not match");
        } else if (!(b[1] instanceof Integer)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate dtProcessUpdateParams[1] is not Integer");
        } else {
            int intValue = ((Integer) b[1]).intValue();
            TPLogUtil.i("TPPrepareFailReporter", "Live onDTProcessUpdate speedKBs:" + intValue);
            this.i.b = intValue;
        }
    }

    private void c() {
        if (this.b == null) {
            TPLogUtil.e("TPPrepareFailReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a = this.b.a();
        this.i.a.a(this.e.i);
        this.i.a.f(this.e.g);
        this.i.a.i(this.e.e);
        this.i.a.k(TPDownloadProxyHelper.getNativeLibVersion());
        this.i.a.j(this.i.b);
        this.i.a.n(this.i.e);
        this.i.a.l(this.i.d);
        this.i.a.m(this.i.c);
        this.i.a.k(this.e.h ? 1 : 0);
        this.h.put("buffermintotaldurationms", Long.valueOf(a.mPlayerConfigParams.mBufferMinTotalDurationMs));
        this.h.put("buffermaxtotaldurationms", Long.valueOf(a.mPlayerConfigParams.mBufferMaxTotalDurationMs));
        this.h.put("preloadtotaldurationms", Long.valueOf(a.mPlayerConfigParams.mPreloadTotalDurationMs));
        this.h.put("minbufferingdurationms", Long.valueOf(a.mPlayerConfigParams.mMinBufferingDurationMs));
        this.h.put("minbufferingtimems", Long.valueOf(a.mPlayerConfigParams.mMinBufferingTimeMs));
        this.h.put("maxbufferingtimems", Long.valueOf(a.mPlayerConfigParams.mMaxBufferingTimeMs));
        this.h.put("reducelatencyaction", Integer.valueOf(a.mPlayerConfigParams.mReduceLatencyAction));
        this.h.put("reducelatencyspeed", Float.valueOf(a.mPlayerConfigParams.mReduceLatencyPlaySpeed));
        this.h.put("buffertype", Integer.valueOf(a.mPlayerConfigParams.mBufferType));
        try {
            this.i.a.o(new JSONObject(this.h).toString());
        } catch (NullPointerException e) {
            TPLogUtil.e("TPPrepareFailReporter", e);
        }
    }

    private void c(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        Object[] b = ((b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams is null");
        } else if (b.length != 4) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            if (!(b[2] instanceof String)) {
                TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate dtCdnUrlUpdateParams[2] is not String");
                return;
            }
            String obj3 = b[2].toString();
            TPLogUtil.i("TPPrepareFailReporter", "Live onDTCdnUrlUpdate cdnIp:" + obj2 + " uIp:" + obj3);
            b bVar = this.i;
            bVar.c = obj2;
            bVar.d = obj3;
        }
    }

    private void d(Object obj) {
        if (!(obj instanceof b)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        Object[] b = ((b) obj).b();
        if (b == null) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate dtProtocolUpdateParams is null");
        } else if (b.length != 2) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate dtProtocolUpdateParams count is not match");
        } else if (!(b[1] instanceof String)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate dtProtocolUpdateParams[1] is not String");
        } else {
            String obj2 = b[1].toString();
            TPLogUtil.i("TPPrepareFailReporter", "Live onDTProtocolUpdate protocolVer:" + obj2);
            this.i.e = obj2;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i, Object obj) {
        if (i != 6) {
            switch (i) {
                case 100:
                    b(obj);
                    return;
                case 101:
                    c(obj);
                    return;
                case 102:
                    d(obj);
                    return;
                default:
                    TPLogUtil.i("TPPrepareFailReporter", "onEvent eventId:" + i + " do not need deal");
                    return;
            }
        } else {
            a(obj);
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f.a(this.i.a);
    }
}
