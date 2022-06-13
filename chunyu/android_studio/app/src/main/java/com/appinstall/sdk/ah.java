package com.appinstall.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appinstall.api.Configuration;
import com.appinstall.api.listener.AppInstallListener;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.listener.GetUpdateApkListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class ah extends Handler {
    protected Context a;
    protected d b;
    protected g c;
    protected String d;
    protected boolean e;
    protected bw f = bw.a();
    protected f g;
    protected i h;
    protected bi i;
    protected ba j;
    protected Configuration k;
    protected Map l;

    public ah(Context context, Looper looper, d dVar, f fVar, String str, g gVar, Configuration configuration) {
        super(looper);
        this.a = context;
        this.b = dVar;
        this.g = fVar;
        this.d = str;
        this.c = gVar;
        this.k = configuration;
        this.h = i.a(context);
        this.i = bi.a(context);
        this.j = ba.a(context);
    }

    protected String a(boolean z, String str) {
        Object[] objArr = new Object[4];
        objArr[0] = z ? bu.b() : bu.a();
        objArr[1] = this.e ? "v2_5" : "v2";
        objArr[2] = this.d;
        objArr[3] = str;
        return String.format("https://%s/api/%s/android/%s/%s", objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        getLooper().quit();
    }

    public void a(Uri uri) {
        Message obtain = Message.obtain();
        obtain.what = 12;
        obtain.obj = new ai(uri, null, null);
        sendMessage(obtain);
    }

    public void a(Uri uri, AppWakeUpListener appWakeUpListener) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.obj = new ai(uri, null, appWakeUpListener);
        sendMessage(obtain);
    }

    public void a(GetUpdateApkListener getUpdateApkListener) {
        Message obtain = Message.obtain();
        obtain.what = 31;
        obtain.obj = new ai(null, null, getUpdateApkListener);
        sendMessage(obtain);
    }

    public void a(aq aqVar) {
        Message obtain = Message.obtain();
        obtain.what = 21;
        obtain.obj = new ai(aqVar, null, null);
        sendMessage(obtain);
    }

    public void a(bl blVar) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = new ai(blVar, null, null);
        sendMessage(obtain);
    }

    public void a(Boolean bool, int i, AppInstallListener appInstallListener) {
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.obj = new ai(bool, Integer.valueOf(i), appInstallListener);
        sendMessage(obtain);
    }

    protected void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            g b = g.b(str);
            if (!this.c.equals(b)) {
                this.c.a(b);
                this.g.a(this.c);
                this.c.i();
            }
            if (!TextUtils.isEmpty(this.c.h())) {
                this.j.b(this.d, this.c.h());
            }
        }
    }

    public void a(boolean z) {
        Message obtain = Message.obtain();
        obtain.what = 22;
        obtain.obj = new ai(Boolean.valueOf(z), null, null);
        sendMessage(obtain);
    }

    public void b() {
        Message obtain = Message.obtain();
        obtain.what = 23;
        obtain.obj = null;
        sendMessage(obtain);
    }

    public void b(boolean z) {
        this.e = z;
        this.f.a(z);
    }

    protected Map c() {
        if (this.l == null) {
            this.l = new HashMap();
            this.l.put("sN", this.h.i());
            this.l.put("andI", this.h.j());
            this.l.put("Pk", this.h.b());
            this.l.put("cF", this.h.a());
            this.l.put("ver", this.h.c());
            this.l.put("verI", String.valueOf(this.h.d()));
            this.l.put("apV", "2.6.1");
        }
        this.l.put("iI", TextUtils.isEmpty(this.c.h()) ? this.j.a(this.d) : this.c.h());
        this.l.put("ts", String.valueOf(System.currentTimeMillis()));
        return this.l;
    }
}
