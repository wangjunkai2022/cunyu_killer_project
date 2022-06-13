package com.tencent.liteav.network;

import android.content.Context;
import android.os.Handler;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import java.util.Iterator;
import java.util.Vector;

/* compiled from: TXRTMPAccUrlFetcher.java */
/* loaded from: classes2.dex */
public class o {
    private final int a = 5;
    private final int b = 2;
    private String c = "";
    private String d = "";
    private int e = 0;
    private String f = "";
    private Handler g;

    /* compiled from: TXRTMPAccUrlFetcher.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, String str, Vector<h> vector);
    }

    public o(Context context) {
        if (context != null) {
            this.g = new Handler(context.getMainLooper());
        }
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.d;
    }

    public int c() {
        return this.e;
    }

    public String d() {
        return this.f;
    }

    public int a(String str, int i, final a aVar) {
        this.c = "";
        this.d = "";
        this.e = 0;
        this.f = "";
        if (str == null || str.isEmpty()) {
            TXCLog.i("TXRTMPAccUrlFetcher", "getAccerateStreamPlayUrl input playUrl is empty");
            return -1;
        }
        final String streamIDByStreamUrl = TXCCommonUtil.getStreamIDByStreamUrl(str);
        if (streamIDByStreamUrl == null || streamIDByStreamUrl.isEmpty()) {
            TXCLog.i("TXRTMPAccUrlFetcher", "getAccerateStreamPlayUrl streamID is empty");
            return -2;
        }
        final String a2 = a("bizid", str);
        final String a3 = a("txSecret", str);
        final String a4 = a("txTime", str);
        if (!a(a2, a4, a3)) {
            this.e = -1;
            this.f = "invalid signature";
            return -3;
        }
        a(streamIDByStreamUrl, a2, a3, a4, i, new a() { // from class: com.tencent.liteav.network.o.1
            @Override // com.tencent.liteav.network.o.a
            public void a(int i2, String str2, Vector<h> vector) {
                o.this.c = streamIDByStreamUrl;
                o.this.d = a2;
                o.this.e = i2;
                o.this.f = str2;
                if (vector == null || vector.isEmpty()) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(i2, str2, null);
                        return;
                    }
                    return;
                }
                Vector<h> vector2 = new Vector<>();
                Iterator<h> it = vector.iterator();
                while (it.hasNext()) {
                    h next = it.next();
                    String str3 = next.a;
                    if (str3.indexOf("?") != -1) {
                        str3 = str3.substring(0, str3.indexOf("?"));
                    }
                    vector2.add(new h(str3 + "?txSecret=" + a3 + "&txTime=" + a4 + "&bizid=" + a2, next.b));
                }
                if (aVar != null) {
                    Iterator<h> it2 = vector2.iterator();
                    while (it2.hasNext()) {
                        h next2 = it2.next();
                        TXCLog.e("TXRTMPAccUrlFetcher", "accurl = " + next2.a + " quic = " + next2.b);
                    }
                    aVar.a(i2, str2, vector2);
                }
            }
        });
        return 0;
    }

    private boolean a(String str, String str2, String str3) {
        return str != null && !str.isEmpty() && str2 != null && !str2.isEmpty() && str3 != null && !str3.isEmpty();
    }

    private void a(final String str, final String str2, final String str3, final String str4, final int i, final a aVar) {
        new Thread("getRTMPAccUrl") { // from class: com.tencent.liteav.network.o.2
            /* JADX WARN: Removed duplicated region for block: B:62:0x01dd A[Catch: Exception -> 0x0235, TryCatch #3 {Exception -> 0x0235, blocks: (B:47:0x0182, B:49:0x019f, B:52:0x01a9, B:53:0x01b2, B:57:0x01c2, B:59:0x01cf, B:60:0x01d8, B:62:0x01dd, B:64:0x01e3, B:66:0x01f2, B:68:0x01f7, B:70:0x01fd, B:72:0x020c, B:73:0x0210, B:75:0x0216, B:76:0x0220, B:78:0x0226), top: B:98:0x0182 }] */
            /* JADX WARN: Removed duplicated region for block: B:66:0x01f2 A[Catch: Exception -> 0x0235, TryCatch #3 {Exception -> 0x0235, blocks: (B:47:0x0182, B:49:0x019f, B:52:0x01a9, B:53:0x01b2, B:57:0x01c2, B:59:0x01cf, B:60:0x01d8, B:62:0x01dd, B:64:0x01e3, B:66:0x01f2, B:68:0x01f7, B:70:0x01fd, B:72:0x020c, B:73:0x0210, B:75:0x0216, B:76:0x0220, B:78:0x0226), top: B:98:0x0182 }] */
            @Override // java.lang.Thread, java.lang.Runnable
            /* Code decompiled incorrectly, please refer to instructions dump */
            public void run() {
                /*
                // Method dump skipped, instructions count: 636
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.network.o.AnonymousClass2.run():void");
            }
        }.start();
    }

    private String a(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        String[] split = str2.split("[?&]");
        for (String str3 : split) {
            if (str3.indexOf("=") != -1) {
                String[] split2 = str3.split("[=]");
                if (split2.length == 2) {
                    String str4 = split2[0];
                    String str5 = split2[1];
                    if (str4 != null && str4.toLowerCase().equalsIgnoreCase(lowerCase)) {
                        return str5;
                    }
                } else {
                    continue;
                }
            }
        }
        return "";
    }
}
