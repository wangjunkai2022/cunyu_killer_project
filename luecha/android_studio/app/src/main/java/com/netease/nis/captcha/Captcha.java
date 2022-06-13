package com.netease.nis.captcha;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import com.netease.nis.captcha.CaptchaConfiguration;

/* loaded from: classes5.dex */
public class Captcha {
    public static final int NO_NETWORK = 2001;
    public static final int SDK_INTERNAL_ERROR = 2000;
    public static final String SDK_VERSION = "3.3.6.1";
    public static final String TAG = "Captcha";
    public static final int WEB_VIEW_HTTPS_ERROR = 2004;
    public static final int WEB_VIEW_HTTP_ERROR = 2003;
    public static final int WEB_VIEW_REQUEST_ERROR = 2002;
    private static Captcha h;
    private CaptchaConfiguration a;
    private b b;
    private a c;
    private boolean d = true;
    private boolean e;
    private boolean f;
    protected long g;

    /* loaded from: classes5.dex */
    public enum CloseType {
        UNDEFINE_CLOSE,
        USER_CLOSE,
        VERIFY_SUCCESS_CLOSE,
        TIP_CLOSE
    }

    /* loaded from: classes5.dex */
    public class a implements DialogInterface.OnDismissListener {
        a() {
            Captcha.this = r1;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (Captcha.this.f && Captcha.this.a != null && Captcha.this.a.k != null) {
                Captcha.this.a.k.onClose(CloseType.TIP_CLOSE);
            }
        }
    }

    /* loaded from: classes5.dex */
    public class b implements DialogInterface.OnCancelListener {
        b() {
            Captcha.this = r1;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            c.a("TipDialog cancel", new Object[0]);
            Captcha.this.f = true;
            if (Captcha.this.c != null && Captcha.this.c.c() != null) {
                Captcha.this.c.c().stopLoading();
            }
        }
    }

    /* loaded from: classes5.dex */
    public class c implements DialogInterface.OnDismissListener {
        c() {
            Captcha.this = r1;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            c.a("CaptchaDialog dismiss", new Object[0]);
            if (Captcha.this.d) {
                if (Captcha.this.c != null && !Captcha.this.e) {
                    Captcha.this.c.h();
                    if (Captcha.this.a != null) {
                        Captcha.this.a.k.onClose(CloseType.USER_CLOSE);
                    }
                }
            } else if (!Captcha.this.e && Captcha.this.a != null) {
                Captcha.this.a.k.onClose(CloseType.USER_CLOSE);
            }
        }
    }

    private Captcha() {
    }

    private void f() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.setOnCancelListener(new b());
        }
        a aVar = this.c;
        if (aVar != null) {
            aVar.setOnDismissListener(new c());
        }
    }

    public static Captcha getInstance() {
        if (h == null) {
            synchronized (Captcha.class) {
                if (h == null) {
                    h = new Captcha();
                }
            }
        }
        return h;
    }

    private void j() {
        b bVar = new b(this.a.a);
        this.b = bVar;
        bVar.a(this.a.x);
        this.b.b(this.a.y);
        this.b.a(this.a.z);
        this.b.setCanceledOnTouchOutside(this.a.n);
        this.b.setOnDismissListener(new a());
        this.b.show();
    }

    public void changeDialogLayout() {
        a aVar;
        if (this.a != null && !this.d && (aVar = this.c) != null && aVar.isShowing()) {
            g();
        }
    }

    public void destroy() {
        b bVar = this.b;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.b.dismiss();
            }
            this.b = null;
        }
        a aVar = this.c;
        if (aVar != null) {
            if (aVar.isShowing()) {
                this.c.dismiss();
            }
            this.c = null;
        }
        if (this.a != null) {
            this.a = null;
        }
    }

    public void dismissAllDialog() {
        b bVar = this.b;
        if (bVar != null && bVar.isShowing()) {
            this.b.dismiss();
        }
        a aVar = this.c;
        if (aVar != null && aVar.isShowing()) {
            this.c.dismiss();
        }
    }

    public void g() {
        a aVar = this.c;
        if (aVar != null) {
            if (aVar.isShowing()) {
                this.c.dismiss();
            }
            this.c = null;
        }
        e();
    }

    public void h() {
        this.e = true;
    }

    public void i() {
        this.f = true;
    }

    public Captcha init(CaptchaConfiguration captchaConfiguration) {
        a(captchaConfiguration);
        this.a = captchaConfiguration;
        CaptchaConfiguration.LangType langType = captchaConfiguration.d;
        if (langType != CaptchaConfiguration.LangType.LANG_DEFAULT) {
            c.a(captchaConfiguration.a, langType);
        }
        d.b().a(captchaConfiguration.b, this.a.a);
        this.d = captchaConfiguration.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE;
        this.c = null;
        return this;
    }

    public void validate() {
        if (System.currentTimeMillis() - this.g <= 1000) {
            return;
        }
        if (!c.c(this.a.a)) {
            j();
            this.b.c(R.string.yd_tip_no_network);
            this.a.k.onError(2001, "no network,please check your network");
            return;
        }
        this.g = System.currentTimeMillis();
        a aVar = this.c;
        if (aVar == null || !aVar.y || this.e) {
            j();
            e();
        } else {
            aVar.show();
        }
        this.e = false;
    }

    public a b() {
        return this.c;
    }

    public b c() {
        return this.b;
    }

    public boolean d() {
        return this.f;
    }

    public void e() {
        this.f = false;
        a aVar = new a(this.a);
        this.c = aVar;
        aVar.g();
        this.c.e();
        f();
    }

    private void a(CaptchaConfiguration captchaConfiguration) {
        if (captchaConfiguration == null) {
            throw new IllegalArgumentException("CaptchaConfiguration cannot be null !");
        } else if (captchaConfiguration.k != null) {
            Context context = captchaConfiguration.a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null !");
            } else if (!(context instanceof Activity)) {
                throw new IllegalArgumentException("Context must be activity type !");
            }
        } else {
            throw new IllegalArgumentException("CaptchaListener cannot be null !");
        }
    }

    public CaptchaConfiguration a() {
        return this.a;
    }
}
