package com.netease.nis.captcha;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import com.netease.nis.captcha.Captcha;
import com.netease.nis.captcha.CaptchaConfiguration;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* compiled from: CaptchaDialog.java */
/* loaded from: classes2.dex */
public class a extends Dialog {
    private final String A;
    private final String B;
    private final Context a;
    private final String b;
    private final CaptchaConfiguration.ModeType c;
    private final CaptchaConfiguration.LangType d;
    private final String e;
    private final float f;
    private final String g;
    private final int h;
    private final int i;
    private final int j;
    private final boolean k;
    private final boolean l;
    private final long m;
    private final int n;
    private final CaptchaListener o;
    private CaptchaWebView p;
    private View q;
    private String r;
    private String s;
    private final boolean t;
    private String u;
    private String v;
    private String w;
    private final boolean x;
    boolean y = false;
    boolean z;

    /* compiled from: CaptchaDialog.java */
    /* renamed from: com.netease.nis.captcha.a$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC0015a implements View.OnClickListener {
        final /* synthetic */ Dialog a;

        View$OnClickListenerC0015a(Dialog dialog) {
            a.this = r1;
            this.a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.x) {
                this.a.hide();
                a aVar = a.this;
                aVar.y = true;
                aVar.o.onClose(Captcha.CloseType.USER_CLOSE);
                return;
            }
            this.a.dismiss();
        }
    }

    public a(CaptchaConfiguration captchaConfiguration) {
        super(captchaConfiguration.a, R.style.yd_CaptchaDialogStyle);
        boolean z = false;
        this.a = captchaConfiguration.a;
        this.b = captchaConfiguration.b;
        this.c = captchaConfiguration.c;
        this.d = captchaConfiguration.d;
        this.e = captchaConfiguration.e == CaptchaConfiguration.Theme.DARK ? "dark" : "light";
        this.f = captchaConfiguration.f;
        this.g = captchaConfiguration.g;
        this.h = captchaConfiguration.h;
        this.i = captchaConfiguration.i;
        int i = captchaConfiguration.j;
        this.j = i == 0 ? b() : i;
        this.k = captchaConfiguration.n;
        this.l = captchaConfiguration.o;
        this.m = captchaConfiguration.l;
        this.n = captchaConfiguration.p;
        this.o = captchaConfiguration.k;
        this.r = captchaConfiguration.q;
        this.s = captchaConfiguration.r;
        this.t = captchaConfiguration.t;
        this.u = captchaConfiguration.u;
        this.v = captchaConfiguration.v;
        this.w = captchaConfiguration.w;
        this.x = captchaConfiguration.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE ? true : z;
        this.z = captchaConfiguration.m;
        this.A = captchaConfiguration.s;
        this.B = captchaConfiguration.A;
        i();
    }

    private void f() {
        c.a("%s", "设置ContentView");
        View view = this.q;
        if (view != null) {
            setContentView(view);
        } else {
            setContentView(R.layout.yd_dailog_captcha);
        }
        if (this.p == null) {
            CaptchaWebView captchaWebView = (CaptchaWebView) findViewById(R.id.web_view);
            this.p = captchaWebView;
            captchaWebView.setCaptchaListener(this.o);
        }
        findViewById(R.id.img_btn_close).setOnClickListener(new View$OnClickListenerC0015a(this));
        View view2 = this.q;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        if (this.z) {
            findViewById(R.id.img_btn_close).setVisibility(8);
            findViewById(R.id.rl_close).setVisibility(8);
        }
        if (this.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE) {
            getWindow().setDimAmount(0.0f);
        } else {
            getWindow().setDimAmount(this.f);
        }
        setCanceledOnTouchOutside(this.k);
    }

    private void i() {
        c.a("set dialog position x:%d y:%d width:%d", Integer.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j));
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i = this.h;
        if (i != -1) {
            attributes.gravity = 3 | attributes.gravity;
            attributes.x = i;
        }
        int i2 = this.i;
        if (i2 != -1) {
            attributes.gravity |= 48;
            attributes.y = i2;
        }
        int i3 = this.j;
        if (i3 != 0) {
            attributes.width = i3;
        }
        attributes.gravity = 17;
        getWindow().setAttributes(attributes);
    }

    public WebView c() {
        return this.p;
    }

    public View d() {
        return this.q;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Context context = this.a;
            if (context == null || !(context instanceof Activity)) {
                CaptchaWebView captchaWebView = this.p;
                if (captchaWebView != null) {
                    captchaWebView.loadUrl("about:blank");
                }
                super.dismiss();
            } else if (Build.VERSION.SDK_INT >= 17) {
                if (!((Activity) context).isFinishing() && !((Activity) this.a).isDestroyed()) {
                    CaptchaWebView captchaWebView2 = this.p;
                    if (captchaWebView2 != null) {
                        captchaWebView2.loadUrl("about:blank");
                    }
                    super.dismiss();
                }
            } else if (!((Activity) context).isFinishing()) {
                CaptchaWebView captchaWebView3 = this.p;
                if (captchaWebView3 != null) {
                    captchaWebView3.loadUrl("about:blank");
                }
                super.dismiss();
            }
        } catch (Exception e) {
            c.b(Captcha.TAG, "Captcha  Dialog dismiss Error: %s", e.toString());
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.z || keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    public void e() {
        ViewGroup.LayoutParams layoutParams = this.p.getLayoutParams();
        int i = this.j;
        if (i != 0) {
            layoutParams.width = i;
        }
        layoutParams.height = -2;
        this.p.setLayoutParams(layoutParams);
        String a = a();
        c.a("%s", "request url is:" + a);
        this.p.addJavascriptInterface(new f(this.a), "JSInterface");
        this.p.loadUrl(a);
    }

    public void g() {
        View inflate = LayoutInflater.from(this.a).inflate(R.layout.yd_dailog_captcha, (ViewGroup) null);
        this.q = inflate;
        CaptchaWebView captchaWebView = (CaptchaWebView) inflate.findViewById(R.id.web_view);
        this.p = captchaWebView;
        captchaWebView.setCaptchaListener(this.o);
    }

    public void h() {
        this.y = true;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        if (this.x) {
            hide();
            this.y = true;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        f();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            Context context = this.a;
            if (context != null && (context instanceof Activity) && !((Activity) context).isFinishing()) {
                super.show();
            }
        } catch (Exception e) {
            c.b("Captcha  Dialog show Error:%s", e.toString());
        }
    }

    private String a() {
        String str;
        float f = getContext().getResources().getDisplayMetrics().density;
        StringBuilder sb = new StringBuilder();
        sb.append("https://cstaticdun.126.net/api/v2/mobile.v2.13.5.html");
        sb.append("?captchaId=");
        sb.append(this.b);
        if (this.c == CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE) {
            sb.append("&mode=bind");
        }
        sb.append("&os=android");
        sb.append("&osVer=");
        sb.append(Build.VERSION.RELEASE);
        sb.append("&sdkVer=3.3.6.1");
        float f2 = ((float) this.j) / f;
        try {
            sb.append("&popupStyles.width=");
            sb.append(URLEncoder.encode(String.valueOf(f2), "utf-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            sb.append("&popupStyles.width=");
            sb.append(f2);
        }
        if (TextUtils.isEmpty(c.a(this.d))) {
            str = c.a();
        } else {
            str = c.a(this.d);
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append("&lang=");
            sb.append(str);
        }
        if (!TextUtils.isEmpty(this.g)) {
            sb.append("&customStyles.icon.slider=");
            sb.append(this.g);
        }
        sb.append("&defaultFallback=");
        sb.append(this.l);
        sb.append("&errorFallbackCount=");
        sb.append(this.n);
        sb.append("&mobileTimeout=");
        sb.append(this.m);
        if (this.t) {
            sb.append("&ipv6=true");
            this.v = "ac-v6.dun.163yun.com";
            this.u = "ac-v6.dun.163yun.com";
            this.w = "acstatic-dun-v6.126.net";
            if (TextUtils.isEmpty(this.r)) {
                this.r = "c-v6.dun.163.com";
            }
            if (TextUtils.isEmpty(this.s)) {
                this.s = "cstaticdun-v6.126.net";
            }
        }
        if (!TextUtils.isEmpty(this.r)) {
            sb.append("&apiServer=");
            sb.append(this.r);
        }
        if (!TextUtils.isEmpty(this.s)) {
            sb.append("&staticServer=");
            sb.append(this.s);
        }
        if (!TextUtils.isEmpty(this.A)) {
            sb.append("&protocol=");
            sb.append(this.A);
        }
        if (!TextUtils.isEmpty(this.u)) {
            sb.append("&wmServerConfig.configServer=");
            sb.append(this.u);
        }
        if (!TextUtils.isEmpty(this.v)) {
            sb.append("&wmServerConfig.apiServer=");
            sb.append(this.v);
        }
        if (!TextUtils.isEmpty(this.w)) {
            sb.append("&wmServerConfig.staticServer=");
            sb.append(this.w);
        }
        if (!TextUtils.isEmpty(this.B)) {
            sb.append("&extraData=");
            sb.append(this.B);
        }
        if (!TextUtils.isEmpty(this.e)) {
            sb.append("&theme=");
            sb.append(this.e);
        }
        return sb.toString();
    }

    private int b() {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        float f = displayMetrics.density;
        if (i2 < i) {
            i = (i2 * 3) / 4;
        }
        int i3 = (i * 4) / 5;
        return ((int) (((float) i3) / f)) < 270 ? (int) (((float) 270) * f) : i3;
    }
}
