package com.tencent.liteav;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.datareport.TXCDRExtInfo;
import com.tencent.liteav.basic.datareport.a;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.h;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCVodPlayCollection.java */
/* loaded from: classes5.dex */
public class f {
    private int A;
    private int G;
    private int I;
    private String J;
    private String K;
    private Context c;
    private int s;
    private final String a = "TXCVodPlayCollection";
    private final String b = "1";
    private String d = null;
    private long e = 0;
    private long f = 0;
    private long g = 0;
    private boolean h = false;
    private boolean i = true;
    private boolean j = false;
    private boolean k = false;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private long o = 0;
    private int p = 0;
    private int q = 0;
    private int r = 0;
    private boolean u = false;
    private boolean v = false;
    private int w = 0;
    private int x = 0;
    private String y = "0";
    private String z = "";
    private String B = "";
    private int C = -1;
    private int D = 0;
    private int E = 0;
    private int F = 0;
    private float H = 1.0f;
    private String M = "";
    private String t = TXCCommonUtil.getAppVersion();
    private String L = h.e();

    public f(Context context) {
        this.c = context;
    }

    public void a(String str) {
        TXCLog.i("TXCVodPlayCollection", "setUrl: " + str);
        this.d = str;
    }

    public String a() {
        Context context = this.c;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
    }

    public void b() {
        this.L = h.e();
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.report_common = false;
        tXCDRExtInfo.report_status = false;
        tXCDRExtInfo.url = this.d;
        TXCDRApi.InitEvent(this.c, this.L, a.af, a.au, tXCDRExtInfo);
        c(a.af);
        TXCDRApi.txSetEventValue(this.L, a.af, "str_fileid", this.z);
        TXCDRApi.nativeReportEvent(this.L, a.af);
        TXCLog.i("TXCVodPlayCollection", "report evt 40303: token=" + this.L);
    }

    private void c(int i) {
        TXCDRApi.txSetEventValue(this.L, i, "str_sdk_name", "liteavSdk");
        TXCDRApi.txSetEventValue(this.L, i, "str_brand_type", h.d());
        TXCDRApi.txSetEventValue(this.L, i, "str_device_resolution", h.e(this.c));
        TXCDRApi.txSetEventValue(this.L, i, "str_device_type", h.c());
        TXCDRApi.txSetEventIntValue(this.L, i, "u32_network_type", (long) h.d(this.c));
        String f = h.f(this.c);
        TXCDRApi.txSetEventValue(this.L, i, "dev_uuid", f);
        TXCDRApi.txSetEventValue(this.L, i, "str_app_version", this.t);
        TXCDRApi.txSetEventValue(this.L, i, "str_app_name", a());
        TXCDRApi.txSetEventValue(this.L, i, a.l, String.valueOf(TXCBuild.VersionInt()));
        TXCDRApi.txSetEventValue(this.L, i, "str_stream_url", this.d);
        String str = this.L;
        TXCDRApi.txSetEventValue(str, i, "token", str);
        String userId = TXCCommonUtil.getUserId();
        if (userId == null || userId.isEmpty()) {
            userId = "_" + f;
        }
        TXCDRApi.txSetEventValue(this.L, i, "str_user_id", userId);
        Map<String, String> extIDMap = TXCCommonUtil.getExtIDMap();
        if (extIDMap != null) {
            for (String str2 : extIDMap.keySet()) {
                String str3 = extIDMap.get(str2);
                TXCDRApi.txSetEventValue(this.L, i, str2, str3);
                TXCLog.i("TXCVodPlayCollection", "extKey = " + str2 + ", extValue = " + str3);
            }
        }
        TXCDRApi.txSetEventValue(this.L, i, "str_package_name", h.c(this.c));
        TXCDRApi.txSetEventValue(this.L, i, "u32_app_id", this.M);
    }

    private void n() {
        this.L = h.e();
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.report_common = false;
        tXCDRExtInfo.report_status = false;
        tXCDRExtInfo.url = this.d;
        TXCDRApi.InitEvent(this.c, this.L, a.ad, a.au, tXCDRExtInfo);
        c(a.ad);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_timeuse", (long) this.n);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_videotime", (long) this.l);
        String str = this.L;
        int i = a.ad;
        int i2 = this.q;
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_load", i2 == 0 ? 0 : (long) (this.r / i2));
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_load_cnt", (long) this.q);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_max_load", (long) this.s);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_avg_block_time", (long) this.r);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_player_type", (long) this.x);
        String str2 = this.L;
        int i3 = a.ad;
        int i4 = this.E;
        TXCDRApi.txSetEventIntValue(str2, i3, "u32_dns_time", i4 > 0 ? (long) i4 : 0);
        String str3 = this.L;
        int i5 = a.ad;
        int i6 = this.D;
        TXCDRApi.txSetEventIntValue(str3, i5, "u32_tcp_did_connect", i6 > 0 ? (long) i6 : 0);
        String str4 = this.L;
        int i7 = a.ad;
        int i8 = this.F;
        TXCDRApi.txSetEventIntValue(str4, i7, "u32_first_video_packet", i8 > 0 ? (long) i8 : 0);
        String str5 = this.L;
        int i9 = a.ad;
        int i10 = this.p;
        TXCDRApi.txSetEventIntValue(str5, i9, "u32_first_i_frame", i10 > 0 ? (long) i10 : 0);
        TXCDRApi.txSetEventValue(this.L, a.ad, "u32_server_ip", this.J);
        TXCDRApi.txSetEventValue(this.L, a.ad, "u32_drm_type", this.K);
        TXCDRApi.txSetEventValue(this.L, a.ad, "str_fileid", this.z);
        TXCDRApi.txSetEventValue(this.L, a.ad, "u32_playmode", this.y);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u64_err_code", (long) this.A);
        TXCDRApi.txSetEventValue(this.L, a.ad, "str_err_info", this.B);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_video_decode_type", (long) this.C);
        TXCDRApi.txSetEventIntValue(this.L, a.ad, "u32_speed", (long) ((int) (this.H * 100.0f)));
        TXCDRApi.nativeReportEvent(this.L, a.ad);
        StringBuilder sb = new StringBuilder();
        sb.append("report evt 40304: token=");
        sb.append(this.L);
        sb.append(" ,");
        sb.append("dev_uuid");
        sb.append("=");
        sb.append(h.f(this.c));
        sb.append(" ,");
        sb.append("str_app_version");
        sb.append("=");
        sb.append(this.t);
        sb.append(" ,");
        sb.append(a.l);
        sb.append("=");
        sb.append(TXCBuild.VersionInt());
        sb.append(" ,");
        sb.append("str_stream_url");
        sb.append("=");
        sb.append(this.d);
        sb.append(" ,");
        sb.append("u32_timeuse");
        sb.append("=");
        sb.append(this.n);
        sb.append(" ,");
        sb.append("u32_videotime");
        sb.append("=");
        sb.append(this.l);
        sb.append(" ,");
        sb.append("u32_avg_load");
        sb.append("=");
        int i11 = this.q;
        sb.append(i11 == 0 ? 0 : this.r / i11);
        sb.append(" ,");
        sb.append("u32_load_cnt");
        sb.append("=");
        sb.append(this.q);
        sb.append(" ,");
        sb.append("u32_max_load");
        sb.append("=");
        sb.append(this.s);
        sb.append(" ,");
        sb.append("u32_avg_block_time");
        sb.append("=");
        sb.append(this.r);
        sb.append(" ,");
        sb.append("u32_player_type");
        sb.append("=");
        sb.append(this.x);
        sb.append(" ,");
        sb.append("u32_dns_time");
        sb.append("=");
        sb.append(this.E);
        sb.append(" ,");
        sb.append("u32_tcp_did_connect");
        sb.append("=");
        int i12 = this.D;
        if (i12 <= 0) {
            i12 = -1;
        }
        sb.append(i12);
        sb.append(" ,");
        sb.append("u32_first_video_packet");
        sb.append("=");
        int i13 = this.F;
        if (i13 <= 0) {
            i13 = -1;
        }
        sb.append(i13);
        sb.append(" ,");
        sb.append("u32_first_i_frame");
        sb.append("=");
        sb.append(this.p);
        sb.append(" ,");
        sb.append("u32_server_ip");
        sb.append("=");
        sb.append(this.J);
        sb.append(" ,");
        sb.append("u32_drm_type");
        sb.append("=");
        sb.append(this.K);
        sb.append(" ,");
        sb.append("str_fileid");
        sb.append("=");
        sb.append(this.z);
        sb.append(" ,");
        sb.append("u32_playmode");
        sb.append("=");
        sb.append(this.y);
        sb.append(" ,");
        sb.append("u64_err_code");
        sb.append("=");
        sb.append(this.A);
        sb.append(" ,");
        sb.append("str_err_info");
        sb.append("=");
        sb.append(this.B);
        sb.append(" ,");
        sb.append("u32_speed");
        sb.append("=");
        sb.append(this.H * 100.0f);
        sb.append(" ,");
        sb.append("u32_app_id");
        sb.append("=");
        sb.append(TXCCommonUtil.getAppID());
        sb.append(" ,");
        sb.append("u32_video_decode_type");
        sb.append("=");
        sb.append(this.C);
        TXCLog.i("TXCVodPlayCollection", sb.toString());
    }

    public void a(int i, int i2) {
        this.l = i;
        int a = i2 / g.a(this.c).a(this.M);
        if (a != this.m) {
            this.m = a;
            if (!this.i) {
                o();
            }
        }
    }

    private void o() {
        if (0 == this.f) {
            TXCLog.i("TXCVodPlayCollection", "calculateSegmentPlayTime mBeginPlayTS == 0");
            return;
        }
        TXCLog.i("TXCVodPlayCollection", "calculateSegmentPlayTime mCurIndexPlayTime= " + this.o + ", mBeginPlayTS=" + this.f);
        this.o = this.o + ((long) ((int) (System.currentTimeMillis() - this.f)));
        this.f = System.currentTimeMillis();
        if (this.y.equals("1")) {
            boolean b = g.a(this.c).b(this.M);
            if (!b) {
                g.a(this.c).c(this.M);
            }
            if (this.h && b) {
                p();
            }
            long j = this.o;
            this.n = (int) (((long) this.n) + (j / 1000));
            this.o = j % 1000;
        }
    }

    private void p() {
        TXCLog.i("TXCVodPlayCollection", "onSegmentReport");
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.report_common = false;
        tXCDRExtInfo.report_status = false;
        tXCDRExtInfo.url = this.d;
        TXCDRApi.InitEvent(this.c, this.L, a.ae, a.au, tXCDRExtInfo);
        c(a.ae);
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_videotime", (long) this.l);
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_player_type", (long) this.x);
        TXCDRApi.txSetEventValue(this.L, a.ae, "u32_server_ip", this.J);
        TXCDRApi.txSetEventValue(this.L, a.ae, "u32_drm_type", this.K);
        TXCDRApi.txSetEventValue(this.L, a.ae, "str_fileid", this.z);
        TXCDRApi.txSetEventValue(this.L, a.ae, "u32_playmode", this.y);
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_videoindex", (long) this.m);
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_realplaytime", this.o / 1000);
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u64_timestamp", System.currentTimeMillis());
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_speed", (long) ((int) (this.H * 100.0f)));
        TXCDRApi.txSetEventIntValue(this.L, a.ae, "u32_segment_duration", (long) g.a(this.c).a(this.M));
        TXCDRApi.nativeReportEvent(this.L, a.ae);
        TXCLog.i("TXCVodPlayCollection", "report evt 40305: token=" + this.L + " ,dev_uuid=" + h.f(this.c) + " ,str_app_version=" + this.t + " ," + a.l + "=" + TXCBuild.VersionInt() + " ,str_stream_url=" + this.d + " ,u32_videotime=" + this.l + " ,u32_player_type=" + this.x + " ,u32_server_ip=" + this.J + " ,u32_drm_type=" + this.K + " ,str_fileid=" + this.z + " ,u32_playmode=" + this.y + " ,u32_videoindex=" + this.m + " ,u32_realplaytime=" + (this.o / 1000) + " ,u32_speed=" + (this.H * 100.0f) + " ,u32_app_id=" + TXCCommonUtil.getAppID() + " ,u64_timestamp=" + System.currentTimeMillis());
    }

    public void a(boolean z) {
        this.h = true;
        long currentTimeMillis = System.currentTimeMillis();
        this.f = currentTimeMillis;
        this.e = currentTimeMillis;
        this.n = 0;
        this.o = 0;
        this.m = 0;
        this.g = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        if (z) {
            this.i = false;
        } else {
            this.j = true;
        }
        TXCLog.i("TXCVodPlayCollection", "start " + this.f + ", mIsPaused = " + this.i + " mIsPreLoading = " + this.j);
    }

    public void c() {
        TXCLog.i("TXCVodPlayCollection", "stop " + this.o);
        if (this.i) {
            this.f = System.currentTimeMillis();
        }
        if (this.h && !this.j) {
            o();
            this.n = (int) (((long) this.n) + (this.o / 1000));
            this.o = 0;
            n();
            this.h = false;
        }
        this.u = false;
        this.v = false;
        this.i = false;
        this.j = false;
        this.k = false;
    }

    public void d() {
        TXCLog.i("TXCVodPlayCollection", "pause " + this.o);
        if (!this.i) {
            this.o += System.currentTimeMillis() - this.f;
        }
        this.i = true;
        this.f = System.currentTimeMillis();
    }

    public void e() {
        this.f = System.currentTimeMillis();
        if (this.j) {
            this.e = this.f;
            this.j = false;
        }
        TXCLog.i("TXCVodPlayCollection", "resume " + this.f);
        this.i = false;
    }

    public void f() {
        if (!this.u && this.p != 0 && !this.k) {
            TXCLog.i("TXCVodPlayCollection", "setLoadEnd mFirstFrame=" + this.p + " , mIsLoading = " + this.v + ",mBeginLoadTS = " + this.g);
            if (this.v) {
                int currentTimeMillis = (int) (System.currentTimeMillis() - this.g);
                this.r += currentTimeMillis;
                this.q++;
                if (this.s < currentTimeMillis) {
                    this.s = currentTimeMillis;
                }
                this.v = false;
            }
        }
        if (this.u) {
            this.u = false;
        }
    }

    public void g() {
        TXCLog.i("TXCVodPlayCollection", "renderStart");
        if (this.p == 0) {
            this.p = (int) (System.currentTimeMillis() - this.f);
        }
    }

    public void h() {
        TXCLog.i("TXCVodPlayCollection", "setBitrateRenderStart");
        this.k = false;
    }

    public void i() {
        if (this.D == 0) {
            this.D = (int) (System.currentTimeMillis() - this.e);
            TXCLog.i("TXCVodPlayCollection", "mTcpConnectTS = " + this.D + ", mOriginBeginPlayTS = " + this.e + ", " + System.currentTimeMillis());
        }
    }

    public void j() {
        if (this.E == 0) {
            this.E = (int) (System.currentTimeMillis() - this.e);
        }
    }

    public void k() {
        if (this.F == 0) {
            this.F = (int) (System.currentTimeMillis() - this.f);
        }
    }

    public void l() {
        if (!this.u && this.p != 0 && !this.k) {
            this.g = System.currentTimeMillis();
            this.v = true;
            TXCLog.i("TXCVodPlayCollection", "setLoadBegin mBeginLoadTS= " + this.g);
        }
    }

    public void m() {
        this.u = true;
        this.w++;
        TXCDRApi.txReportDAU(this.c, a.bA);
        TXCLog.d("TXCVodPlayCollection", "mSeekCnt= " + this.w);
    }

    public void a(int i) {
        this.x = i;
    }

    public void b(String str) {
        this.y = str;
    }

    public void c(String str) {
        this.K = str;
    }

    public void d(String str) {
        this.z = str;
    }

    public void b(boolean z) {
        if (z) {
            this.G = 1;
            TXCDRApi.txReportDAU(this.c, a.bC);
        } else {
            this.G = 0;
        }
        TXCLog.i("TXCVodPlayCollection", "mIsMirror= " + this.G);
    }

    public void c(boolean z) {
        if (!z) {
            this.k = true;
        }
        this.I++;
        TXCDRApi.txReportDAU(this.c, a.bD);
        TXCLog.d("TXCVodPlayCollection", "mSetBitrateIndexCnt= " + this.I);
    }

    public void a(float f) {
        this.H = f;
        TXCDRApi.txReportDAU(this.c, a.bB);
        TXCLog.i("TXCVodPlayCollection", "mSpeed = " + this.H);
    }

    public void e(String str) {
        this.J = str;
        if (this.J == null) {
            this.J = "";
        }
    }

    public void b(int i) {
        this.C = i;
    }

    public void a(int i, String str) {
        TXCLog.i("TXCVodPlayCollection", "errorCode= " + i + " ，errorInfo= " + str);
        if (this.p == 0) {
            this.A = i;
            this.B = str;
            if (this.B == null) {
                this.B = "";
            }
        }
        if (this.h) {
            c();
        }
    }

    public void f(String str) {
        this.M = str;
    }
}
