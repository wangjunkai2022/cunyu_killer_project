package com.netease.nis.captcha;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: CaptchaTipDialog.java */
/* loaded from: classes5.dex */
public class b extends Dialog {
    private final Context a;
    private TextView b;
    private ImageView c;
    private ImageView d;
    private RelativeLayout e;
    private boolean f = false;
    private int g;
    private String h;
    private int i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: CaptchaTipDialog.java */
    /* loaded from: classes5.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.d.getVisibility() == 0 && c.c(b.this.a)) {
                b.this.c();
                if (b.this.f) {
                    Captcha.getInstance().e();
                } else {
                    Captcha.getInstance().g();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: CaptchaTipDialog.java */
    /* renamed from: com.netease.nis.captcha.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class View$OnClickListenerC0016b implements View.OnClickListener {
        View$OnClickListenerC0016b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.dismiss();
        }
    }

    public b(Context context) {
        super(context, R.style.yd_CaptchaDialogStyle);
        this.a = context;
    }

    private void e() {
        Context context;
        int i = this.i;
        if (i == 0 || (context = this.a) == null) {
            this.c.setImageResource(R.drawable.yd_captcha_anim_loading);
        } else {
            this.c.setImageDrawable(ContextCompat.getDrawable(context, i));
        }
        ((AnimationDrawable) this.c.getDrawable()).start();
    }

    private void f() {
        try {
            AnimationDrawable animationDrawable = (AnimationDrawable) this.c.getDrawable();
            if (animationDrawable != null) {
                animationDrawable.stop();
            }
        } catch (Exception e) {
            c.b(e.getMessage(), new Object[0]);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Context context = this.a;
            if (!(context instanceof Activity)) {
                super.dismiss();
            } else if (Build.VERSION.SDK_INT >= 17) {
                if (!((Activity) context).isFinishing() && !((Activity) this.a).isDestroyed()) {
                    super.dismiss();
                }
            } else if (!((Activity) context).isFinishing()) {
                super.dismiss();
            }
        } catch (Exception e) {
            while (true) {
                c.b("Captcha", "Captcha Tip Dialog dismiss Error: %s", e.toString());
                return;
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEvent(keyEvent);
        }
        Captcha.getInstance().i();
        dismiss();
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        b();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        e();
        c();
        this.f = false;
    }

    @Override // android.app.Dialog
    protected void onStop() {
        f();
        super.onStop();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            Context context = this.a;
            if (context != null && (context instanceof Activity) && !((Activity) context).isFinishing()) {
                super.show();
            }
        } catch (Exception e) {
            c.b("Captcha Tip Dialog show Error:%s", e.toString());
        }
    }

    private void a() {
        if (this.d != null) {
            this.e.setVisibility(8);
            this.d.setVisibility(8);
        }
    }

    private void b() {
        setContentView(R.layout.yd_dialog_captcha_tip);
        this.b = (TextView) findViewById(R.id.tv_status);
        this.c = (ImageView) findViewById(R.id.iv_loading);
        ((RelativeLayout) findViewById(R.id.tip_dialog_rl)).setOnClickListener(new a());
        this.e = (RelativeLayout) findViewById(R.id.rl_close);
        ImageView imageView = (ImageView) findViewById(R.id.img_btn_close);
        this.d = imageView;
        imageView.setOnClickListener(new View$OnClickListenerC0016b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i = this.g;
        if (i != 0) {
            c(i);
        } else if (!TextUtils.isEmpty(this.h)) {
            b(this.h);
        } else {
            c(R.string.yd_tip_loading);
        }
    }

    private void d() {
        if (this.d != null) {
            this.e.setVisibility(0);
            this.d.setVisibility(0);
        }
    }

    public void a(String str) {
        this.h = str;
    }

    public void a(int i) {
        this.i = i;
    }

    public void c(int i) {
        TextView textView = this.b;
        if (textView != null) {
            textView.setText(i);
            if (i == R.string.yd_tip_init_timeout || i == R.string.yd_tip_load_failed || i == R.string.yd_tip_no_network) {
                this.c.setImageResource(R.drawable.yd_ic_error);
                d();
                if (i == R.string.yd_tip_no_network) {
                    this.f = true;
                }
            } else if (i == R.string.yd_tip_loading || i == this.g) {
                e();
                a();
            }
        }
    }

    public void b(int i) {
        this.g = i;
    }

    public void b(String str) {
        this.b.setText(str);
        if (!TextUtils.isEmpty(this.h) && this.h.equals(str)) {
            e();
        }
    }
}
