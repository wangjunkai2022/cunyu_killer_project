package com.tencent.thumbplayer.tplayer.plugins.report;

import android.app.UiModeManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
import com.tekartik.sqflite.Constant;
import com.tencent.thumbplayer.api.TPErrorCode;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.report.TPDefaultReportInfo;
import com.tencent.thumbplayer.api.report.TPLiveReportInfo;
import com.tencent.thumbplayer.api.report.TPVodReportInfo;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.l;
import com.tencent.thumbplayer.utils.o;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b implements ITPBusinessReportManager, com.tencent.thumbplayer.tplayer.plugins.a {
    private static final String a = TPSystemInfo.getDeviceName();
    private static final String b = String.format("Android %s", TPSystemInfo.getOsVersion());
    private static String c = "";
    private static boolean d = false;
    private static com.tencent.thumbplayer.utils.c i = null;
    private Context J;
    private HandlerThread e;
    private HandlerC0049b f;
    private final Object g = new Object();
    private boolean h = false;
    private TPDefaultReportInfo j = null;
    private TPReportParams k = null;
    private int l = 1;
    private int m = 0;
    private boolean n = true;
    private boolean o = true;
    private boolean p = false;
    private boolean q = false;
    private long r = 0;
    private long s = 0;
    private int t = 81;
    private int u = 0;
    private int v = 0;
    private int w = 0;
    private boolean x = false;
    private boolean y = false;
    private boolean z = false;
    private String A = "0";
    private String B = "";
    private String C = "";
    private String D = "";
    private int E = 0;
    private int F = 0;
    private String G = "";
    private int H = 0;
    private long I = 0;
    private int K = -1;
    private c L = new a();
    private TPReportParams.BufferingOnceParams M = null;
    private TPReportParams.UserSeekOnceParams N = null;
    private final e O = new e();
    private f.a P = new f.a() { // from class: com.tencent.thumbplayer.tplayer.plugins.report.b.1
        @Override // com.tencent.thumbplayer.utils.f.a
        public void a(int i2, int i3, int i4, Object obj) {
            int i5;
            TPLogUtil.i("TPReportManager", "OnGlobalEventChangeListener eventId: " + i2);
            switch (i2) {
                case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                    i5 = 2100;
                    break;
                case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                    i5 = 2101;
                    break;
                default:
                    return;
            }
            b.this.f.obtainMessage(i5, null).sendToTarget();
        }
    };

    /* loaded from: classes2.dex */
    class a implements c {
        a() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.b.a.a aVar) {
            b.this.a(aVar, i, i <= 30);
            b.this.b(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.tencent.thumbplayer.tplayer.plugins.report.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class HandlerC0049b extends Handler {
        HandlerC0049b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Map map = message.obj instanceof Map ? (Map) message.obj : null;
            int i = message.what;
            if (i == 100) {
                b.this.k();
            } else if (i == 3000) {
                b.this.e();
            } else if (i == 4000) {
                b.this.i();
            } else if (i == 2100) {
                b.this.h();
            } else if (i != 2101) {
                switch (i) {
                    case TPErrorCode.TP_ERROR_TYPE_UNKONW /* 999 */:
                        b.this.a(map);
                        return;
                    case 1000:
                        b.this.b(map);
                        return;
                    case 1001:
                        b.this.c(map);
                        return;
                    case 1002:
                        b.this.d(map);
                        return;
                    case 1003:
                        b.this.e(map);
                        return;
                    case 1004:
                        b.this.g(map);
                        return;
                    case 1005:
                        b.this.h(map);
                        return;
                    case 1006:
                        b.this.i(map);
                        return;
                    case 1007:
                        b.this.j(map);
                        return;
                    case 1008:
                        b.this.k(map);
                        return;
                    case 1009:
                        b.this.n(map);
                        return;
                    case 1010:
                        b.this.p(map);
                        return;
                    case 1011:
                        b.this.o(map);
                        return;
                    case 1012:
                        b.this.f(map);
                        return;
                    case 1013:
                        b.this.l(map);
                        return;
                    case 1014:
                        b.this.m(map);
                        return;
                    case 1015:
                        b.this.r(map);
                        return;
                    case 1016:
                        if (message.obj instanceof String) {
                            b.this.a((String) message.obj);
                            return;
                        }
                        return;
                    case 1017:
                        b.this.C(map);
                        return;
                    case 1018:
                        b.this.D(map);
                        return;
                    case 1019:
                        b.this.A(map);
                        return;
                    case 1020:
                        b.this.y(map);
                        return;
                    case 1021:
                        b.this.z(map);
                        return;
                    case 1022:
                        b.this.B(map);
                        return;
                    case 1023:
                        b.this.E(map);
                        return;
                    default:
                        switch (i) {
                            case 2000:
                                b.this.s(map);
                                return;
                            case 2001:
                                b.this.t(map);
                                return;
                            case 2002:
                                b.this.v(map);
                                return;
                            case 2003:
                                b.this.u(map);
                                return;
                            case 2004:
                                b.this.w(map);
                                return;
                            case 2005:
                                b.this.x(map);
                                return;
                            default:
                                return;
                        }
                }
            } else {
                b.this.f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface c {
        void a(int i, com.tencent.thumbplayer.b.a.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements c {
        d() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.b.a.a aVar) {
            l lVar = new l();
            boolean z = i <= 30 || i == 263;
            if (i == 30) {
                i = 205;
            } else if (i == 50) {
                b.this.f.removeMessages(3000);
                i = 263;
            } else if (i == 150) {
                b.this.f.removeMessages(3000);
            } else if (i == 263) {
                b.this.f.removeMessages(3000);
                b.this.f.sendEmptyMessageDelayed(3000, 60000);
            } else {
                return;
            }
            b.this.a(lVar, i, z);
            b.this.b(lVar, z);
            if (i != 205) {
                lVar.a("loadingtime", 0);
            }
            TPLogUtil.i("TPReportManager", "liveExParam.prePlayLengthInt: " + b.this.k.getLiveExParam().prePlayLengthInt);
            b.this.b(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e {
        long a;
        int b;
        long c;
        long d;
        int e;
        int f;
        long g;
        long h;
        int i;
        int j;
        int k;
        int l;
        boolean m;
        boolean n;
        boolean o;
        int p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        ArrayList<f> w;

        private e() {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = -1;
            this.q = "";
            this.r = "";
            this.s = "";
            this.t = "";
            this.u = "";
            this.v = "";
            this.w = new ArrayList<>();
        }

        void a() {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = -1;
            this.q = "";
            this.r = "";
            this.s = "";
            this.t = "";
            this.u = "";
            this.v = "";
            this.w.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f {
        String a;
        String b;
        long c = -1;

        f(String str, String str2) {
            this.a = "";
            this.b = "";
            this.a = str;
            this.b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements c {
        g() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i, com.tencent.thumbplayer.b.a.a aVar) {
            boolean z = i <= 30;
            b.this.a(aVar, i, z);
            b.this.a(aVar, z);
            b.this.b(aVar);
        }
    }

    public b(Context context) {
        this.J = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(Map<String, Object> map) {
        if (map != null) {
            TPReportParams.LiveExParam liveExParam = this.k.getLiveExParam();
            long a2 = a(map, "stime", System.currentTimeMillis());
            liveExParam.getSyncFrameDurationInt = (int) (a2 - this.O.c);
            this.k.getFirstLoadParams().firstPacketReadTimeUnix = a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Map<String, Object> map) {
        if (map != null) {
            this.k.getFirstLoadParams().firstOpenTimeUnix = a(map, "stime", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Map<String, Object> map) {
        if (map != null) {
            this.u = a(map, "speed", 0);
            this.O.k += this.u;
            this.O.l++;
            if (this.u > this.O.j) {
                this.O.j = this.u;
            }
            String a2 = a(map, "spanId", "");
            if (!TextUtils.isEmpty(a2)) {
                try {
                    JSONObject jSONObject = new JSONObject(a2);
                    if (jSONObject.has("spanId")) {
                        this.O.u = jSONObject.getString("spanId");
                    }
                } catch (Exception e2) {
                    TPLogUtil.e("TPReportManager", e2);
                }
                b(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(Map<String, Object> map) {
        if (map != null) {
            this.O.r = a(map, ImagesContract.URL, "");
            this.O.s = a(map, "cdnip", "");
            this.O.t = a(map, "cdnuip", "");
            if (!TextUtils.isEmpty(this.O.r) && this.O.r.contains("sid=")) {
                int indexOf = this.O.r.indexOf("sid=");
                int indexOf2 = this.O.r.indexOf("&", indexOf);
                e eVar = this.O;
                eVar.v = indexOf2 > -1 ? eVar.r.substring(indexOf + 4, indexOf2) : eVar.r.substring(indexOf + 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Map<String, Object> map) {
        this.B = a(map, "proto", "");
        this.C = a(map, "protover", "");
    }

    private float a(Map<String, Object> map, String str, float f2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? f2 : ((Float) obj).floatValue();
    }

    private int a(Map<String, Object> map, String str, int i2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? i2 : ((Integer) obj).intValue();
    }

    private long a(Map<String, Object> map, String str, long j) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? j : ((Long) obj).longValue();
    }

    private static String a(int i2) {
        if (i2 == 5) {
            return "init_player";
        }
        if (i2 == 15) {
            return "get_cdn_url";
        }
        if (i2 == 30) {
            return "first_load";
        }
        if (i2 == 40) {
            return "user_seek";
        }
        if (i2 == 50) {
            return "play_done";
        }
        if (i2 == 150) {
            return "live_error";
        }
        if (i2 == 205) {
            return "live_loading";
        }
        if (i2 == 263) {
            return "live_period";
        }
        switch (i2) {
            case 32:
                return "first_rendering";
            case 33:
                return "load_subtitle";
            case 34:
                return "302_redirect";
            case 35:
                return "second_buffering";
            default:
                return "";
        }
    }

    private String a(Map<String, Object> map, String str, String str2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? str2 : (String) obj;
    }

    private static void a(com.tencent.thumbplayer.b.a.a aVar) {
        String str;
        HashMap hashMap = new HashMap();
        aVar.a(hashMap);
        if (hashMap.containsKey("step") && (str = hashMap.get("step")) != null) {
            String a2 = a(Integer.parseInt(str));
            if (!TextUtils.isEmpty(a2)) {
                TPLogUtil.i("TPReportManager", "reportEvent: eventId = " + a2);
                com.tencent.thumbplayer.b.a.b.a(a2, hashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.b.a.a aVar, int i2, boolean z) {
        TPReportParams.CommonParams commonParams = this.k.getCommonParams();
        commonParams.stepInt = i2;
        commonParams.seqInt++;
        String str = this.D;
        commonParams.flowIdString = str;
        commonParams.playNoString = str;
        commonParams.signalStrengthInt = this.t;
        commonParams.networkSpeedInt = this.u;
        commonParams.networkTypeInt = m();
        commonParams.deviceNameString = a;
        commonParams.deviceResolutionString = l();
        commonParams.osVersionString = b;
        commonParams.p2pVersionString = TPDownloadProxyHelper.getNativeLibVersion();
        commonParams.playerVersionString = TPPlayerConfig.VERSION;
        commonParams.playerTypeInt = this.E;
        commonParams.p2pInt = this.z ? 1 : 0;
        commonParams.proto = this.B;
        commonParams.protover = this.C;
        commonParams.playTypeInt = this.K;
        TPDefaultReportInfo tPDefaultReportInfo = this.j;
        if (tPDefaultReportInfo != null && z) {
            commonParams.testIdInt = tPDefaultReportInfo.testId;
            commonParams.cdnIdInt = this.j.cdnId;
            commonParams.downloadTypeInt = this.j.dlType;
            commonParams.loginTypeInt = this.j.loginType;
            commonParams.mediaFormatInt = this.j.mediaFormat;
            commonParams.mediaRateInt = this.j.mediaRate;
            commonParams.platformLong = this.j.platform;
            commonParams.onlineInt = this.j.isOnline ? 1 : 0;
            commonParams.mediaDurationFloat = this.j.mediaDuration;
            commonParams.uinString = this.j.uin;
            commonParams.qqOpenIdString = this.j.qqOpenId;
            commonParams.wxOpenIdString = this.j.wxOpenId;
            commonParams.guidString = this.j.guid;
            commonParams.uipString = this.j.uip;
            commonParams.cdnUipString = this.j.cdnUip;
            commonParams.cdnIpString = this.j.cdnIp;
            commonParams.appVersionString = this.j.appVersion;
            commonParams.vidString = this.j.vid;
            commonParams.mediaResolutionString = this.j.mediaResolution;
            commonParams.scenesId = this.j.scenesId;
            if (this.j.reportInfoProperties != null) {
                for (Map.Entry entry : this.j.reportInfoProperties.entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value == null) {
                        aVar.a(key.toString(), "");
                    } else {
                        aVar.a(key.toString(), value.toString());
                    }
                }
            }
            this.K = this.j.getPlayType();
        }
        if (commonParams.platformLong <= 0) {
            commonParams.platformLong = (long) TPPlayerConfig.getPlatform();
        }
        if (TextUtils.isEmpty(commonParams.uinString)) {
            commonParams.uinString = TPPlayerConfig.getUserUin();
        }
        if (TextUtils.isEmpty(commonParams.guidString)) {
            commonParams.guidString = TPPlayerConfig.getGuid();
        }
        if (TextUtils.isEmpty(commonParams.appVersionString)) {
            commonParams.appVersionString = TPPlayerConfig.getAppVersionName(this.J);
        }
        if (TextUtils.isEmpty(commonParams.uipString)) {
            commonParams.uipString = this.O.t;
        }
        if (TextUtils.isEmpty(commonParams.cdnUipString)) {
            commonParams.cdnUipString = this.O.t;
        }
        if (TextUtils.isEmpty(commonParams.cdnIpString)) {
            commonParams.cdnIpString = this.O.s;
        }
        if (commonParams.downloadTypeInt <= 0) {
            commonParams.downloadTypeInt = this.F;
        }
        if (TextUtils.isEmpty(commonParams.mediaResolutionString)) {
            commonParams.mediaResolutionString = this.G;
        }
        if (commonParams.mediaDurationFloat <= 0.0f) {
            commonParams.mediaDurationFloat = ((float) this.I) / 1000.0f;
        }
        if (commonParams.mediaRateInt <= 0) {
            commonParams.mediaRateInt = this.H;
        }
        commonParams.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.b.a.a aVar, boolean z) {
        TPReportParams.VodExParam vodExParam = this.k.getVodExParam();
        if (vodExParam != null) {
            TPDefaultReportInfo tPDefaultReportInfo = this.j;
            if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPVodReportInfo) && z) {
                vodExParam.currentPlayInt = ((TPVodReportInfo) tPDefaultReportInfo).currentPlayState;
                vodExParam.optimizedPlayInt = ((TPVodReportInfo) this.j).optimizedPlay;
                vodExParam.hasSubtitleInt = ((TPVodReportInfo) this.j).hasSubtitles ? 1 : 0;
                vodExParam.bizIdInt = ((TPVodReportInfo) this.j).bizId;
                vodExParam.clipInt = ((TPVodReportInfo) this.j).clipCount;
                vodExParam.statusInt = ((TPVodReportInfo) this.j).videoStatus;
                vodExParam.freeTypeInt = this.j.freeType;
            }
            vodExParam.multiTrackInt = this.O.n ? 1 : 0;
            vodExParam.isSelectedSubtitleInt = this.O.m ? 1 : 0;
            vodExParam.hevcLcInt = 0;
            vodExParam.hitDownloaded = this.O.p;
            vodExParam.paramsToProperties(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is null");
        } else if (!str.startsWith("#EXT-X-PROGRAM-DATE-TIME:")) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is not start with #EXT-X-PROGRAM-DATE-TIME:");
        } else {
            try {
                String substring = str.substring(25);
                int indexOf = substring.indexOf(43);
                if (indexOf != -1) {
                    substring = substring.substring(0, indexOf);
                } else {
                    TPLogUtil.i("TPReportManager", "handleOnPlayerPrivaterHlsM3u8Tag , player_m3u8_tag , tag do not contains time zone");
                }
                str2 = substring.replace('T', ' ');
            } catch (Exception e2) {
                TPLogUtil.e("TPReportManager", e2);
                str2 = "";
            }
            if (TextUtils.isEmpty(str2)) {
                TPLogUtil.i("TPReportManager", "onHandleHlsTag , player_m3u8_tag , dataTime is null ");
                return;
            }
            long j = 0;
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str2);
                if (parse != null) {
                    j = parse.getTime();
                }
            } catch (Exception e3) {
                TPLogUtil.e("TPReportManager", e3);
            }
            long currentTimeMillis = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder();
            sb.append("onHandleHlsTag , player_m3u8_tag , sysCurTime: ");
            sb.append(currentTimeMillis);
            sb.append(", time:");
            sb.append(j);
            sb.append(", delay:");
            long j2 = currentTimeMillis - j;
            sb.append(j2);
            TPLogUtil.i("TPReportManager", sb.toString());
            this.O.i = (int) j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateStart");
        if (map != null) {
            this.k.getInitParams().playStarTimeUnix = a(map, "stime", System.currentTimeMillis());
        }
    }

    private boolean a(Map<String, Object> map, String str, boolean z) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? z : ((Boolean) obj).booleanValue();
    }

    private int b(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 4;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.thumbplayer.b.a.a aVar) {
        TPLogUtil.i("TPReportManager", "onReportEvent: " + aVar.toString());
        a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.thumbplayer.b.a.a aVar, boolean z) {
        TPReportParams.LiveExParam liveExParam = this.k.getLiveExParam();
        if (liveExParam != null) {
            TPDefaultReportInfo tPDefaultReportInfo = this.j;
            if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPLiveReportInfo) && z) {
                liveExParam.adPlayLengthInt = ((TPLiveReportInfo) tPDefaultReportInfo).adPlayLength;
                liveExParam.liveProgramIdInt = ((TPLiveReportInfo) this.j).programId;
                liveExParam.streamIdInt = ((TPLiveReportInfo) this.j).streamId;
                liveExParam.contentIdInt = ((TPLiveReportInfo) this.j).contentId;
                liveExParam.playTimeInt = ((TPLiveReportInfo) this.j).playTime;
                liveExParam.liveTypeInt = ((TPLiveReportInfo) this.j).liveType;
                liveExParam.isUserPayInt = ((TPLiveReportInfo) this.j).isUserPay ? 1 : 0;
                liveExParam.isLookBackInt = ((TPLiveReportInfo) this.j).isLookBack ? 1 : 0;
                liveExParam.cdnServerString = ((TPLiveReportInfo) this.j).cdnServer;
                liveExParam.freeTypeInt = this.j.freeType;
                liveExParam.userQQString = this.j.uin;
                liveExParam.userIpString = this.j.uip;
                liveExParam.isStreamP2PInt = this.j.enableP2p ? 1 : 0;
            }
            TPDefaultReportInfo tPDefaultReportInfo2 = this.j;
            if (tPDefaultReportInfo2 != null && (tPDefaultReportInfo2 instanceof TPLiveReportInfo)) {
                liveExParam.liveDelayInt = ((TPLiveReportInfo) tPDefaultReportInfo2).liveDelay;
            }
            liveExParam.isUseP2PInt = this.z ? 1 : 0;
            liveExParam.downloadUrl = this.O.r;
            if (TextUtils.isEmpty(liveExParam.downloadUrl)) {
                liveExParam.downloadUrl = this.k.getFirstLoadParams().cdnUrlString;
            }
            liveExParam.downloadServerIpString = this.O.s;
            liveExParam.reportTimeLong = System.currentTimeMillis();
            if (this.O.a > 0) {
                e eVar = this.O;
                eVar.b = (int) (((long) eVar.b) + (System.currentTimeMillis() - this.O.a));
                if (this.n || this.y || this.O.o) {
                    this.O.a = 0;
                } else {
                    this.O.a = System.currentTimeMillis();
                }
            }
            liveExParam.prePlayLengthInt = this.O.b;
            this.O.b = 0;
            liveExParam.playerVersionString = TPPlayerConfig.VERSION;
            liveExParam.deviceTypeInt = n();
            liveExParam.networkTypeInt = m();
            liveExParam.maxSpeedInt = this.O.j;
            e eVar2 = this.O;
            eVar2.j = 0;
            liveExParam.testSpeedInt = this.u;
            if (eVar2.l > 0) {
                liveExParam.downSpeedInt = this.O.k / this.O.l;
                e eVar3 = this.O;
                eVar3.k = 0;
                eVar3.l = 0;
            }
            liveExParam.liveTagInt = 0;
            liveExParam.extraInfoString = "";
            liveExParam.reconnectCntInt = 0;
            liveExParam.connectTimeInt = 0;
            liveExParam.getUrlTimeInt = 0;
            liveExParam.defSwitchString = this.O.q;
            liveExParam.loadingTimeLong = this.O.d - this.O.c;
            liveExParam.blockTimeInt = this.O.f;
            liveExParam.blockCountInt = this.O.e;
            e eVar4 = this.O;
            eVar4.e = 0;
            eVar4.f = 0;
            liveExParam.errCodeInt = 0;
            liveExParam.fullErrCodeString = this.A;
            liveExParam.spanId = eVar4.u;
            liveExParam.tuid = this.O.v;
            liveExParam.paramsToProperties(aVar);
        }
    }

    private void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("hitDownloaded") && this.O.p == -1) {
                this.O.p = jSONObject.getInt("hitDownloaded");
            }
        } catch (Exception e2) {
            TPLogUtil.e("TPReportManager", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateDone");
        if (map != null) {
            l lVar = new l();
            TPReportParams.PlayerInitParams initParams = this.k.getInitParams();
            initParams.playEndTimeUnix = a(map, "etime", System.currentTimeMillis());
            initParams.errCodeString = this.A;
            initParams.paramsToProperties(lVar);
        }
    }

    private void c() {
        this.e = o.a().a("TP-ReportThread");
        this.f = new HandlerC0049b(this.e.getLooper());
        this.k = new TPReportParams();
        com.tencent.thumbplayer.utils.f.a(this.P);
        synchronized (b.class) {
            if (i == null) {
                i = new com.tencent.thumbplayer.utils.c(this.J, "TPReportCache");
            }
            if (!d) {
                this.f.obtainMessage(4000).sendToTarget();
            }
            d = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007c  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void c(java.util.Map<java.lang.String, java.lang.Object> r8) {
        /*
            r7 = this;
            boolean r0 = r7.p
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            java.lang.String r0 = "TPReportManager"
            java.lang.String r1 = "onStartPrepare"
            com.tencent.thumbplayer.utils.TPLogUtil.i(r0, r1)
            r0 = 0
            r7.n = r0
            java.lang.String r1 = ""
            java.lang.String r2 = "flowid"
            java.lang.String r2 = r7.a(r8, r2, r1)
            r7.D = r2
            java.lang.String r2 = "p2p"
            boolean r2 = r7.a(r8, r2, r0)
            r7.z = r2
            com.tencent.thumbplayer.api.report.TPDefaultReportInfo r2 = r7.j
            if (r2 == 0) goto L_0x002b
            int r2 = r2.getPlayType()
            r7.K = r2
        L_0x002b:
            int r2 = r7.K
            r3 = 1
            if (r2 != r3) goto L_0x0038
            com.tencent.thumbplayer.tplayer.plugins.report.b$d r2 = new com.tencent.thumbplayer.tplayer.plugins.report.b$d
            r2.<init>()
        L_0x0035:
            r7.L = r2
            goto L_0x0040
        L_0x0038:
            if (r2 != 0) goto L_0x0040
            com.tencent.thumbplayer.tplayer.plugins.report.b$g r2 = new com.tencent.thumbplayer.tplayer.plugins.report.b$g
            r2.<init>()
            goto L_0x0035
        L_0x0040:
            com.tencent.thumbplayer.utils.l r2 = new com.tencent.thumbplayer.utils.l
            r2.<init>()
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r4 = r7.k
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$PlayerInitParams r4 = r4.getInitParams()
            r4.paramsToProperties(r2)
            com.tencent.thumbplayer.tplayer.plugins.report.b$c r4 = r7.L
            r5 = 5
            r4.a(r5, r2)
            com.tencent.thumbplayer.tplayer.plugins.report.b$e r2 = r7.O
            long r4 = java.lang.System.currentTimeMillis()
            r2.c = r4
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r2 = r7.k
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$FirstLoadParams r2 = r2.getFirstLoadParams()
            com.tencent.thumbplayer.tplayer.plugins.report.b$e r4 = r7.O
            java.lang.String r4 = r4.r
            r2.cdnUrlString = r4
            java.lang.String r4 = r2.cdnUrlString
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L_0x0078
            java.lang.String r4 = "url"
            java.lang.String r1 = r7.a(r8, r4, r1)
            r2.cdnUrlString = r1
        L_0x0078:
            com.tencent.thumbplayer.api.report.TPDefaultReportInfo r1 = r7.j
            if (r1 == 0) goto L_0x0080
            int r1 = r1.cdnUrlIndex
            r2.cgiUrlIndex = r1
        L_0x0080:
            java.lang.String r1 = "urlindex"
            int r0 = r7.a(r8, r1, r0)
            r2.cgiUrlIndex = r0
            r0 = 0
            java.lang.String r4 = "stime"
            long r5 = r7.a(r8, r4, r0)
            r2.starTimeUnix = r5
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r2 = r7.k
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$FirstRenderParams r2 = r2.getFirstRenderParams()
            long r0 = r7.a(r8, r4, r0)
            r2.starTimeUnix = r0
            r7.p = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tplayer.plugins.report.b.c(java.util.Map):void");
    }

    private void d() {
        TPLogUtil.i("TPReportManager", "release: ");
        com.tencent.thumbplayer.utils.f.b(this.P);
        if (this.e != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                this.e.quitSafely();
            } else {
                synchronized (this.g) {
                    this.h = false;
                    this.f.sendEmptyMessage(100);
                    while (!this.h) {
                        try {
                            this.g.wait(5000, 0);
                        } catch (InterruptedException e2) {
                            TPLogUtil.e("TPReportManager", e2);
                        }
                    }
                }
                o.a().a(this.e, (Handler) null);
            }
            this.e = null;
        }
        TPLogUtil.i("TPReportManager", "release: end!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Map<String, Object> map) {
        if (this.p) {
            this.p = false;
            TPLogUtil.i("TPReportManager", "onPrepareDone");
            if (map != null) {
                this.O.d = System.currentTimeMillis();
                this.O.n = a(map, "multitrack", false);
                l lVar = new l();
                if (a(map, "playertype", 0) == 1) {
                    this.E = 0;
                } else {
                    this.E = 1;
                }
                this.G = a(map, "definition", "");
                this.I = a(map, "duration", 0L);
                this.H = (int) a(map, "rate", 0L);
                String a2 = a(map, "fmt", "");
                if (a2 == null || !a2.contains("hls")) {
                    this.F = 1;
                } else {
                    this.F = 3;
                }
                TPReportParams.FirstLoadParams firstLoadParams = this.k.getFirstLoadParams();
                firstLoadParams.endTimeUnix = a(map, "etime", 0L);
                firstLoadParams.errCodeString = this.A;
                firstLoadParams.paramsToProperties(lVar);
                this.L.a(30, lVar);
                this.k.getFirstLoadParams().reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        TPLogUtil.i("TPReportManager", "onLivePeriodReport");
        this.L.a(TPReportParams.LIVE_STEP_PLAY, new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartPlayer");
        this.n = false;
        if (map != null) {
            this.O.a = System.currentTimeMillis();
            long a2 = a(map, "stime", 0L);
            if (this.r > 0) {
                this.s += System.currentTimeMillis() - a2;
            }
            this.r = a2;
            if (this.K == 1) {
                this.f.removeMessages(3000);
                this.f.sendEmptyMessageDelayed(3000, 60000);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        TPLogUtil.i("TPReportManager", "onAppForeground");
        if (!this.o) {
            this.o = true;
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onRenderingStart");
        if (map != null) {
            l lVar = new l();
            TPReportParams.FirstRenderParams firstRenderParams = this.k.getFirstRenderParams();
            firstRenderParams.endTimeUnix = a(map, "etime", 0L);
            firstRenderParams.errCodeString = this.A;
            firstRenderParams.paramsToProperties(lVar);
            this.L.a(32, lVar);
            this.k.getFirstRenderParams().reset();
        }
    }

    private void g() {
        TPLogUtil.i("TPReportManager", "removeCacheEvent: mFlowId: " + this.D);
        if (i != null && !TextUtils.isEmpty(this.D)) {
            i.a(this.D);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerPause");
        if (map != null) {
            if (this.r > 0) {
                this.s += a(map, "stime", System.currentTimeMillis()) - this.r;
                this.r = 0;
            }
            if (this.O.a > 0) {
                this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                this.O.a = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        TPLogUtil.i("TPReportManager", "onAppBackground");
        if (!this.n && this.K != 1 && this.o) {
            this.o = false;
            l lVar = new l();
            this.k.getBufferingTotalParams().paramsToProperties(lVar);
            this.k.getUserSeekTotalParams().paramsToProperties(lVar);
            TPReportParams.PlayDoneParams playDoneParams = this.k.getPlayDoneParams();
            playDoneParams.endTimeUnix = System.currentTimeMillis();
            playDoneParams.reasonInt = 2;
            playDoneParams.errCodeString = this.A;
            if (this.O.a > 0) {
                this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                this.O.a = 0;
            }
            if (this.r > 0) {
                this.s += playDoneParams.endTimeUnix - this.r;
                this.r = 0;
            }
            playDoneParams.playDurationFloat = ((float) this.s) / 1000.0f;
            playDoneParams.paramsToProperties(lVar);
            TPReportParams.CommonParams commonParams = this.k.getCommonParams();
            commonParams.stepInt = 50;
            commonParams.paramsToProperties(lVar);
            int i2 = this.K;
            if (i2 == 0) {
                a((com.tencent.thumbplayer.b.a.a) lVar, false);
            } else if (i2 == 1) {
                b((com.tencent.thumbplayer.b.a.a) lVar, false);
            }
            if (i != null && !TextUtils.isEmpty(this.D)) {
                TPLogUtil.i("TPReportManager", "Cache report event. mFlowId: " + this.D);
                i.a(this.D, lVar.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerStop");
        if (map != null) {
            if (this.r > 0) {
                this.s += a(map, "etime", System.currentTimeMillis()) - this.r;
                this.r = 0;
            }
            if (this.O.a > 0) {
                this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                this.O.a = 0;
            }
            map.put("reason", 1);
            q(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TPLogUtil.i("TPReportManager", "onReportLastEvent");
        com.tencent.thumbplayer.utils.c cVar = i;
        if (cVar != null) {
            try {
                ArrayList arrayList = (ArrayList) cVar.a();
                if (arrayList != null) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        try {
                            Properties properties = (Properties) arrayList.get(i2);
                            if (properties != null) {
                                b(new l(properties));
                            }
                        } catch (Exception e2) {
                            TPLogUtil.e("TPReportManager", e2);
                        }
                    }
                }
            } catch (Exception e3) {
                TPLogUtil.e("TPReportManager", e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerError");
        if (map != null) {
            if (this.O.a > 0) {
                this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                this.O.a = 0;
            }
            this.A = a(map, Constant.PARAM_ERROR_CODE, "0");
            if (this.K == 1) {
                this.L.a(150, new l());
                return;
            }
            map.put("reason", 3);
            q(map);
        }
    }

    private void j() {
        this.r = 0;
        this.s = 0;
        this.w = 0;
        this.v = 0;
        this.x = false;
        this.y = false;
        this.p = false;
        this.q = false;
        this.D = "";
        this.E = 0;
        this.F = 0;
        this.H = 0;
        this.I = 0;
        this.u = 0;
        this.z = false;
        this.B = "";
        this.C = "";
        this.G = "";
        this.K = -1;
        this.A = "0";
        this.O.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartSeek");
        if (map != null) {
            if (this.y) {
                m(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
            }
            if (this.x) {
                k(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(a(map, "pstime", 0L) / 1000)).a());
            }
            this.x = true;
            this.m = 1;
            this.N = this.k.createUserSeekOnceParams();
            this.N.seekStartTimeUnix = a(map, "stime", System.currentTimeMillis());
            TPReportParams.CommonParams commonParams = this.k.getCommonParams();
            this.N.formatInt = commonParams.mediaFormatInt;
            this.N.startPresentTimeLong = a(map, "pstime", 0L) / 1000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        TPLogUtil.d("TPReportManager", "handleReportThreadExit");
        synchronized (this.g) {
            this.h = true;
            this.g.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Map<String, Object> map) {
        TPReportParams.UserSeekOnceParams userSeekOnceParams;
        TPLogUtil.i("TPReportManager", "onSeekComplete");
        this.x = false;
        if (map != null && (userSeekOnceParams = this.N) != null) {
            userSeekOnceParams.seekEndTimeUnix = a(map, "etime", System.currentTimeMillis());
            this.N.endPresentTimeLong = a(map, "petime", 0L) / 1000;
            TPReportParams.UserSeekOnceParams userSeekOnceParams2 = this.N;
            userSeekOnceParams2.errCodeString = this.A;
            long j = userSeekOnceParams2.seekEndTimeUnix - this.N.seekStartTimeUnix;
            if (j > 1200) {
                this.w++;
                this.v = (int) (((long) this.v) + j);
            }
            TPReportParams.UserSeekTotalParams userSeekTotalParams = this.k.getUserSeekTotalParams();
            userSeekTotalParams.seekTotalCountInt++;
            userSeekTotalParams.seekBufferingDurationInt = this.v;
            userSeekTotalParams.seekBufferingCountInt = this.w;
            if (userSeekTotalParams.seekOnceParamsList.size() < 20) {
                userSeekTotalParams.seekOnceParamsList.add(this.N);
                l lVar = new l();
                this.N.paramsToProperties(lVar);
                this.L.a(40, lVar);
            }
            this.N = null;
        }
    }

    private String l() {
        if (this.J == null) {
            return "0";
        }
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        int i2 = this.J.getResources().getDisplayMetrics().widthPixels;
        int i3 = this.J.getResources().getDisplayMetrics().heightPixels;
        c = i3 + ProxyConfig.MATCH_ALL_SCHEMES + i2;
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingStart");
        if (map != null) {
            this.y = true;
            if (!this.x) {
                if (this.O.a > 0) {
                    this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                    this.O.a = 0;
                }
                this.O.g = a(map, "stime", System.currentTimeMillis());
                this.M = this.k.createBufferingOnceParams();
                this.M.starTimeUnix = this.O.g;
                this.M.formatInt = a(map, "format", 0);
                this.M.formatInt = this.k.getCommonParams().mediaFormatInt;
                this.M.reasonInt = a(map, "reason", 0);
                TPReportParams.BufferingOnceParams bufferingOnceParams = this.M;
                bufferingOnceParams.lastEventInt = this.m;
                bufferingOnceParams.sceneInt = this.l;
                bufferingOnceParams.bufferingPresentTimeLong = a(map, "ptime", 0L) / 1000;
                this.M.urlString = a(map, ImagesContract.URL, "");
            }
        }
    }

    private int m() {
        NetworkInfo activeNetworkInfo;
        int b2;
        Context context = this.J;
        if (context == null) {
            return 0;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return 0;
            }
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                b2 = b(activeNetworkInfo.getSubtype());
            } else if (type == 1) {
                return 1;
            } else {
                if (type != 9) {
                    return 0;
                }
                b2 = 10;
            }
            return b2;
        } catch (Exception e2) {
            TPLogUtil.e("TPReportManager", e2);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingEnd");
        this.y = false;
        if (!this.O.o) {
            this.O.a = System.currentTimeMillis();
        }
        if (map != null) {
            long a2 = a(map, "etime", System.currentTimeMillis());
            int i2 = (int) (a2 - this.O.g);
            if (i2 > 1200 && !this.x) {
                this.O.e++;
                e eVar = this.O;
                eVar.h = a2;
                eVar.f += (int) (this.O.h - this.O.g);
                TPReportParams.BufferingOnceParams bufferingOnceParams = this.M;
                if (bufferingOnceParams != null) {
                    bufferingOnceParams.endTimeUnix = a(map, "etime", 0L);
                    this.M.errCodeString = this.A;
                    TPReportParams.BufferingTotalParams bufferingTotalParams = this.k.getBufferingTotalParams();
                    bufferingTotalParams.bufferingCountInt++;
                    bufferingTotalParams.bufferingDurationInt += i2;
                    if (bufferingTotalParams.bufferingOnceParamsList.size() < 20) {
                        bufferingTotalParams.bufferingOnceParamsList.add(this.M);
                        l lVar = new l();
                        this.M.paramsToProperties(lVar);
                        this.L.a(35, lVar);
                    }
                    this.M = null;
                }
            }
        }
    }

    private int n() {
        UiModeManager uiModeManager = (UiModeManager) this.J.getSystemService("uimode");
        if (uiModeManager == null) {
            return 2;
        }
        if (uiModeManager.getCurrentModeType() == 4) {
            return 9;
        }
        return (this.J.getResources().getConfiguration().screenLayout & 15) >= 3 ? 5 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayComplete");
        if (map != null) {
            map.put("reason", 0);
            q(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerReset");
        if (map != null) {
            map.put("reason", 1);
            q(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerRelease");
        if (map != null) {
            map.put("reason", 1);
            q(map);
        }
    }

    private void q(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayEnd");
        if (map != null && !this.n) {
            this.n = true;
            if (this.K != 1 && this.p) {
                d(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
            }
            if (this.y) {
                m(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
            }
            if (this.x) {
                k(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
            }
            if (this.O.a > 0) {
                this.O.b += (int) (System.currentTimeMillis() - this.O.a);
                this.O.a = 0;
            }
            this.x = false;
            l lVar = new l();
            this.k.getBufferingTotalParams().paramsToProperties(lVar);
            this.k.getBufferingTotalParams().reset();
            this.k.getUserSeekTotalParams().paramsToProperties(lVar);
            this.k.getUserSeekTotalParams().reset();
            TPReportParams.PlayDoneParams playDoneParams = this.k.getPlayDoneParams();
            playDoneParams.endTimeUnix = a(map, "etime", System.currentTimeMillis());
            playDoneParams.reasonInt = a(map, "reason", 0);
            playDoneParams.errCodeString = this.A;
            if (this.r > 0) {
                this.s += playDoneParams.endTimeUnix - this.r;
                this.r = 0;
            }
            playDoneParams.playDurationFloat = ((float) this.s) / 1000.0f;
            playDoneParams.paramsToProperties(lVar);
            this.L.a(50, lVar);
            this.A = "0";
            this.k.resetAllParam();
            g();
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(Map<String, Object> map) {
        if (map != null) {
            this.l = a(map, "scene", 1.0f) != 1.0f ? 2 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onGetCdn");
        if (map != null) {
            l lVar = new l();
            TPReportParams.GetCdnUrlParams getCdnParams = this.k.getGetCdnParams();
            getCdnParams.proxyIpString = a(map, "ip", "");
            getCdnParams.starTimeUnix = a(map, "stime", 0L);
            getCdnParams.endTimeUnix = a(map, "etime", 0L);
            getCdnParams.errCodeString = a(map, Constant.PARAM_ERROR_CODE, "0");
            getCdnParams.paramsToProperties(lVar);
            this.L.a(15, lVar);
            if (!TextUtils.isEmpty(getCdnParams.errCodeString) && !getCdnParams.errCodeString.equals("0") && !getCdnParams.errCodeString.equals("0.0")) {
                this.A = getCdnParams.errCodeString;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "on302Redirect");
        if (map != null) {
            l lVar = new l();
            TPReportParams.RedirectParams redirectParams = this.k.getRedirectParams();
            redirectParams.cdnTypeInt = a(map, "vt", 0);
            redirectParams.redirectCountInt = a(map, "t302", 0);
            redirectParams.redirectedUrlString = a(map, ImagesContract.URL, "");
            redirectParams.starTimeUnix = a(map, "stime", 0L);
            redirectParams.endTimeUnix = a(map, "etime", 0L);
            redirectParams.errCodeString = a(map, Constant.PARAM_ERROR_CODE, "0");
            redirectParams.paramsToProperties(lVar);
            this.L.a(34, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Map<String, Object> map) {
        if (map != null) {
            this.D = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
            this.A = a(map, Constant.PARAM_ERROR_CODE, "0");
            TPDefaultReportInfo tPDefaultReportInfo = this.j;
            if (tPDefaultReportInfo != null) {
                this.K = tPDefaultReportInfo.getPlayType();
            }
            if (this.K == 1) {
                this.L.a(150, new l());
                return;
            }
            map.put("reason", 3);
            this.n = false;
            q(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onLoadSubtitle");
        if (map != null) {
            this.O.w.add(new f(a(map, "name", ""), a(map, ImagesContract.URL, "")));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrack");
        if (map != null && this.O.w.size() != 0 && a(map, "tracktype", 0) == 3) {
            this.q = true;
            this.O.m = true;
            TPReportParams.LoadSubtitleParams loadSubtitleParams = this.k.getLoadSubtitleParams();
            loadSubtitleParams.starTimeUnix = a(map, "stime", 0L);
            TPDefaultReportInfo tPDefaultReportInfo = this.j;
            if (tPDefaultReportInfo != null) {
                loadSubtitleParams.cdnTypeInt = tPDefaultReportInfo.subtitleCdnType;
                loadSubtitleParams.cgiUrlIndex = this.j.subtitleUrlIndex;
            }
            long a2 = a(map, "opaque", -1L);
            String a3 = a(map, "name", "");
            Iterator<f> it = this.O.w.iterator();
            while (it.hasNext()) {
                f next = it.next();
                if (!TextUtils.isEmpty(a3) && next.a.equals(a3)) {
                    loadSubtitleParams.subtitleUrlString = next.b;
                    next.c = a2;
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrackDone");
        if (this.q && map != null && this.O.w.size() != 0) {
            long a2 = a(map, "opaque", -1L);
            if (a2 != -1) {
                Iterator<f> it = this.O.w.iterator();
                while (it.hasNext()) {
                    if (it.next().c == a2) {
                        TPReportParams.LoadSubtitleParams loadSubtitleParams = this.k.getLoadSubtitleParams();
                        loadSubtitleParams.endTimeUnix = a(map, "etime", 0L);
                        loadSubtitleParams.errCodeString = a(map, Constant.PARAM_ERROR_CODE, "0");
                        loadSubtitleParams.bufferingDurationInt = (int) (loadSubtitleParams.endTimeUnix - loadSubtitleParams.starTimeUnix);
                        l lVar = new l();
                        loadSubtitleParams.paramsToProperties(lVar);
                        this.L.a(33, lVar);
                        this.q = false;
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDef");
        if (map != null) {
            this.O.q = a(map, "switch", "");
            this.O.o = true;
            if (this.K == 1) {
                this.f.removeMessages(3000);
                e();
                e eVar = this.O;
                eVar.c = 0;
                eVar.d = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDefEnd");
        if (map != null) {
            this.O.q = a(map, "switch", "");
            this.O.o = false;
            if (this.K == 1) {
                this.L.a(30, new l());
                this.f.removeMessages(3000);
                this.f.sendEmptyMessageDelayed(3000, 60000);
                this.O.a = System.currentTimeMillis();
            }
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a() {
        c();
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a(int i2, int i3, int i4, String str, Object obj) {
        int i5;
        switch (i2) {
            case 100:
                i5 = TPErrorCode.TP_ERROR_TYPE_UNKONW;
                break;
            case 101:
                i5 = 1000;
                break;
            case 102:
                i5 = 1001;
                break;
            case 103:
                i5 = 1002;
                break;
            case 104:
                i5 = 1003;
                break;
            case 105:
                i5 = 1012;
                break;
            case 106:
                i5 = 1004;
                break;
            case 107:
                i5 = 1005;
                break;
            case 108:
                i5 = 1006;
                break;
            case 109:
                i5 = 1007;
                break;
            case 110:
                i5 = 1008;
                break;
            case 111:
                i5 = 1009;
                break;
            case 112:
                i5 = 1010;
                break;
            case 113:
                i5 = 1011;
                break;
            case 114:
                i5 = 1013;
                break;
            case 115:
                i5 = 1014;
                break;
            case 116:
                i5 = 1015;
                break;
            case 117:
                i5 = 1016;
                break;
            case 118:
                i5 = 2002;
                break;
            case 119:
                i5 = 1019;
                break;
            case 120:
                i5 = 1020;
                break;
            case 121:
                i5 = 1021;
                break;
            case 122:
                i5 = 2004;
                break;
            case 123:
                i5 = 2005;
                break;
            case 124:
                i5 = 1022;
                break;
            default:
                switch (i2) {
                    case 200:
                        i5 = 1017;
                        break;
                    case 201:
                        i5 = 1018;
                        break;
                    case 202:
                        i5 = 1023;
                        break;
                    default:
                        return;
                }
        }
        this.f.obtainMessage(i5, obj).sendToTarget();
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void b() {
        d();
    }

    @Override // com.tencent.thumbplayer.api.report.ITPBusinessReportManager
    public void reportEvent(int i2, Map<String, Object> map) {
    }

    @Override // com.tencent.thumbplayer.api.report.ITPBusinessReportManager
    public void setReportInfoGetter(TPDefaultReportInfo tPDefaultReportInfo) {
        this.j = tPDefaultReportInfo;
    }
}
