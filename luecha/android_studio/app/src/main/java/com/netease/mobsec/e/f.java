package com.netease.mobsec.e;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.netease.mobsec.AbstractNetClient;
import com.netease.mobsec.GetTokenCallback;
import com.netease.mobsec.InitCallback;
import com.netease.mobsec.SecException;
import com.umeng.analytics.pro.ai;
import java.net.URLEncoder;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class f {
    private static final Handler A = new Handler(Looper.getMainLooper());
    private static final CopyOnWriteArrayList<i> B = new CopyOnWriteArrayList<>();
    private static f l = null;
    private static short m = 0;
    private static final String n = "200";
    private static final String o = "A4.4.5";
    private static volatile String p = "";
    private static String q = "";
    private static String r = null;
    private static volatile String s = "";
    private static boolean t = true;
    private static boolean u = true;
    private static com.netease.mobsec.c.c v = null;
    private static d w = null;
    private static b x = null;
    private static final long y = 86400000;
    private static AbstractNetClient z;
    com.netease.mobsec.c.e.b e;
    private String a = "";
    private String b = "";
    private int c = 5;
    private String d = "";
    private boolean f = false;
    private volatile int g = 0;
    private String h = "";
    private String i = "";
    private String j = "";
    private boolean k = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        final /* synthetic */ GetTokenCallback a;
        final /* synthetic */ String b;
        final /* synthetic */ long c;

        /* renamed from: com.netease.mobsec.e.f$a$a */
        /* loaded from: classes5.dex */
        class RunnableC0004a implements Runnable {
            RunnableC0004a() {
                a.this = r1;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.a.onResult(j.a, j.f, aVar.b);
            }
        }

        a(GetTokenCallback getTokenCallback, String str, long j) {
            f.this = r1;
            this.a = getTokenCallback;
            this.b = str;
            this.c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.A.postDelayed(new RunnableC0004a(), this.c);
        }
    }

    /* loaded from: classes5.dex */
    public class b implements Runnable {
        final /* synthetic */ InitCallback a;

        /* loaded from: classes5.dex */
        class a implements Runnable {
            final /* synthetic */ a a;

            a(a aVar) {
                b.this = r1;
                this.a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                int i;
                InitCallback initCallback;
                a aVar = this.a;
                if (aVar == null) {
                    InitCallback initCallback2 = b.this.a;
                    if (initCallback2 != null) {
                        initCallback2.onResult(j.a, j.f);
                        return;
                    }
                    return;
                }
                if (!TextUtils.isEmpty(aVar.b())) {
                    initCallback = b.this.a;
                    if (initCallback != null) {
                        i = this.a.a();
                        str = this.a.b();
                    } else {
                        return;
                    }
                } else {
                    initCallback = b.this.a;
                    if (initCallback != null) {
                        i = j.a;
                        str = j.f;
                    } else {
                        return;
                    }
                }
                initCallback.onResult(i, str);
            }
        }

        b(InitCallback initCallback) {
            f.this = r1;
            this.a = initCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.A.post(new a(f.this.l()));
        }
    }

    /* loaded from: classes5.dex */
    public class c extends Thread {
        private final String a;
        private final String b;
        private final String c;

        public c(String str, String str2, String str3) {
            f.this = r1;
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        private String a(int i, String str, String str2) {
            String str3;
            if (f.this.f) {
                str3 = e.a() + "/v2/collect?";
            } else {
                str3 = "https://ac.dun.163yun.com/v2/collect?";
            }
            String str4 = Build.VERSION.RELEASE;
            String str5 = Build.MODEL;
            String str6 = (((((((((str3 + "pn=" + URLEncoder.encode(f.this.d)) + "&type=" + URLEncoder.encode(this.a)) + "&target=" + URLEncoder.encode(this.b)) + "&message=" + URLEncoder.encode(this.c)) + "&ip=" + URLEncoder.encode(str)) + "&dns=" + URLEncoder.encode(str2)) + "&requestCount=" + i) + "&osv=" + URLEncoder.encode(str4)) + "&model=" + URLEncoder.encode(str5)) + "&sdkv=" + URLEncoder.encode("A4.4.5");
            if (!f.p.isEmpty()) {
                str6 = str6 + "&bid=" + URLEncoder.encode(f.p);
            }
            String u = f.x.u();
            if (!u.isEmpty()) {
                str6 = str6 + "&tid=" + URLEncoder.encode(u);
            }
            if (f.s.isEmpty()) {
                return str6;
            }
            return str6 + "&tid2=" + URLEncoder.encode(f.s);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String[] split = e.b("http://nstool.netease.com/info.js", 3000).split("\n");
                String str = "";
                String str2 = str;
                for (String str3 : split) {
                    if (str3.contains("var ip =")) {
                        str = str3.substring(str3.indexOf("'") + 1, str3.lastIndexOf("'"));
                    }
                    if (str3.contains("var dns =")) {
                        str2 = str3.substring(str3.indexOf("'") + 1, str3.lastIndexOf("'"));
                    }
                }
                String b = e.b(a(1, str, str2), 3000);
                if (b.isEmpty() || new JSONObject(b).optInt("code", -1) != 200) {
                    e.b(a(2, str, str2), 3000);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public class d extends Thread {
        public d() {
            f.this = r1;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                f.this.a();
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public class e implements Callable<Integer> {
        private final boolean a;

        public e(boolean z) {
            f.this = r1;
            this.a = z;
        }

        /* renamed from: a */
        public Integer call() {
            int i;
            try {
            } catch (Exception e) {
                new c("4", "DeviceTask", e.getMessage()).start();
            }
            if (this.a) {
                try {
                    i = f.this.a();
                } catch (Exception unused) {
                }
                return Integer.valueOf(i);
            }
            i = 0;
            return Integer.valueOf(i);
        }
    }

    /* renamed from: com.netease.mobsec.e.f$f */
    /* loaded from: classes5.dex */
    public class CallableC0005f implements Callable<a> {
        private final boolean a;

        public CallableC0005f(boolean z) {
            f.this = r1;
            this.a = z;
        }

        /* renamed from: a */
        public a call() {
            try {
                if (this.a) {
                    try {
                        f.this.a();
                    } catch (Exception unused) {
                    }
                }
                return f.this.p();
            } catch (Exception e) {
                new c("4", "DynamicTask", e.getMessage()).start();
                return null;
            }
        }
    }

    /* loaded from: classes5.dex */
    public class g implements Callable<a> {
        public g() {
            f.this = r1;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0059 A[Catch: Exception -> 0x0060, TRY_LEAVE, TryCatch #0 {Exception -> 0x0060, blocks: (B:17:0x004c, B:19:0x0051, B:21:0x0059), top: B:30:0x004c }] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
        /* renamed from: a */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public com.netease.mobsec.e.a call() {
            /*
                r7 = this;
                java.lang.String r0 = "pn=%s"
                r1 = 1
                r2 = 0
                java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: Exception -> 0x005f
                com.netease.mobsec.e.f r4 = com.netease.mobsec.e.f.this     // Catch: Exception -> 0x005f
                java.lang.String r4 = com.netease.mobsec.e.f.b(r4)     // Catch: Exception -> 0x005f
                r3[r2] = r4     // Catch: Exception -> 0x005f
                java.lang.String r0 = java.lang.String.format(r0, r3)     // Catch: Exception -> 0x005f
                r3 = 3000(0xbb8, float:4.204E-42)
                org.json.JSONObject r4 = com.netease.mobsec.e.e.a(r0, r3)     // Catch: Exception -> 0x005f
                java.lang.String r5 = "msg"
                if (r4 == 0) goto L_0x003e
                com.netease.mobsec.e.b r6 = com.netease.mobsec.e.f.g()     // Catch: Exception -> 0x005f
                int r6 = r6.a(r4)     // Catch: Exception -> 0x005f
                r4.optString(r5)     // Catch: Exception -> 0x003c
                r4 = 420(0x1a4, float:5.89E-43)
                if (r6 != r4) goto L_0x003a
                org.json.JSONObject r0 = com.netease.mobsec.e.e.a(r0, r3)     // Catch: Exception -> 0x003c
                if (r0 == 0) goto L_0x003a
                com.netease.mobsec.e.b r3 = com.netease.mobsec.e.f.g()     // Catch: Exception -> 0x003c
                int r3 = r3.a(r0)     // Catch: Exception -> 0x003c
                goto L_0x004c
            L_0x003a:
                r3 = r6
                goto L_0x0051
            L_0x003c:
                r3 = r6
                goto L_0x0060
            L_0x003e:
                org.json.JSONObject r0 = com.netease.mobsec.e.e.a(r0, r3)     // Catch: Exception -> 0x005f
                if (r0 == 0) goto L_0x0050
                com.netease.mobsec.e.b r3 = com.netease.mobsec.e.f.g()     // Catch: Exception -> 0x005f
                int r3 = r3.a(r0)     // Catch: Exception -> 0x005f
            L_0x004c:
                r0.optString(r5)     // Catch: Exception -> 0x0060
                goto L_0x0051
            L_0x0050:
                r3 = r2
            L_0x0051:
                com.netease.mobsec.e.f r0 = com.netease.mobsec.e.f.this     // Catch: Exception -> 0x0060
                boolean r0 = com.netease.mobsec.e.f.c(r0)     // Catch: Exception -> 0x0060
                if (r0 == 0) goto L_0x0060
                com.netease.mobsec.e.f r0 = com.netease.mobsec.e.f.this     // Catch: Exception -> 0x0060
                com.netease.mobsec.e.f.d(r0)     // Catch: Exception -> 0x0060
                goto L_0x0060
            L_0x005f:
                r3 = r2
            L_0x0060:
                r0 = 470(0x1d6, float:6.59E-43)
                if (r3 != r0) goto L_0x006e
                com.netease.mobsec.e.f r0 = com.netease.mobsec.e.f.this
                com.netease.mobsec.e.f.a(r0, r2)
                int r0 = com.netease.mobsec.e.j.b
                java.lang.String r1 = com.netease.mobsec.e.j.g
                goto L_0x0077
            L_0x006e:
                com.netease.mobsec.e.f r0 = com.netease.mobsec.e.f.this
                com.netease.mobsec.e.f.a(r0, r1)
                int r0 = com.netease.mobsec.e.j.a
                java.lang.String r1 = com.netease.mobsec.e.j.f
            L_0x0077:
                com.netease.mobsec.e.a r2 = new com.netease.mobsec.e.a
                r2.<init>(r0, r1)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsec.e.f.g.call():com.netease.mobsec.e.a");
        }
    }

    private f(Context context) {
        p = "";
        m = 0;
        if (context != null) {
            c(context);
        }
    }

    public int a() {
        String k;
        String str;
        JSONObject a2;
        int b2;
        JSONObject a3;
        int b3;
        try {
            k = k();
        } catch (Exception unused) {
            new c("4", "SendDeviceData", "error").start();
        }
        if (k != null && !k.isEmpty()) {
            if (this.f) {
                str = e.a() + "/v2/m/d";
            } else {
                str = x.m();
            }
            this.a = str;
            if (this.a.isEmpty()) {
                this.a = x.a("YhsHb\u000b3(Yr\u001fxrV?\u0000*4Ad_2dW|\u001ej5\u0017|\u001ex", "1\u001c\u00078\u0011");
            }
            int i = 3000;
            JSONObject a4 = e.a(this.a, k, 3000);
            if (this.g != 0) {
                i = this.g;
            }
            if (a4 != null) {
                int b4 = x.b(a4);
                if (b4 == 200) {
                    b();
                    return b4;
                } else if (b4 == 420 && (a3 = e.a(this.a, k(), i)) != null && (b3 = x.b(a3)) == 200) {
                    b();
                    return b3;
                }
            } else {
                String k2 = k();
                if (!(k2 == null || (a2 = e.a(this.a, k2, i)) == null || (b2 = x.b(a2)) != 200)) {
                    b();
                    return b2;
                }
            }
            return 0;
        }
        new c("4", "SendDeviceData", "getInifInfo error").start();
        return 0;
    }

    public static f a(Context context) {
        if (l == null) {
            synchronized (f.class) {
                if (l == null) {
                    l = new f(context);
                }
            }
        }
        return l;
    }

    private String a(String str, String str2) {
        return j.a(j.b((str + str2 + "mvcgwOjB5yIpKyKGbqbmp7w3PBjknDGx").getBytes()));
    }

    private String a(String str, String str2, String str3) {
        return j.a(j.b((str + str2 + str3 + "mvcgwOjB5yIpKyKGbqbmp7w3PBjknDGx").getBytes()));
    }

    private String a(String str, String str2, boolean z2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("r", this.c);
            jSONObject.put("d", str);
            jSONObject.put(ai.aA, str2);
            if (z2) {
                jSONObject.put(ai.aF, a("" + this.c, str));
            }
            return g.b(jSONObject.toString());
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private String a(String str, String str2, boolean z2, boolean z3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("r", this.c);
            jSONObject.put("d", str);
            jSONObject.put("b", str2);
            if (z2 || z3) {
                jSONObject.put(ai.aF, a("" + this.c, str, str2));
            }
            return g.b(jSONObject.toString());
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private void a(InitCallback initCallback) {
        new Thread(new b(initCallback)).start();
    }

    public static int b(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? 8 : 5;
    }

    private String b(String str, String str2, boolean z2) {
        boolean z3;
        if (str2.isEmpty()) {
            str2 = j.a();
            if (str2.isEmpty()) {
                str2 = o();
            }
            z3 = true;
        } else {
            z3 = false;
        }
        if (str.isEmpty()) {
            z3 = true;
        }
        return a(str, str2, z3, z2);
    }

    private void b() {
        x.a(x.f() + ((x.n() * 5) / 6000));
        b bVar = x;
        bVar.b(bVar.f());
    }

    private void c(Context context) {
        if (v == null) {
            v = com.netease.mobsec.c.c.a(context);
        }
        com.netease.mobsec.c.c cVar = v;
        if (cVar != null && this.e == null) {
            this.e = cVar.a();
        }
        if (w == null) {
            w = d.a(context);
        }
        if (x == null) {
            b bVar = new b(context);
            x = bVar;
            q = bVar.t();
        }
    }

    public boolean c() {
        boolean z2;
        try {
            long g2 = x.g();
            long f = g2 - x.f();
            boolean equals = x.u().equals("");
            boolean equals2 = x.a().equals("");
            boolean equals3 = x.c().equals("");
            long h = x.h();
            if (g2 >= x.f() && f >= 300 && h <= x.f()) {
                z2 = false;
                if (!equals && !equals2 && !z2 && !equals3) {
                    return false;
                }
                return x.l();
            }
            z2 = true;
            if (!equals) {
                return false;
            }
            return x.l();
        } catch (Exception e2) {
            new c("4", "WhetherSendDeviceDate", e2.getMessage()).start();
            return false;
        }
    }

    private String j() throws SecException {
        String str;
        String a2;
        String str2 = s;
        String l2 = Long.toString(x.q());
        short n2 = n();
        String b2 = j.b();
        String a3 = x.a();
        String valueOf = String.valueOf(u);
        try {
            if (u) {
                str = w.b();
                w.d();
            } else {
                str = "";
            }
            if (this.e == null) {
                return "";
            }
            String t2 = x.t();
            q = t2;
            String[] strArr = {"200", "A4.4.5", "", t2, Short.toString(n2), l2, b2, str2, a3, this.d, this.j, valueOf, str};
            synchronized (f.class) {
                a2 = this.e.a(strArr);
            }
            return a2;
        } catch (Exception unused) {
            new c("4", "getDynamicInfo", "error").start();
            throw new SecException(699);
        }
    }

    private String k() throws SecException {
        String b2;
        String l2 = Long.toString(x.q());
        short n2 = n();
        String b3 = j.b();
        String a2 = x.a();
        String valueOf = String.valueOf(t);
        try {
            if (this.e == null) {
                return "";
            }
            q = x.t();
            String[] strArr = {"200", "A4.4.5", "", s, b3, l2, Short.toString(n2), q, a2, this.d, this.j, this.h, this.i, valueOf};
            synchronized (f.class) {
                b2 = this.e.b(strArr);
            }
            return b2;
        } catch (Exception unused) {
            new c("4", "getInifInfo", "error").start();
            throw new SecException(699);
        }
    }

    public a l() {
        FutureTask futureTask = new FutureTask(new g());
        new Thread(futureTask).start();
        try {
            return (a) futureTask.get(800, TimeUnit.MILLISECONDS);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static AbstractNetClient m() {
        return z;
    }

    private short n() {
        if (m >= 65535) {
            m = 0;
        }
        short s2 = m;
        m = (short) (s2 + 1);
        return s2;
    }

    private String o() {
        if (r == null) {
            r = j.a();
        }
        return r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
        if (r4 != null) goto L_0x0073;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public com.netease.mobsec.e.a p() {
        /*
            r8 = this;
            java.lang.String r0 = "sendDynamic"
            java.lang.String r1 = "4"
            java.lang.String r2 = ""
            r3 = 0
            java.lang.String r4 = r8.j()     // Catch: Exception -> 0x009a
            if (r4 == 0) goto L_0x008e
            boolean r5 = r4.isEmpty()     // Catch: Exception -> 0x009a
            if (r5 == 0) goto L_0x0015
            goto L_0x008e
        L_0x0015:
            boolean r5 = r8.f     // Catch: Exception -> 0x009a
            if (r5 == 0) goto L_0x002f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: Exception -> 0x009a
            r5.<init>()     // Catch: Exception -> 0x009a
            java.lang.String r6 = com.netease.mobsec.e.e.a()     // Catch: Exception -> 0x009a
            r5.append(r6)     // Catch: Exception -> 0x009a
            java.lang.String r6 = "/v2/m/b"
            r5.append(r6)     // Catch: Exception -> 0x009a
            java.lang.String r5 = r5.toString()     // Catch: Exception -> 0x009a
            goto L_0x0035
        L_0x002f:
            com.netease.mobsec.e.b r5 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x009a
            java.lang.String r5 = r5.k()     // Catch: Exception -> 0x009a
        L_0x0035:
            r8.b = r5     // Catch: Exception -> 0x009a
            java.lang.String r5 = r8.b     // Catch: Exception -> 0x009a
            boolean r5 = r5.isEmpty()     // Catch: Exception -> 0x009a
            if (r5 == 0) goto L_0x004b
            com.netease.mobsec.e.b r5 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x009a
            java.lang.String r6 = "AC<{Z\rg$HTfo\\Yf:\u001f\u00041~G\u0019+dD\u0018>9\u0006Zgi"
            java.lang.String r7 = ")7H\u000b"
            java.lang.String r5 = r5.a(r6, r7)     // Catch: Exception -> 0x009a
            r8.b = r5     // Catch: Exception -> 0x009a
        L_0x004b:
            java.lang.String r5 = r8.b     // Catch: Exception -> 0x009a
            int r6 = r8.g     // Catch: Exception -> 0x009a
            org.json.JSONObject r4 = com.netease.mobsec.e.e.a(r5, r4, r6)     // Catch: Exception -> 0x009a
            java.lang.String r5 = "msg"
            if (r4 == 0) goto L_0x007a
            com.netease.mobsec.e.b r6 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x009a
            int r3 = r6.b(r4)     // Catch: Exception -> 0x009a
            java.lang.String r2 = r4.optString(r5)     // Catch: Exception -> 0x009a
            r4 = 420(0x1a4, float:5.89E-43)
            if (r3 != r4) goto L_0x00a4
            java.lang.String r4 = r8.j()     // Catch: Exception -> 0x009a
            java.lang.String r6 = r8.b     // Catch: Exception -> 0x009a
            int r7 = r8.g     // Catch: Exception -> 0x009a
            org.json.JSONObject r4 = com.netease.mobsec.e.e.a(r6, r4, r7)     // Catch: Exception -> 0x009a
            if (r4 == 0) goto L_0x00a4
        L_0x0073:
            com.netease.mobsec.e.b r6 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x009a
            int r3 = r6.b(r4)     // Catch: Exception -> 0x009a
            goto L_0x0089
        L_0x007a:
            java.lang.String r4 = r8.j()     // Catch: Exception -> 0x009a
            java.lang.String r6 = r8.b     // Catch: Exception -> 0x009a
            int r7 = r8.g     // Catch: Exception -> 0x009a
            org.json.JSONObject r4 = com.netease.mobsec.e.e.a(r6, r4, r7)     // Catch: Exception -> 0x009a
            if (r4 == 0) goto L_0x00a4
            goto L_0x0073
        L_0x0089:
            java.lang.String r2 = r4.optString(r5)     // Catch: Exception -> 0x009a
            goto L_0x00a4
        L_0x008e:
            com.netease.mobsec.e.f$c r4 = new com.netease.mobsec.e.f$c     // Catch: Exception -> 0x009a
            java.lang.String r5 = "getDynamicInfo error"
            r4.<init>(r1, r0, r5)     // Catch: Exception -> 0x009a
            r4.start()     // Catch: Exception -> 0x009a
            r0 = 0
            return r0
        L_0x009a:
            com.netease.mobsec.e.f$c r4 = new com.netease.mobsec.e.f$c
            java.lang.String r5 = "error"
            r4.<init>(r1, r0, r5)
            r4.start()
        L_0x00a4:
            com.netease.mobsec.e.a r0 = new com.netease.mobsec.e.a
            r0.<init>(r3, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsec.e.f.p():com.netease.mobsec.e.a");
    }

    public void q() {
        new d().start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
        if (r10 == 200) goto L_0x0072;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002a A[Catch: Exception -> 0x0087, TRY_LEAVE, TryCatch #2 {Exception -> 0x0087, blocks: (B:4:0x000a, B:6:0x0016, B:7:0x001d, B:8:0x0020, B:9:0x0024, B:11:0x002a, B:14:0x004d, B:12:0x003c), top: B:34:0x000a, inners: #5 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String a(int r10) {
        /*
            r9 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = "getNdinfo"
            java.lang.String r3 = "3"
            r4 = 9876(0x2694, float:1.3839E-41)
            if (r10 != r4) goto L_0x001d
            com.netease.mobsec.e.b r10 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x0087
            long r4 = r10.s()     // Catch: Exception -> 0x0087
            r6 = 0
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 <= 0) goto L_0x0020
            com.netease.mobsec.e.b r10 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x0087
            long r4 = r10.s()     // Catch: Exception -> 0x0087
            int r10 = (int) r4     // Catch: Exception -> 0x0087
        L_0x001d:
            r9.g = r10     // Catch: Exception -> 0x0087
            goto L_0x0024
        L_0x0020:
            r10 = 3000(0xbb8, float:4.204E-42)
            r9.g = r10     // Catch: Exception -> 0x0087
        L_0x0024:
            boolean r10 = r9.c()     // Catch: Exception -> 0x0087
            if (r10 == 0) goto L_0x0072
            com.netease.mobsec.e.f$e r4 = new com.netease.mobsec.e.f$e     // Catch: Exception -> 0x0087
            r4.<init>(r10)     // Catch: Exception -> 0x0087
            java.util.concurrent.FutureTask r10 = new java.util.concurrent.FutureTask     // Catch: Exception -> 0x0087
            r10.<init>(r4)     // Catch: Exception -> 0x0087
            java.lang.Thread r4 = new java.lang.Thread     // Catch: Exception -> 0x0087
            r4.<init>(r10)     // Catch: Exception -> 0x0087
            r4.start()     // Catch: Exception -> 0x0087
            int r4 = r9.g     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            long r4 = (long) r4     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            java.lang.Object r10 = r10.get(r4, r6)     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            java.lang.Integer r10 = (java.lang.Integer) r10     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            int r10 = r10.intValue()     // Catch: TimeoutException -> 0x005b, Exception -> 0x004c
            goto L_0x0069
        L_0x004c:
            r10 = move-exception
            r10.printStackTrace()     // Catch: Exception -> 0x0087
            com.netease.mobsec.e.f$c r4 = new com.netease.mobsec.e.f$c     // Catch: Exception -> 0x0087
            java.lang.String r10 = r10.getMessage()     // Catch: Exception -> 0x0087
            r4.<init>(r3, r2, r10)     // Catch: Exception -> 0x0087
            r10 = r1
            goto L_0x0063
        L_0x005b:
            com.netease.mobsec.e.f$c r4 = new com.netease.mobsec.e.f$c     // Catch: Exception -> 0x0084
            java.lang.String r10 = "TimeoutException"
            r4.<init>(r3, r2, r10)     // Catch: Exception -> 0x0084
            r10 = r0
        L_0x0063:
            r4.start()     // Catch: Exception -> 0x006e
            r8 = r1
            r1 = r10
            r10 = r8
        L_0x0069:
            r4 = 200(0xc8, float:2.8E-43)
            if (r10 == r4) goto L_0x0072
            goto L_0x0073
        L_0x006e:
            r0 = move-exception
            r1 = r10
            r10 = r0
            goto L_0x0088
        L_0x0072:
            r0 = r1
        L_0x0073:
            com.netease.mobsec.e.b r10 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x0084
            java.lang.String r10 = r10.a()     // Catch: Exception -> 0x0084
            com.netease.mobsec.e.b r1 = com.netease.mobsec.e.f.x     // Catch: Exception -> 0x0084
            java.lang.String r1 = r1.c()     // Catch: Exception -> 0x0084
            java.lang.String r10 = r9.a(r10, r1, r0)     // Catch: Exception -> 0x0084
            return r10
        L_0x0084:
            r10 = move-exception
            r1 = r0
            goto L_0x0088
        L_0x0087:
            r10 = move-exception
        L_0x0088:
            com.netease.mobsec.e.b r0 = com.netease.mobsec.e.f.x
            java.lang.String r0 = r0.a()
            com.netease.mobsec.e.b r4 = com.netease.mobsec.e.f.x
            java.lang.String r4 = r4.c()
            java.lang.String r0 = r9.a(r0, r4, r1)
            com.netease.mobsec.e.f$c r1 = new com.netease.mobsec.e.f$c
            java.lang.String r10 = r10.getMessage()
            r1.<init>(r3, r2, r10)
            r1.start()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsec.e.f.a(int):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:8|103|9|(6:101|11|12|(1:14)|15|(3:105|17|(2:25|26)))(1:29)|30|(2:32|(1:34)(5:35|41|108|42|(7:109|44|45|(1:74)|75|(3:81|(1:83)|84)|(2:86|87)(2:88|(2:90|112)(4:91|(2:106|93)|94|95)))(8:53|54|(1:56)(2:57|(1:59)(1:60))|69|(1:74)|75|(5:77|79|81|(0)|84)|(0)(0))))(2:36|(6:39|40|41|108|42|(0)(0)))|38|40|41|108|42|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f2, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00de A[Catch: Exception -> 0x00f2, TRY_LEAVE, TryCatch #7 {Exception -> 0x00f2, blocks: (B:42:0x0095, B:47:0x00c5, B:50:0x00d7, B:53:0x00de, B:44:0x00b3), top: B:108:0x0095, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0158  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void a(int r24, com.netease.mobsec.GetTokenCallback r25) {
        /*
        // Method dump skipped, instructions count: 401
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsec.e.f.a(int, com.netease.mobsec.GetTokenCallback):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b6, code lost:
        if (r5 != null) goto L_0x00b8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void a(android.content.Context r4, java.lang.String r5, com.netease.mobsec.WatchManConf r6, com.netease.mobsec.InitCallback r7) {
        /*
        // Method dump skipped, instructions count: 264
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mobsec.e.f.a(android.content.Context, java.lang.String, com.netease.mobsec.WatchManConf, com.netease.mobsec.InitCallback):void");
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.j = str;
    }

    public void a(boolean z2) {
        if (z2) {
            u = true;
            d dVar = w;
            if (dVar != null) {
                dVar.d();
                return;
            }
            return;
        }
        u = false;
        d dVar2 = w;
        if (dVar2 != null) {
            dVar2.e();
        }
    }

    public void h() {
        try {
            x.d();
        } catch (Exception unused) {
        }
    }

    public String i() {
        try {
            return x.b();
        } catch (Exception unused) {
            return "";
        }
    }
}
