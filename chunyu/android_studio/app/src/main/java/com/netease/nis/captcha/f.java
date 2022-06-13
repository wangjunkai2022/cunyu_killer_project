package com.netease.nis.captcha;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.netease.nis.captcha.Captcha;
import com.netease.nis.captcha.CaptchaConfiguration;
import com.tekartik.sqflite.Constant;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: JsCallback.java */
/* loaded from: classes2.dex */
public class f {
    private static final Handler i = new Handler(Looper.getMainLooper());
    private final Captcha a;
    private final Context b;
    private final a c;
    private final CaptchaConfiguration d;
    private final CaptchaListener e;
    private final CaptchaWebView f;
    private final b g;
    private boolean h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.a.c().dismiss();
        }
    }

    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f.loadUrl("javascript:popupCaptcha()");
        }
    }

    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.e.onReady();
        }
    }

    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.c != null) {
                f.this.c.dismiss();
            }
            if (f.this.e == null) {
                return;
            }
            if (!f.this.c() || f.this.h) {
                f.this.e.onClose(Captcha.CloseType.VERIFY_SUCCESS_CLOSE);
                f.this.h = false;
            }
        }
    }

    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    class e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        e(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.e.onValidate(this.a, this.b, this.c);
        }
    }

    /* compiled from: JsCallback.java */
    /* renamed from: com.netease.nis.captcha.f$f  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0019f implements Runnable {
        RunnableC0019f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.g != null && f.this.g.isShowing()) {
                f.this.g.dismiss();
            }
        }
    }

    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    class g implements Runnable {
        final /* synthetic */ String a;

        g(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.a("%s", "onError is callback" + this.a);
            if (!f.this.a.d()) {
                f.this.c.dismiss();
                if (f.this.g != null) {
                    if (!f.this.g.isShowing()) {
                        f.this.g.show();
                    }
                    f.this.g.c(R.string.yd_tip_load_failed);
                }
                try {
                    JSONObject jSONObject = new JSONObject(this.a);
                    int i = jSONObject.getInt(Constant.PARAM_ERROR_CODE);
                    String string = jSONObject.getString(Constant.PARAM_ERROR_MESSAGE);
                    if (f.this.e != null) {
                        f.this.e.onError(i, string);
                    }
                } catch (JSONException e) {
                    c.b("%s", "onError is callback" + this.a);
                    if (f.this.e != null) {
                        f.this.e.onError(2000, e.toString());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!f.this.c.isShowing()) {
                f.this.c.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f.loadUrl("javascript:captchaVerify()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsCallback.java */
    /* loaded from: classes2.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.c != null) {
                if (f.this.d.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE && !((Activity) f.this.b).isFinishing()) {
                    f.this.c.getWindow().setDimAmount(f.this.d.f);
                }
                if (f.this.c.d().getVisibility() == 4) {
                    c.a("%s", "显示验证码视图");
                    f.this.c.d().setVisibility(0);
                }
            }
        }
    }

    public f(Context context) {
        this.b = context;
        Captcha instance = Captcha.getInstance();
        this.a = instance;
        a b2 = instance.b();
        this.c = b2;
        CaptchaConfiguration a2 = instance.a();
        this.d = a2;
        this.e = a2.k;
        this.f = (CaptchaWebView) b2.c();
        this.g = instance.c();
    }

    @JavascriptInterface
    public void onError(String str) {
        i.post(new g(str));
    }

    @JavascriptInterface
    public void onLoad() {
        c.a("%s", "onLoad is callback");
        if (!this.a.d() && this.d.c == CaptchaConfiguration.ModeType.MODE_CAPTCHA) {
            i.post(new b());
        }
    }

    @JavascriptInterface
    public void onReady(int i2, int i3) {
        long currentTimeMillis = System.currentTimeMillis() - this.a.g;
        c.a("%s %d", "加载总耗时为:", Long.valueOf(currentTimeMillis));
        c.a("%s", "onReady is callback");
        g.b().a(this.d.b, System.currentTimeMillis(), currentTimeMillis);
        g.b().b(this.b);
        b();
        if (!this.a.d()) {
            d();
            if (this.e != null) {
                i.post(new c());
            }
            if (c()) {
                a();
            } else {
                e();
            }
        }
    }

    @JavascriptInterface
    public void onValidate(String str, String str2, String str3, String str4) {
        c.a("result=%s validate =%s message =%s next=%s", str, str2, str3, str4);
        if (!this.a.d()) {
            if (!TextUtils.isEmpty(str4) && str4.equals("true")) {
                e();
                this.h = true;
            } else if (!TextUtils.isEmpty(str2)) {
                this.a.h();
                i.postDelayed(new d(), c() ? 0 : 500);
            }
            if (this.e != null && !str4.equals("true")) {
                i.post(new e(str, str2, str3));
            }
            i.post(new RunnableC0019f());
        }
    }

    private void b() {
        if (this.a.c() != null) {
            i.post(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.d.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE;
    }

    private void d() {
        i.post(new h());
    }

    private void e() {
        i.post(new j());
    }

    private void a() {
        if (this.f != null) {
            c.a("%s", "智能无感知调用captchaVerify");
            i.post(new i());
        }
    }
}
