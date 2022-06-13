package com.netease.mobsec.e;

import android.content.Context;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d {
    private static d i;
    private static Context j;
    private static b k;
    private static boolean l;
    h a;
    JSONObject b = null;
    JSONArray c = null;
    private long d = 0;
    private int e = 0;
    private long f = 0;
    private long g = 0;
    private Timer h = null;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                if (d.l && currentTimeMillis > d.this.d) {
                    d.this.e();
                }
                String c = d.this.a.c();
                String d = d.this.a.d();
                String f = d.this.a.f();
                String e = d.this.a.e();
                JSONObject jSONObject = new JSONObject();
                if (c.length() > 0 && d.length() > 0 && f.length() > 0 && e.length() > 0) {
                    jSONObject.put("ac", c);
                    jSONObject.put("gr", d);
                    jSONObject.put("or", f);
                    jSONObject.put("li", e);
                    jSONObject.put("st", System.currentTimeMillis());
                    if (d.this.c.length() < d.this.e) {
                        d.this.c.put(jSONObject);
                    }
                    if (d.this.c.length() >= d.this.e) {
                        d dVar = d.this;
                        dVar.c.put(dVar.e - 1, jSONObject);
                    }
                    d dVar2 = d.this;
                    dVar2.b.put("data", dVar2.c);
                }
            } catch (Exception unused) {
            }
        }
    }

    private d(Context context) {
        j = context;
        if (this.a == null) {
            this.a = new h(context);
        }
        k = new b(context);
    }

    public static d a(Context context) {
        if (i == null) {
            synchronized (d.class) {
                if (i == null) {
                    i = new d(context);
                }
            }
        }
        return i;
    }

    private void c() {
        try {
            this.b = null;
            this.c = null;
            this.c = new JSONArray();
            this.b = new JSONObject();
        } catch (Exception unused) {
        }
    }

    public String b() {
        String str = "";
        if (l) {
            JSONObject jSONObject = this.b;
            if (jSONObject == null) {
                return str;
            }
            String jSONObject2 = jSONObject.toString();
            c();
            return jSONObject2;
        }
        h hVar = this.a;
        if (hVar != null) {
            hVar.b();
        }
        try {
            JSONArray jSONArray = this.b.getJSONArray("data");
            int length = jSONArray.length();
            String c = this.a.c();
            String d = this.a.d();
            String f = this.a.f();
            String e = this.a.e();
            JSONObject jSONObject3 = new JSONObject();
            if (c.length() <= 0 || d.length() <= 0 || f.length() <= 0 || e.length() <= 0) {
                return str;
            }
            jSONObject3.put("ac", c);
            jSONObject3.put("gr", d);
            jSONObject3.put("or", f);
            jSONObject3.put("li", e);
            jSONObject3.put("st", System.currentTimeMillis());
            if (jSONArray.length() < this.e) {
                jSONArray.put(length - 1, jSONObject3);
            }
            int length2 = jSONArray.length();
            int i2 = this.e;
            if (length2 >= i2) {
                jSONArray.put(i2 - 1, jSONObject3);
            }
            this.a.a();
            str = this.b.toString();
            c();
            return str;
        } catch (Exception unused) {
            return str;
        }
    }

    public void d() {
        if (!l) {
            this.e = k.w();
            this.f = k.v();
            long x = k.x();
            this.g = x;
            if (this.e == 0) {
                this.e = 10;
            }
            if (this.f == 0) {
                this.f = 300000;
            }
            if (x == 0) {
                this.g = 1000;
            }
            l = true;
            this.d = System.currentTimeMillis() + this.f;
            if (this.h == null) {
                this.h = new Timer();
            }
            h hVar = this.a;
            if (hVar == null) {
                hVar = new h(j);
                this.a = hVar;
            }
            hVar.b();
            c();
            try {
                this.h.schedule(new a(), 0, this.g);
            } catch (Exception unused) {
            }
        }
    }

    public void e() {
        Timer timer = this.h;
        if (timer != null) {
            timer.cancel();
            this.h = null;
        }
        h hVar = this.a;
        if (hVar != null) {
            hVar.a();
        }
        l = false;
    }
}
