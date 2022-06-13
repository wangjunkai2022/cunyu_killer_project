.class public Lcom/netease/nis/captcha/b;
.super Landroid/app/Dialog;
.source "CaptchaTipDialog.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/netease/nis/captcha/R$style;->yd_CaptchaDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/b;->f:Z

    .line 9
    iput-object p1, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/captcha/b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netease/nis/captcha/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    sget v0, Lcom/netease/nis/captcha/R$layout;->yd_dialog_captcha_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget v0, Lcom/netease/nis/captcha/R$id;->tv_status:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nis/captcha/b;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/netease/nis/captcha/R$id;->iv_loading:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/netease/nis/captcha/R$id;->tip_dialog_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 6
    new-instance v1, Lcom/netease/nis/captcha/b$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/b$a;-><init>(Lcom/netease/nis/captcha/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget v0, Lcom/netease/nis/captcha/R$id;->rl_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nis/captcha/b;->e:Landroid/widget/RelativeLayout;

    .line 22
    sget v0, Lcom/netease/nis/captcha/R$id;->img_btn_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    .line 23
    new-instance v1, Lcom/netease/nis/captcha/b$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/b$b;-><init>(Lcom/netease/nis/captcha/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/nis/captcha/b;->g:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/netease/nis/captcha/b;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/nis/captcha/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_loading:I

    invoke-virtual {p0, v0}, Lcom/netease/nis/captcha/b;->c(I)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/nis/captcha/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/netease/nis/captcha/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/b;->f:Z

    return p0
.end method

.method private e()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/netease/nis/captcha/b;->i:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    sget v1, Lcom/netease/nis/captcha/R$drawable;->yd_captcha_anim_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/netease/nis/captcha/b;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/nis/captcha/b;->h:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/netease/nis/captcha/b;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/captcha/b;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->e()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_init_timeout:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_load_failed:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_no_network:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_loading:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/netease/nis/captcha/b;->g:I

    if-ne p1, v0, :cond_4

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->e()V

    .line 19
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->a()V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->c:Landroid/widget/ImageView;

    sget v1, Lcom/netease/nis/captcha/R$drawable;->yd_ic_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->d()V

    .line 22
    sget v0, Lcom/netease/nis/captcha/R$string;->yd_tip_no_network:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/netease/nis/captcha/b;->f:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 6
    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Captcha Tip Dialog dismiss Error: %s"

    aput-object v3, v1, v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Captcha"

    invoke-static {v0, v1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->i()V

    .line 3
    invoke-virtual {p0}, Lcom/netease/nis/captcha/b;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->e()V

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->c()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/nis/captcha/b;->f:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/captcha/b;->f()V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/captcha/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Captcha Tip Dialog show Error:%s"

    invoke-static {v0, v1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
