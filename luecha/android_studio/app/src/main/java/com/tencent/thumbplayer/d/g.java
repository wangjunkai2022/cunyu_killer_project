package com.tencent.thumbplayer.d;

import android.content.Context;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.i;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class g implements f.a, i.b {
    private int a;
    private String b;
    private int c;
    private ConcurrentHashMap<Integer, b> d;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        private static g a = new g();
    }

    private g() {
        this.a = 0;
        this.b = "";
        this.c = 0;
        if (this.d == null) {
            this.d = new ConcurrentHashMap<>();
        }
        f.a(this);
        i.a().a(this);
    }

    private static TPDLProxyInitParam a(Context context) {
        return new TPDLProxyInitParam(TPPlayerConfig.getPlatform(), TPPlayerConfig.getAppVersionName(context), TPPlayerConfig.getGuid(), TPPlayerConfig.getProxyCacheDir(), TPPlayerConfig.getProxyDataDir(), TPPlayerConfig.getProxyConfigDir());
    }

    public static g a() {
        return a.a;
    }

    private void a(String str, int i) {
        this.b = str;
        this.c = i;
        for (b bVar : this.d.values()) {
            bVar.a().setUserData("carrier_pesudo_code", str);
            bVar.a().setUserData("carrier_pesudo_state", Integer.valueOf(i));
        }
    }

    private String b(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("EnableReport", z);
            return jSONObject.toString();
        } catch (JSONException e) {
            TPLogUtil.e("TPProxyGlobalManager", e);
            return "";
        }
    }

    private void b(int i) {
        for (b bVar : this.d.values()) {
            bVar.a(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a5 A[Catch: all -> 0x00cf, TryCatch #0 {all -> 0x00cf, blocks: (B:11:0x0025, B:13:0x0037, B:15:0x004c, B:17:0x005d, B:18:0x0060, B:21:0x0067, B:24:0x0073, B:25:0x0077, B:27:0x00a5, B:28:0x00ac), top: B:33:0x0025 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public com.tencent.thumbplayer.d.b a(int r8) {
        /*
            r7 = this;
            java.lang.String r0 = "TPProxyGlobalManager"
            r1 = 0
            if (r8 >= 0) goto L_0x0006
            return r1
        L_0x0006:
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.d.b> r2 = r7.d
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            boolean r2 = r2.containsKey(r3)
            if (r2 == 0) goto L_0x001f
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.d.b> r0 = r7.d
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Object r8 = r0.get(r8)
            com.tencent.thumbplayer.d.b r8 = (com.tencent.thumbplayer.d.b) r8
            return r8
        L_0x001f:
            com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy r2 = com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory.getTPDownloadProxy(r8)
            if (r2 == 0) goto L_0x00e4
            android.content.Context r3 = com.tencent.thumbplayer.api.TPPlayerMgr.getAppContext()     // Catch: all -> 0x00cf
            android.content.Context r4 = com.tencent.thumbplayer.api.TPPlayerMgr.getAppContext()     // Catch: all -> 0x00cf
            com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam r4 = a(r4)     // Catch: all -> 0x00cf
            int r3 = r2.init(r3, r4)     // Catch: all -> 0x00cf
            if (r3 >= 0) goto L_0x004c
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: all -> 0x00cf
            r8.<init>()     // Catch: all -> 0x00cf
            java.lang.String r3 = "downloadProxy init failed with status:"
            r8.append(r3)     // Catch: all -> 0x00cf
            r8.append(r2)     // Catch: all -> 0x00cf
            java.lang.String r8 = r8.toString()     // Catch: all -> 0x00cf
            com.tencent.thumbplayer.utils.TPLogUtil.i(r0, r8)     // Catch: all -> 0x00cf
            return r1
        L_0x004c:
            com.tencent.thumbplayer.d.g$1 r3 = new com.tencent.thumbplayer.d.g$1     // Catch: all -> 0x00cf
            r3.<init>()     // Catch: all -> 0x00cf
            r2.setLogListener(r3)     // Catch: all -> 0x00cf
            int r3 = com.tencent.thumbplayer.utils.i.c()     // Catch: all -> 0x00cf
            r4 = 10
            r5 = 1
            if (r3 != r5) goto L_0x0064
            r2.pushEvent(r5)     // Catch: all -> 0x00cf
        L_0x0060:
            r2.pushEvent(r4)     // Catch: all -> 0x00cf
            goto L_0x0077
        L_0x0064:
            r5 = 2
            if (r3 != r5) goto L_0x0070
            r2.pushEvent(r5)     // Catch: all -> 0x00cf
            r3 = 9
            r2.pushEvent(r3)     // Catch: all -> 0x00cf
            goto L_0x0077
        L_0x0070:
            r6 = 3
            if (r3 != r6) goto L_0x0077
            r2.pushEvent(r5)     // Catch: all -> 0x00cf
            goto L_0x0060
        L_0x0077:
            int r3 = r7.a     // Catch: all -> 0x00cf
            r2.pushEvent(r3)     // Catch: all -> 0x00cf
            java.lang.String r3 = "carrier_pesudo_code"
            java.lang.String r4 = r7.b     // Catch: all -> 0x00cf
            r2.setUserData(r3, r4)     // Catch: all -> 0x00cf
            java.lang.String r3 = "carrier_pesudo_state"
            int r4 = r7.c     // Catch: all -> 0x00cf
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: all -> 0x00cf
            r2.setUserData(r3, r4)     // Catch: all -> 0x00cf
            java.lang.String r3 = "proxy_config"
            boolean r4 = com.tencent.thumbplayer.config.TPPlayerConfig.isDataReportEnable()     // Catch: all -> 0x00cf
            java.lang.String r4 = r7.b(r4)     // Catch: all -> 0x00cf
            r2.setUserData(r3, r4)     // Catch: all -> 0x00cf
            long r3 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: all -> 0x00cf
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L_0x00ac
            long r3 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: all -> 0x00cf
            r2.setMaxStorageSizeMB(r3)     // Catch: all -> 0x00cf
        L_0x00ac:
            com.tencent.thumbplayer.d.h r3 = new com.tencent.thumbplayer.d.h     // Catch: all -> 0x00cf
            r3.<init>(r2)     // Catch: all -> 0x00cf
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.d.b> r2 = r7.d     // Catch: all -> 0x00cf
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)     // Catch: all -> 0x00cf
            r2.put(r4, r3)     // Catch: all -> 0x00cf
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: all -> 0x00cf
            r2.<init>()     // Catch: all -> 0x00cf
            java.lang.String r4 = "getPlayerProxy, init proxy succeeded, serviceType:"
            r2.append(r4)     // Catch: all -> 0x00cf
            r2.append(r8)     // Catch: all -> 0x00cf
            java.lang.String r8 = r2.toString()     // Catch: all -> 0x00cf
            com.tencent.thumbplayer.utils.TPLogUtil.i(r0, r8)     // Catch: all -> 0x00cf
            return r3
        L_0x00cf:
            r8 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "init proxy failed:"
            r2.append(r3)
            r2.append(r8)
            java.lang.String r8 = r2.toString()
            com.tencent.thumbplayer.utils.TPLogUtil.e(r0, r8)
        L_0x00e4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.d.g.a(int):com.tencent.thumbplayer.d.b");
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        int i5 = 10;
        int i6 = 1;
        if (i2 != 1) {
            i6 = 2;
            if (i2 == 2) {
                b(2);
                i5 = 9;
                b(i5);
            } else if (i2 != 3) {
                return;
            }
        }
        b(i6);
        b(i5);
    }

    @Override // com.tencent.thumbplayer.utils.f.a
    public void a(int i, int i2, int i3, Object obj) {
        int i4;
        TPLogUtil.i("TPProxyGlobalManager", "onEvent eventId: " + i + ", arg1: " + i2 + ", arg2: " + i3 + ", object" + obj);
        switch (i) {
            case 100001:
                i4 = 13;
                break;
            case 100002:
                i4 = 14;
                break;
            case 100003:
                a((String) obj, i2);
                return;
            default:
                return;
        }
        this.a = i4;
        b(i4);
    }

    public void a(long j) {
        for (b bVar : this.d.values()) {
            ITPDownloadProxy a2 = bVar.a();
            if (a2 != null && j > 0) {
                a2.setMaxStorageSizeMB(j);
            }
        }
    }

    public void a(boolean z) {
        for (b bVar : this.d.values()) {
            bVar.a().setUserData("proxy_config", b(z));
        }
    }
}
