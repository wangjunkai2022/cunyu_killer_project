package com.tencent.liteav.network;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.network.c;
import com.tencent.liteav.network.m;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCPlayInfoProtocolV4.java */
/* loaded from: classes5.dex */
public class g {
    private final String a = "https://playvideo.qcloud.com/getplayinfo/v4";
    private Handler b = new Handler(Looper.getMainLooper());
    private com.tencent.rtmp.b c;
    private f d;
    private m e;
    private String f;
    private String g;
    private String h;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCPlayInfoProtocolV4.java */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, String str);

        void a(g gVar, com.tencent.rtmp.b bVar);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCPlayInfoProtocolV4.java */
    /* loaded from: classes5.dex */
    public static class b {
        public String a;
        public int b;
        public int c;
        public String d;
    }

    public g(com.tencent.rtmp.b bVar) {
        this.c = bVar;
    }

    public void a(final a aVar) {
        if (this.c != null) {
            c.a().a(l(), new c.b() { // from class: com.tencent.liteav.network.g.1
                @Override // com.tencent.liteav.network.c.b
                public void a(String str) {
                    if (g.this.a(str, aVar)) {
                        g.this.a(new Runnable() { // from class: com.tencent.liteav.network.g.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a(g.this, g.this.c);
                            }
                        });
                    }
                }

                @Override // com.tencent.liteav.network.c.b
                public void a() {
                    g.this.a(new Runnable() { // from class: com.tencent.liteav.network.g.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (aVar != null) {
                                aVar.a(-1, "http request error.");
                            }
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            TXCLog.e("TXCPlayInfoProtocolV4", "parseJson err, content is empty!");
            a(new Runnable() { // from class: com.tencent.liteav.network.g.2
                @Override // java.lang.Runnable
                public void run() {
                    aVar.a(-1, "request return error!");
                }
            });
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            final int i = jSONObject.getInt("code");
            final String optString = jSONObject.optString("message");
            String optString2 = jSONObject.optString("warning");
            this.f = jSONObject.optString(com.umeng.analytics.pro.c.R);
            TXCLog.i("TXCPlayInfoProtocolV4", "context : " + this.f);
            TXCLog.i("TXCPlayInfoProtocolV4", "message: " + optString);
            TXCLog.i("TXCPlayInfoProtocolV4", "warning: " + optString2);
            if (i == 0) {
                int i2 = jSONObject.getInt("version");
                TXCLog.i("TXCPlayInfoProtocolV4", "version: " + i2);
                if (i2 == 2) {
                    this.g = null;
                    this.h = null;
                    this.e = new m(jSONObject);
                    return true;
                } else if (i2 != 4) {
                    return true;
                } else {
                    this.d = new f(jSONObject);
                    return true;
                }
            } else {
                a(new Runnable() { // from class: com.tencent.liteav.network.g.3
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a(i, optString);
                    }
                });
                return false;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            TXCLog.e("TXCPlayInfoProtocolV4", "parseJson err");
            return true;
        }
    }

    private String l() {
        String format = String.format("%s/%d/%s", "https://playvideo.qcloud.com/getplayinfo/v4", Integer.valueOf(this.c.a()), this.c.b());
        String str = null;
        if (this.c.c() != null) {
            str = a((String) null, this.c.c(), (String) null);
        }
        if (!TextUtils.isEmpty(str)) {
            format = format + "?" + str;
        }
        TXCLog.d("TXCPlayInfoProtocolV4", "request url: " + format);
        return format;
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append("pcfg=" + str + "&");
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append("psign=" + str2 + "&");
            this.g = TXCHLSEncoder.a();
            this.h = TXCHLSEncoder.a();
            TXCLog.i("TXCPlayInfoProtocolV4", "V4 protocol send request fileId : " + this.c.b() + " | overlayKey: " + this.g + " | overlayIv: " + this.h);
            String a2 = TXCHLSEncoder.a(this.g);
            String a3 = TXCHLSEncoder.a(this.h);
            String str4 = (TextUtils.isEmpty(a2) || TextUtils.isEmpty(a3)) ? "" : "1";
            if (!TextUtils.isEmpty(str4)) {
                sb.append("cipheredOverlayKey=");
                sb.append(a2);
                sb.append("&");
                sb.append("cipheredOverlayIv=");
                sb.append(a3);
                sb.append("&");
                sb.append("keyId=");
                sb.append(str4);
                sb.append("&");
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append("context=" + str3 + "&");
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public String a() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.a();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.a();
        }
        return null;
    }

    public String b() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.e();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.d();
        }
        return null;
    }

    public String c() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.b();
        }
        return null;
    }

    public String d() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.c();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.h();
        }
        return null;
    }

    public String e() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.d();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.i();
        }
        return null;
    }

    public int f() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.f();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.b();
        }
        return -1;
    }

    public int g() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.g();
        }
        m mVar = this.e;
        if (mVar != null) {
            return mVar.c();
        }
        return -1;
    }

    public String h() {
        return this.g;
    }

    public String i() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        if (Looper.myLooper() == this.b.getLooper()) {
            runnable.run();
        } else {
            this.b.post(runnable);
        }
    }

    public List<b> j() {
        f fVar = this.d;
        if (fVar != null) {
            return fVar.h();
        }
        m mVar = this.e;
        if (mVar == null) {
            return null;
        }
        List<m.a> k = mVar.k();
        List<n> e = this.e.e();
        if (k == null || k.size() <= 0 || e == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(k.size());
        for (m.a aVar : k) {
            b bVar = new b();
            bVar.a = aVar.b;
            List<Integer> list = aVar.c;
            if (list != null) {
                Iterator<n> it = e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        n next = it.next();
                        if (list.contains(Integer.valueOf(next.i))) {
                            bVar.b = next.c;
                            bVar.c = next.b;
                            if (bVar.b > 0) {
                                bVar.d = "video";
                            }
                            arrayList.add(bVar);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public String k() {
        f fVar = this.d;
        return fVar != null ? fVar.i() : "";
    }
}
