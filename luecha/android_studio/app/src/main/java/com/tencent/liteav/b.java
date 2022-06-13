package com.tencent.liteav;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.datareport.TXCDRExtInfo;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.TXCStatus;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.network.a.e;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCDataReport.java */
/* loaded from: classes5.dex */
public class b {
    private static HashMap<String, a> A = new HashMap<>();
    private static String a = "TXCDataReport";
    private String c;
    private Context d;
    private long f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private boolean l;
    private long m;
    private long v;
    private String z;
    private long o = 0;
    private long p = 0;
    private boolean q = false;
    private long r = 0;
    private long s = 0;
    private long t = 0;
    private long u = 0;
    private long w = 0;
    private int x = 0;
    private long y = 0;
    private String B = "";
    private String C = "";
    private HashMap b = new HashMap(100);
    private String e = TXCCommonUtil.getAppVersion();
    private int n = 5000;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCDataReport.java */
    /* loaded from: classes5.dex */
    public enum a {
        PENDING,
        CONFIRM,
        NEGATIVE
    }

    public b(Context context) {
        this.v = 0;
        this.d = context.getApplicationContext();
        this.v = 0;
    }

    public void a() {
        j();
        this.g = -1;
        this.k = -1;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.r = System.currentTimeMillis();
        this.y = TXCTimeUtil.getTimeTick();
    }

    public void b() {
        if (this.l) {
            if (this.q) {
                c(com.tencent.liteav.basic.datareport.a.Y);
            } else if (c() != a.NEGATIVE) {
                c(com.tencent.liteav.basic.datareport.a.V);
            }
            if (this.q) {
                b(com.tencent.liteav.basic.datareport.a.Z);
            } else {
                b(com.tencent.liteav.basic.datareport.a.W);
            }
        } else {
            String str = a;
            TXCLog.e(str, "play " + this.c + " failed");
            if (this.q) {
                a(com.tencent.liteav.basic.datareport.a.X);
            } else {
                a(com.tencent.liteav.basic.datareport.a.U);
            }
        }
        if (this.q) {
            i();
        }
        TXCStatus.a(this.B, 7107, (Object) 0L);
        TXCStatus.a(this.B, 2033, (Object) 0L);
        TXCStatus.a(this.B, 6001, (Object) 0L);
        TXCStatus.a(this.B, 7104, (Object) 0L);
        TXCStatus.a(this.B, 7108, (Object) 0L);
    }

    public void a(boolean z) {
        this.q = z;
    }

    public void a(String str) {
        this.c = str;
        b(str);
    }

    public void b(String str) {
        if (str != null) {
            this.z = str;
        }
    }

    protected a c() {
        Uri parse;
        try {
            parse = Uri.parse(this.z);
        } catch (Exception e) {
            TXCLog.e(a, "check stream failed.", e);
        }
        if (parse == null) {
            return a.PENDING;
        }
        final String host = parse.getHost();
        if (TextUtils.isEmpty(host)) {
            return a.PENDING;
        }
        String scheme = parse.getScheme();
        if (scheme == null) {
            return a.PENDING;
        }
        if (!scheme.equals("rtmp") && !scheme.equals("http") && !scheme.equals("https")) {
            return a.PENDING;
        }
        if (c(host)) {
            return a.CONFIRM;
        }
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        if (queryParameterNames != null && (queryParameterNames.contains("bizid") || queryParameterNames.contains("txTime") || queryParameterNames.contains("txSecret"))) {
            return a.CONFIRM;
        }
        if (A.containsKey(host)) {
            return A.get(host);
        }
        A.put(host, a.PENDING);
        new Thread(new Runnable() { // from class: com.tencent.liteav.b.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e[] a2 = com.tencent.liteav.network.a.a.a.c().a(new com.tencent.liteav.network.a.b(host, true), null);
                    int length = a2.length;
                    boolean z = false;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        e eVar = a2[i];
                        if (eVar.a() && b.c(eVar.a)) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                    b.A.put(host, z ? a.CONFIRM : a.NEGATIVE);
                    TXCLog.d(b.a, host + " isTencent " + z);
                } catch (Exception e2) {
                    TXCLog.e(b.a, "check dns failed.", e2);
                }
            }
        }).start();
        return a.PENDING;
    }

    protected static boolean c(String str) {
        if (str == null || !str.contains("myqcloud")) {
            return c.a().a(str);
        }
        return true;
    }

    public void d(String str) {
        this.B = str;
    }

    public void e(String str) {
        this.C = str;
    }

    private void g() {
        a(PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED, PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED, PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED);
        TXCStatus.a(this.B, 9001, Integer.valueOf(h.a()[0]));
        a(9001, 9002, 9003);
        TXCStatus.a(this.B, 9004, Integer.valueOf(h.b()));
        a(9004, 9005, 9006);
    }

    public void a(int i, int i2, int i3) {
        if (i == 6002) {
            double d = TXCStatus.d(this.B, i);
            if (d >= 0.001d) {
                double d2 = TXCStatus.d(this.B, i2);
                int c = TXCStatus.c(this.B, i3) + 1;
                TXCStatus.a(this.B, i2, Double.valueOf(d2 + ((d - d2) / ((double) c))));
                TXCStatus.a(this.B, i3, Integer.valueOf(c));
                return;
            }
            return;
        }
        double c2 = (double) TXCStatus.c(this.B, i);
        if (c2 >= 0.001d) {
            double d3 = TXCStatus.d(this.B, i2);
            int c3 = TXCStatus.c(this.B, i3) + 1;
            TXCStatus.a(this.B, i2, Double.valueOf(d3 + ((c2 - d3) / ((double) c3))));
            TXCStatus.a(this.B, i3, Integer.valueOf(c3));
        }
    }

    public void d() {
        g();
        if (!this.l) {
            long a2 = TXCStatus.a(this.B, 6001);
            long a3 = TXCStatus.a(this.B, 7104);
            long a4 = TXCStatus.a(this.B, 2033);
            long a5 = TXCStatus.a(this.B, 7108);
            if (a2 > 0 && a3 > 0 && a5 > 0 && a4 > 0) {
                a(this.q ? com.tencent.liteav.basic.datareport.a.X : com.tencent.liteav.basic.datareport.a.U);
                this.n = 5000;
                this.l = true;
            }
            String b = TXCStatus.b(this.B, 7119);
            if (b != null) {
                b(b);
            }
        }
        if (this.x >= 3 && !this.l) {
            a(this.q ? com.tencent.liteav.basic.datareport.a.X : com.tencent.liteav.basic.datareport.a.U);
            this.n = 5000;
            this.l = true;
        }
        this.x++;
        if (this.m <= 0) {
            this.m = TXCTimeUtil.getTimeTick();
        }
        if (TXCTimeUtil.getTimeTick() > this.m + ((long) this.n)) {
            if (this.q) {
                c(com.tencent.liteav.basic.datareport.a.Y);
                this.n = 5000;
            } else if (c() != a.NEGATIVE) {
                c(com.tencent.liteav.basic.datareport.a.V);
                this.n = TXCDRApi.getStatusReportInterval();
                if (this.n < 5000) {
                    this.n = 5000;
                }
            } else {
                return;
            }
            this.g = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED);
            this.k = (long) TXCStatus.c(this.B, 2002);
            this.m = TXCTimeUtil.getTimeTick();
        }
    }

    private void a(int i) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.url = this.c;
        tXCDRExtInfo.report_common = false;
        tXCDRExtInfo.report_status = false;
        String str = (String) this.b.get("token");
        TXCDRApi.InitEvent(this.d, str, i, com.tencent.liteav.basic.datareport.a.ao, tXCDRExtInfo);
        a(i, str);
        Object obj = this.b.get("u64_timestamp");
        TXCDRApi.txSetEventIntValue(str, i, "u64_timestamp", obj != null ? ((Long) obj).longValue() : TXCTimeUtil.getUtcTimeTick());
        long a2 = TXCStatus.a(this.B, 7107);
        long a3 = TXCStatus.a(this.B, 7108);
        if (a3 != -1) {
            a3 -= a2;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_dns_time", a3 < 0 ? -1 : a3);
        long a4 = TXCStatus.a(this.B, 7109);
        if (a4 != -1) {
            a4 -= a2;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_connect_server_time", a4 < 0 ? -1 : a4);
        int c = TXCStatus.c(this.B, 5004);
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_decode_type", (long) c);
        this.f = TXCStatus.a(this.B, 6001) - this.y;
        long j9 = this.f;
        if (j9 < 0) {
            j9 = -1;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_i_frame", j9);
        long a5 = TXCStatus.a(this.B, 7103) - this.y;
        if (a5 < 0) {
            j = a5;
            j2 = -1;
        } else {
            j2 = a5;
            j = j2;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_frame_down", j2);
        long a6 = TXCStatus.a(this.B, 5005) - this.y;
        if (a6 < 0) {
            j3 = a6;
            j4 = -1;
        } else {
            j4 = a6;
            j3 = j4;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_video_decode_time", j4);
        long a7 = TXCStatus.a(this.B, 7104) - this.y;
        if (a7 < 0) {
            j5 = a7;
            j6 = -1;
        } else {
            j6 = a7;
            j5 = j6;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_audio_frame_down", j6);
        long a8 = TXCStatus.a(this.B, 2033) - this.y;
        if (a8 < 0) {
            j7 = a8;
            j8 = -1;
        } else {
            j8 = a8;
            j7 = j8;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_audio_render_time", j8);
        int c2 = TXCStatus.c(this.B, 7105);
        TXCDRApi.txSetEventIntValue(str, i, "u64_err_code", (long) c2);
        int c3 = TXCStatus.c(this.B, 7106);
        TXCDRApi.txSetEventIntValue(str, i, "str_err_info", (long) c3);
        int c4 = TXCStatus.c(this.B, 7112);
        TXCDRApi.txSetEventValue(str, i, "u32_link_type", String.valueOf(c4));
        int c5 = TXCStatus.c(this.B, 7111);
        TXCDRApi.txSetEventValue(str, i, "u32_channel_type", String.valueOf(c5));
        TXCDRApi.txSetEventValue(str, i, "str_app_version", this.e);
        TXCDRApi.nativeReportEvent(str, i);
        String str2 = a;
        TXCLog.d(str2, "report evt " + i + ": token=" + str + "\nstr_user_id=" + this.b.get("str_user_id") + "\ndev_uuid=" + this.b.get("dev_uuid") + "\nstr_session_id=" + this.b.get("str_session_id") + "\nstr_device_type=" + this.b.get("str_device_type") + "\nstr_os_info=" + this.b.get("str_os_info") + "\nstr_package_name=" + this.b.get("str_package_name") + "\nu32_network_type=" + this.b.get("u32_network_type") + "\nu32_server_ip=" + this.b.get("u32_server_ip") + "\nstr_stream_url=" + this.b.get("str_stream_url") + "\nu64_timestamp=" + this.b.get("u64_timestamp") + "\nu32_dns_time=" + a3 + "\nu32_connect_server_time=" + a4 + "\nu32_video_decode_type=" + c + "\nu32_first_frame_down=" + j + "\nu32_first_video_decode_time=" + j3 + "\nu32_first_i_frame=" + this.f + "\nu32_first_audio_frame_down=" + j5 + "\nu32_first_audio_render_time=" + j7 + "\nu64_err_code=" + c2 + "\nstr_err_info=" + c3 + "\nu32_link_type=" + c4 + "\nu32_channel_type=" + c5 + "\nstr_app_version=" + this.e);
    }

    private void f(String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith("room://")) {
            String[] split = str.split("/");
            split[split.length - 1].split("_");
            TXCStatus.a(this.B, 7112, (Object) 3L);
        }
    }

    private int h() {
        long timeTick = TXCTimeUtil.getTimeTick();
        long c = (long) TXCStatus.c(this.B, 6109);
        long j = this.o;
        int i = 0;
        if (j != 0) {
            long j2 = timeTick - j;
            long j3 = c - this.p;
            if (j2 > 0) {
                i = (int) ((j3 * 1000) / j2);
            }
        } else {
            long j4 = timeTick - this.w;
            if (j4 > 0) {
                i = (int) ((1000 * c) / j4);
            }
        }
        this.o = timeTick;
        this.p = c;
        return i;
    }

    private void b(int i) {
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.url = this.c;
        tXCDRExtInfo.report_common = false;
        tXCDRExtInfo.report_status = false;
        String str = (String) this.b.get("token");
        TXCDRApi.InitEvent(this.d, str, i, com.tencent.liteav.basic.datareport.a.ao, tXCDRExtInfo);
        a(i, str);
        long utcTimeTick = TXCTimeUtil.getUtcTimeTick();
        TXCDRApi.txSetEventIntValue(str, i, "u64_end_timestamp", utcTimeTick);
        TXCDRApi.txSetEventIntValue(str, i, "u64_timestamp", utcTimeTick);
        double d = TXCStatus.d(this.B, 9002);
        TXCDRApi.txSetEventValue(str, i, "u32_avg_cpu_usage", String.valueOf(d));
        double d2 = TXCStatus.d(this.B, 9005);
        TXCDRApi.txSetEventValue(str, i, "u32_avg_memory", String.valueOf(d2));
        String valueOf = String.valueOf(this.v);
        TXCDRApi.txSetEventValue(str, i, "u64_begin_timestamp", valueOf);
        long timeTick = (TXCTimeUtil.getTimeTick() - TXCStatus.a(this.B, 7107)) / 1000;
        int i2 = (timeTick > 0 ? 1 : (timeTick == 0 ? 0 : -1));
        TXCDRApi.txSetEventIntValue(str, i, "u64_playtime", i2 < 0 ? -1 : timeTick);
        TXCDRApi.txSetEventIntValue(str, i, "u32_result", i2 < 0 ? -1 : timeTick);
        int c = TXCStatus.c(this.B, 7105);
        TXCDRApi.txSetEventIntValue(str, i, "u64_err_code", (long) c);
        int c2 = TXCStatus.c(this.B, 2004);
        TXCDRApi.txSetEventIntValue(str, i, "u32_speed_cnt", (long) c2);
        int c3 = TXCStatus.c(this.B, 2008);
        long j = (long) c3;
        TXCDRApi.txSetEventIntValue(str, i, "u64_audio_cache_avg", j);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_cache_time", j);
        long c4 = (long) TXCStatus.c(this.B, 2003);
        TXCDRApi.txSetEventValue(str, i, "u32_max_load", String.valueOf(c4));
        long c5 = (long) TXCStatus.c(this.B, 2001);
        TXCDRApi.txSetEventValue(str, i, "u32_avg_load", String.valueOf(c5));
        long c6 = (long) TXCStatus.c(this.B, 2002);
        TXCDRApi.txSetEventValue(str, i, "u32_load_cnt", String.valueOf(c6));
        int c7 = TXCStatus.c(this.B, 2005);
        TXCDRApi.txSetEventIntValue(str, i, "u32_nodata_cnt", (long) c7);
        long j2 = c5 * c6;
        TXCDRApi.txSetEventIntValue(str, i, "u32_audio_block_time", j2);
        long j3 = this.f;
        if (j3 < 0) {
            j3 = -1;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_i_frame", j3);
        int c8 = TXCStatus.c(this.B, 6010);
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_width", (long) c8);
        int c9 = TXCStatus.c(this.B, 6011);
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_height", (long) c9);
        double d3 = TXCStatus.d(this.B, PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED);
        TXCDRApi.txSetEventValue(str, i, "u32_video_avg_fps", String.valueOf(d3));
        long a2 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR);
        long a3 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION);
        long a4 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        long j4 = 0;
        if (a2 > 0) {
            j4 = a4 / a2;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u64_block_duration_avg", j4);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_block_time", j4);
        TXCDRApi.txSetEventIntValue(str, i, "u64_block_count", a2);
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_block_time", a4);
        TXCDRApi.txSetEventIntValue(str, i, "u64_block_duration_max", a3);
        long a5 = TXCStatus.a(this.B, 6103);
        TXCDRApi.txSetEventIntValue(str, i, "u64_jitter_cache_max", a5);
        long a6 = TXCStatus.a(this.B, 6102);
        TXCDRApi.txSetEventIntValue(str, i, "u64_jitter_cache_avg", a6);
        TXCDRApi.txSetEventValue(str, i, "u32_link_type", String.valueOf(TXCStatus.c(this.B, 7112)));
        int c10 = TXCStatus.c(this.B, 7111);
        TXCDRApi.txSetEventValue(str, i, "u32_channel_type", String.valueOf(c10));
        int c11 = TXCStatus.c(this.B, 7113);
        TXCDRApi.txSetEventValue(str, i, "u32_ip_count_quic", String.valueOf(c11));
        int c12 = TXCStatus.c(this.B, 7114);
        TXCDRApi.txSetEventValue(str, i, "u32_connect_count_quic", String.valueOf(c12));
        int c13 = TXCStatus.c(this.B, 7115);
        TXCDRApi.txSetEventValue(str, i, "u32_connect_count_tcp", String.valueOf(c13));
        TXCDRApi.txSetEventValue(str, i, "str_app_version", this.e);
        TXCDRApi.txSetEventIntValue(str, i, "u32_is_real_time", this.q ? 1 : 0);
        TXCDRApi.txSetEventIntValue(str, i, "u32_first_frame_black", TXCStatus.a(this.B, 6013));
        TXCDRApi.nativeReportEvent(str, i);
        TXCLog.d(a, "report evt " + i + ": token=" + str + "\nstr_user_id=" + this.b.get("str_user_id") + "\ndev_uuid=" + this.b.get("dev_uuid") + "\nstr_session_id=" + this.b.get("str_session_id") + "\nstr_device_type=" + this.b.get("str_device_type") + "\nstr_os_info=" + this.b.get("str_os_info") + "\nstr_package_name=" + this.b.get("str_package_name") + "\nu32_network_type=" + this.b.get("u32_network_type") + "\nu32_server_ip=" + this.b.get("u32_server_ip") + "\nstr_stream_url=" + this.b.get("str_stream_url") + "\nu64_timestamp=" + this.b.get("u64_timestamp") + "\nu32_avg_cpu_usage=" + d + "\nu32_avg_memory=" + d2 + "\nu32_first_i_frame=" + this.f + "\nu32_video_width=" + c8 + "\nu32_video_height=" + c9 + "\nu32_video_avg_fps=" + d3 + "\nu32_speed_cnt=" + c2 + "\nu32_nodata_cnt=" + c7 + "\nu32_avg_cache_time=" + c3 + "\nu32_avg_block_time=" + j4 + "\nu32_avg_load=" + c5 + "\nu32_max_load=" + c4 + "\nu32_video_block_time=" + a4 + "\nu32_audio_block_time=" + j2 + "\nu32_load_cnt=" + c6 + "\nu32_result=" + timeTick + "\nu64_err_code=" + c + "\nu32_channel_type=" + c10 + "\nu32_ip_count_quic=" + c11 + "\nu32_connect_count_quic=" + c12 + "\nu32_connect_count_tcp=" + c13 + "\nu64_block_count=" + a2 + "\nu64_jitter_cache_max=" + a5 + "\nu64_jitter_cache_avg=" + a6 + "\nu64_begin_timestamp=" + valueOf + "\nu32_is_real_time=" + TXCStatus.a(this.B, 2009) + "\nstr_app_version=" + this.e);
    }

    private void a(int i, String str) {
        String b = TXCStatus.b(this.B, 7121);
        if (TextUtils.isEmpty(b)) {
            b = str;
        }
        this.b.put("str_session_id", b);
        this.b.put("u32_server_ip", TXCStatus.b(this.B, 7110));
        if (this.q) {
            this.b.put("str_stream_url", TXCStatus.b(this.B, 7116));
            f((String) this.b.get("str_stream_url"));
        } else {
            this.b.put("str_stream_url", TXCStatus.b(this.B, 7119));
        }
        TXCDRApi.txSetEventValue(str, i, "str_user_id", (String) this.b.get("str_user_id"));
        TXCDRApi.txSetEventValue(str, i, "dev_uuid", (String) this.b.get("dev_uuid"));
        TXCDRApi.txSetEventValue(str, i, "str_session_id", (String) this.b.get("str_session_id"));
        TXCDRApi.txSetEventValue(str, i, "str_device_type", (String) this.b.get("str_device_type"));
        TXCDRApi.txSetEventValue(str, i, "str_os_info", (String) this.b.get("str_os_info"));
        TXCDRApi.txSetEventValue(str, i, "str_package_name", (String) this.b.get("str_package_name"));
        TXCDRApi.txSetEventIntValue(str, i, "u32_network_type", (long) g("u32_network_type"));
        TXCDRApi.txSetEventValue(str, i, "u32_server_ip", (String) this.b.get("u32_server_ip"));
        TXCDRApi.txSetEventValue(str, i, "str_stream_url", (String) this.b.get("str_stream_url"));
    }

    private void c(int i) {
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.url = this.c;
        tXCDRExtInfo.report_common = false;
        int i2 = 1;
        tXCDRExtInfo.report_status = true;
        String str = (String) this.b.get("token");
        TXCDRApi.InitEvent(this.d, str, i, com.tencent.liteav.basic.datareport.a.ao, tXCDRExtInfo);
        a(i, str);
        TXCDRApi.txSetEventIntValue(str, i, "u64_timestamp", TXCTimeUtil.getUtcTimeTick());
        int[] a2 = h.a();
        TXCDRApi.txSetEventIntValue(str, i, "u32_cpu_usage", (long) a2[1]);
        TXCDRApi.txSetEventIntValue(str, i, "u32_app_cpu_usage", (long) a2[0]);
        TXCDRApi.txSetEventValue(str, i, "u32_avg_cpu_usage", String.valueOf(TXCStatus.d(this.B, 9002)));
        TXCDRApi.txSetEventValue(str, i, "u32_avg_memory", String.valueOf(TXCStatus.d(this.B, 9005)));
        TXCDRApi.txSetEventIntValue(str, i, "u32_recv_av_diff_time", TXCStatus.a(this.B, 6108));
        TXCDRApi.txSetEventIntValue(str, i, "u32_play_av_diff_time", TXCStatus.a(this.B, 6107));
        TXCDRApi.txSetEventValue(str, i, "u64_playtime", String.valueOf((TXCTimeUtil.getUtcTimeTick() - this.v) / 1000));
        if (TXCStatus.c(this.B, 2015) == 0) {
            i2 = 2;
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_audio_decode_type", (long) i2);
        long a3 = TXCStatus.a(this.B, 2002);
        long j = this.k;
        if (j == -1) {
            Long l = 0L;
            TXCDRApi.txSetEventIntValue(str, i, "u32_audio_block_count", l.longValue());
        } else if (a3 >= j) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_audio_block_count", a3 - j);
        } else {
            Long l2 = -1L;
            TXCDRApi.txSetEventIntValue(str, i, "u32_audio_block_count", l2.longValue());
        }
        this.k = a3;
        TXCDRApi.txSetEventIntValue(str, i, "u32_audio_cache_time", (long) TXCStatus.c(this.B, 2010));
        TXCDRApi.txSetEventIntValue(str, i, "u32_audio_drop", (long) TXCStatus.c(this.B, 2014));
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_decode_type", (long) TXCStatus.c(this.B, 5004));
        int d = (int) TXCStatus.d(this.B, 5007);
        if (d == 0) {
            d = h();
        }
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_recv_fps", (long) d);
        TXCDRApi.txSetEventIntValue(str, i, "u32_fps", (long) ((int) TXCStatus.d(this.B, PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED)));
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_cache_time", (long) TXCStatus.c(this.B, 6101));
        long a4 = TXCStatus.a(this.B, 6102);
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_cache_count", a4);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_cache_count", a4);
        long a5 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED);
        long j2 = this.g;
        if (j2 == -1) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_block_count", 0);
        } else if (a5 >= j2) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_block_count", a5 - j2);
        } else {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_block_count", 0);
        }
        this.g = a5;
        int c = TXCStatus.c(this.B, 7102);
        int c2 = TXCStatus.c(this.B, 7101);
        long j3 = (long) (c + c2);
        TXCDRApi.txSetEventIntValue(str, i, "u32_net_speed", j3);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_net_speed", j3);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_audio_bitrate", (long) c);
        TXCDRApi.txSetEventIntValue(str, i, "u32_avg_video_bitrate", (long) c2);
        TXCDRApi.txSetEventValue(str, i, "u32_link_type", String.valueOf(TXCStatus.c(this.B, 7112)));
        TXCDRApi.txSetEventValue(str, i, "u32_channel_type", String.valueOf(TXCStatus.c(this.B, 7111)));
        TXCDRApi.txSetEventValue(str, i, "str_app_version", this.e);
        long a6 = TXCStatus.a(this.B, 6009);
        long j4 = this.h;
        if (a6 > j4) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_light_block_count", a6 - j4);
        } else {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_light_block_count", 0);
        }
        this.h = a6;
        long a7 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR);
        long j5 = this.i;
        if (a7 > j5) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_large_block_count", a7 - j5);
        } else {
            TXCDRApi.txSetEventIntValue(str, i, "u32_video_large_block_count", 0);
        }
        this.i = a7;
        long c3 = (long) TXCStatus.c(this.B, 2034);
        long j6 = this.j;
        if (c3 > j6) {
            TXCDRApi.txSetEventIntValue(str, i, "u32_audio_jitter_60ms_count", c3 - j6);
        } else {
            TXCDRApi.txSetEventIntValue(str, i, "u32_audio_jitter_60ms_count", 0);
        }
        this.j = c3;
        TXCDRApi.txSetEventIntValue(str, i, "u32_video_decode_fail", (long) TXCStatus.c(this.B, 5006));
        TXCDRApi.txSetEventIntValue(str, i, "u32_audio_decode_fail", (long) TXCStatus.c(this.B, 2035));
        TXCDRApi.nativeReportEvent(str, i);
        if (this.q) {
            this.u++;
            this.t += a4;
            if (a4 > this.s) {
                this.s = a4;
            }
        }
    }

    private void i() {
        HashMap hashMap = new HashMap();
        String b = TXCStatus.b(this.B, 7116);
        String b2 = TXCStatus.b(this.B, 7117);
        String b3 = TXCStatus.b(this.B, 7118);
        int c = TXCStatus.c(this.B, 7105);
        String b4 = TXCStatus.b(this.B, 7106);
        int c2 = TXCStatus.c(this.B, 7111);
        hashMap.put("stream_url", b);
        hashMap.put("stream_id", b2);
        hashMap.put("bizid", b3);
        hashMap.put("err_code", String.valueOf(c));
        hashMap.put("err_info", b4);
        hashMap.put("channel_type", String.valueOf(c2));
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.r;
        hashMap.put(com.umeng.analytics.pro.c.p, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date(this.r)));
        hashMap.put(com.umeng.analytics.pro.c.q, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date(currentTimeMillis)));
        hashMap.put("total_time", String.valueOf(j));
        long a2 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR);
        long a3 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        long a4 = TXCStatus.a(this.B, PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION);
        long j2 = a2 != 0 ? a3 / a2 : 0;
        hashMap.put("block_count", String.valueOf(a2));
        hashMap.put("block_duration_max", String.valueOf(a4));
        hashMap.put("block_duration_avg", String.valueOf(j2));
        long j3 = this.u;
        long j4 = j3 != 0 ? this.t / j3 : 0;
        hashMap.put("jitter_cache_max", String.valueOf(this.s));
        hashMap.put("jitter_cache_avg", String.valueOf(j4));
        String txCreateToken = TXCDRApi.txCreateToken();
        int i = com.tencent.liteav.basic.datareport.a.ah;
        int i2 = com.tencent.liteav.basic.datareport.a.an;
        TXCDRExtInfo tXCDRExtInfo = new TXCDRExtInfo();
        tXCDRExtInfo.command_id_comment = "LINKMIC";
        TXCDRApi.InitEvent(this.d, txCreateToken, i, i2, tXCDRExtInfo);
        String str = a;
        TXCLog.d(str, "report evt 40402: token=" + txCreateToken);
        for (Map.Entry entry : hashMap.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            String str4 = a;
            TXCLog.e(str4, "RealTimePlayStatisticInfo: " + str2 + " = " + str3);
            if (!(str2 == null || str2.length() <= 0 || str3 == null)) {
                TXCDRApi.txSetEventValue(txCreateToken, i, str2, str3);
            }
        }
        TXCDRApi.nativeReportEvent(txCreateToken, i);
        this.q = false;
        this.r = 0;
        this.u = 0;
        this.t = 0;
        this.s = 0;
    }

    private int g(String str) {
        Number number = (Number) this.b.get(str);
        if (number != null) {
            return number.intValue();
        }
        return 0;
    }

    private void j() {
        this.l = false;
        this.m = 0;
        this.x = 0;
        String str = this.C;
        if (TextUtils.isEmpty(str)) {
            str = TXCCommonUtil.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = h.b(this.d);
        }
        this.b.put("str_user_id", str);
        this.b.put("str_device_type", TXCBuild.Model());
        this.b.put("str_device_type", TXCBuild.Model());
        this.b.put("u32_network_type", Integer.valueOf(h.d(this.d)));
        this.b.put("token", h.e());
        this.b.put("str_package_name", h.c(this.d));
        this.b.put("dev_uuid", h.f(this.d));
        this.b.put("str_os_info", TXCBuild.Version());
        this.v = TXCTimeUtil.getUtcTimeTick();
        this.b.put("u64_timestamp", Long.valueOf(this.v));
        this.w = TXCTimeUtil.getTimeTick();
    }
}
