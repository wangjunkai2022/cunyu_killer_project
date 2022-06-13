.class public Lcom/netease/nis/captcha/Captcha;
.super Ljava/lang/Object;
.source "Captcha.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/Captcha$CloseType;
    }
.end annotation


# static fields
.field public static final NO_NETWORK:I = 0x7d1

.field public static final SDK_INTERNAL_ERROR:I = 0x7d0

.field public static final SDK_VERSION:Ljava/lang/String; = "3.3.6.1"

.field public static final TAG:Ljava/lang/String; = "Captcha"

.field public static final WEB_VIEW_HTTPS_ERROR:I = 0x7d4

.field public static final WEB_VIEW_HTTP_ERROR:I = 0x7d3

.field public static final WEB_VIEW_REQUEST_ERROR:I = 0x7d2

.field private static h:Lcom/netease/nis/captcha/Captcha;


# instance fields
.field private a:Lcom/netease/nis/captcha/CaptchaConfiguration;

.field private b:Lcom/netease/nis/captcha/b;

.field private c:Lcom/netease/nis/captcha/a;

.field private d:Z

.field private e:Z

.field private f:Z

.field protected g:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->d:Z

    return-void
.end method

.method private a(Lcom/netease/nis/captcha/CaptchaConfiguration;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 5
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must be activity type !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CaptchaListener cannot be null !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CaptchaConfiguration cannot be null !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/netease/nis/captcha/Captcha;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/Captcha;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/netease/nis/captcha/Captcha;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/nis/captcha/Captcha;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/CaptchaConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/captcha/Captcha;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/Captcha;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/netease/nis/captcha/Captcha;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/Captcha;->e:Z

    return p0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/netease/nis/captcha/Captcha$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/Captcha$b;-><init>(Lcom/netease/nis/captcha/Captcha;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/netease/nis/captcha/Captcha$c;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/Captcha$c;-><init>(Lcom/netease/nis/captcha/Captcha;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/netease/nis/captcha/Captcha;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/captcha/Captcha;->h:Lcom/netease/nis/captcha/Captcha;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/captcha/Captcha;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/captcha/Captcha;->h:Lcom/netease/nis/captcha/Captcha;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/captcha/Captcha;

    invoke-direct {v1}, Lcom/netease/nis/captcha/Captcha;-><init>()V

    sput-object v1, Lcom/netease/nis/captcha/Captcha;->h:Lcom/netease/nis/captcha/Captcha;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/captcha/Captcha;->h:Lcom/netease/nis/captcha/Captcha;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/nis/captcha/b;

    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nis/captcha/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    .line 2
    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/b;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->y:I

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/b;->b(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->z:I

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/b;->a(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-boolean v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->n:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    new-instance v1, Lcom/netease/nis/captcha/Captcha$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/Captcha$a;-><init>(Lcom/netease/nis/captcha/Captcha;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/b;->show()V

    return-void
.end method


# virtual methods
.method a()Lcom/netease/nis/captcha/CaptchaConfiguration;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    return-object v0
.end method

.method b()Lcom/netease/nis/captcha/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    return-object v0
.end method

.method c()Lcom/netease/nis/captcha/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    return-object v0
.end method

.method public changeDialogLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/netease/nis/captcha/Captcha;->g()V

    :cond_0
    return-void
.end method

.method d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->f:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/b;->dismiss()V

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->dismiss()V

    .line 11
    :cond_2
    iput-object v1, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    :cond_4
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/b;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->dismiss()V

    :cond_1
    return-void
.end method

.method e()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->f:Z

    .line 3
    new-instance v0, Lcom/netease/nis/captcha/a;

    iget-object v1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    invoke-direct {v0, v1}, Lcom/netease/nis/captcha/a;-><init>(Lcom/netease/nis/captcha/CaptchaConfiguration;)V

    iput-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    .line 4
    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->g()V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->e()V

    .line 6
    invoke-direct {p0}, Lcom/netease/nis/captcha/Captcha;->f()V

    return-void
.end method

.method protected g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/netease/nis/captcha/Captcha;->e()V

    return-void
.end method

.method h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->e:Z

    return-void
.end method

.method i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->f:Z

    return-void
.end method

.method public init(Lcom/netease/nis/captcha/CaptchaConfiguration;)Lcom/netease/nis/captcha/Captcha;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/nis/captcha/Captcha;->a(Lcom/netease/nis/captcha/CaptchaConfiguration;)V

    .line 3
    iput-object p1, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    .line 4
    iget-object v0, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->d:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    sget-object v1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_DEFAULT:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nis/captcha/c;->a(Landroid/content/Context;Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/netease/nis/captcha/d;->b()Lcom/netease/nis/captcha/d;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v2, v2, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/captcha/d;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 8
    iget-object p1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v0, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/nis/captcha/Captcha;->d:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    return-object p0
.end method

.method public validate()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/nis/captcha/Captcha;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v0, v0, Lcom/netease/nis/captcha/CaptchaConfiguration;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nis/captcha/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/captcha/Captcha;->j()V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->b:Lcom/netease/nis/captcha/b;

    sget v1, Lcom/netease/nis/captcha/R$string;->yd_tip_no_network:I

    invoke-virtual {v0, v1}, Lcom/netease/nis/captcha/b;->c(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->a:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v0, v0, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    const/16 v1, 0x7d1

    const-string v2, "no network,please check your network"

    invoke-interface {v0, v1, v2}, Lcom/netease/nis/captcha/CaptchaListener;->onError(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nis/captcha/Captcha;->g:J

    .line 9
    iget-object v0, p0, Lcom/netease/nis/captcha/Captcha;->c:Lcom/netease/nis/captcha/a;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/netease/nis/captcha/a;->y:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/nis/captcha/Captcha;->e:Z

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->show()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/netease/nis/captcha/Captcha;->j()V

    .line 13
    invoke-virtual {p0}, Lcom/netease/nis/captcha/Captcha;->e()V

    :goto_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/netease/nis/captcha/Captcha;->e:Z

    :cond_2
    return-void
.end method
