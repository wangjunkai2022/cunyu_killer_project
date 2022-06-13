.class public Lcom/netease/nis/captcha/f;
.super Ljava/lang/Object;
.source "JsCallback.java"


# static fields
.field private static final i:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/netease/nis/captcha/Captcha;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/netease/nis/captcha/a;

.field private final d:Lcom/netease/nis/captcha/CaptchaConfiguration;

.field private final e:Lcom/netease/nis/captcha/CaptchaListener;

.field private final f:Lcom/netease/nis/captcha/CaptchaWebView;

.field private final g:Lcom/netease/nis/captcha/b;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/captcha/f;->h:Z

    .line 6
    iput-object p1, p0, Lcom/netease/nis/captcha/f;->b:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    .line 8
    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->b()Lcom/netease/nis/captcha/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/captcha/f;->c:Lcom/netease/nis/captcha/a;

    .line 9
    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->a()Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nis/captcha/f;->d:Lcom/netease/nis/captcha/CaptchaConfiguration;

    .line 10
    iget-object v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    iput-object v1, p0, Lcom/netease/nis/captcha/f;->e:Lcom/netease/nis/captcha/CaptchaListener;

    .line 11
    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/captcha/CaptchaWebView;

    iput-object v0, p0, Lcom/netease/nis/captcha/f;->f:Lcom/netease/nis/captcha/CaptchaWebView;

    .line 12
    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->c()Lcom/netease/nis/captcha/b;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/captcha/f;->g:Lcom/netease/nis/captcha/b;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->f:Lcom/netease/nis/captcha/CaptchaWebView;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->f:Lcom/netease/nis/captcha/CaptchaWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u667a\u80fd\u65e0\u611f\u77e5\u8c03\u7528captchaVerify"

    aput-object v2, v0, v1

    const-string v1, "%s"

    .line 4
    invoke-static {v1, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$i;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$i;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/captcha/f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/nis/captcha/f;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->e:Lcom/netease/nis/captcha/CaptchaListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->c()Lcom/netease/nis/captcha/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$a;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->c:Lcom/netease/nis/captcha/a;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->d:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v0, v0, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v1, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$h;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$h;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/netease/nis/captcha/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->c()Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$j;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$j;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/netease/nis/captcha/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/captcha/f;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->g:Lcom/netease/nis/captcha/b;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/Captcha;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->d:Lcom/netease/nis/captcha/CaptchaConfiguration;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/nis/captcha/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/f;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$g;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/captcha/f$g;-><init>(Lcom/netease/nis/captcha/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoad()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onLoad is callback"

    aput-object v2, v0, v1

    const-string v1, "%s"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->d:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v0, v0, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v1, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_CAPTCHA:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$b;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onReady(II)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    iget-wide v0, v0, Lcom/netease/nis/captcha/Captcha;->g:J

    sub-long v6, p1, v0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "\u52a0\u8f7d\u603b\u8017\u65f6\u4e3a:"

    aput-object v0, p1, p2

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%s %d"

    invoke-static {v0, p1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onReady is callback"

    aput-object v0, p1, p2

    const-string p2, "%s"

    .line 3
    invoke-static {p2, p1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/netease/nis/captcha/g;->b()Lcom/netease/nis/captcha/g;

    move-result-object v2

    iget-object p1, p0, Lcom/netease/nis/captcha/f;->d:Lcom/netease/nis/captcha/CaptchaConfiguration;

    iget-object v3, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v2 .. v7}, Lcom/netease/nis/captcha/g;->a(Ljava/lang/String;JJ)V

    .line 5
    invoke-static {}, Lcom/netease/nis/captcha/g;->b()Lcom/netease/nis/captcha/g;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/nis/captcha/f;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/netease/nis/captcha/g;->b(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->b()V

    .line 8
    iget-object p1, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->d()V

    .line 10
    iget-object p1, p0, Lcom/netease/nis/captcha/f;->e:Lcom/netease/nis/captcha/CaptchaListener;

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance p2, Lcom/netease/nis/captcha/f$c;

    invoke-direct {p2, p0}, Lcom/netease/nis/captcha/f$c;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->a()V

    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const-string v2, "result=%s validate =%s message =%s next=%s"

    .line 1
    invoke-static {v2, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "true"

    if-nez v0, :cond_1

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->e()V

    .line 7
    iput-boolean v1, p0, Lcom/netease/nis/captcha/f;->h:Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->h()V

    .line 11
    sget-object v0, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/captcha/f$d;

    invoke-direct {v1, p0}, Lcom/netease/nis/captcha/f$d;-><init>(Lcom/netease/nis/captcha/f;)V

    .line 25
    invoke-direct {p0}, Lcom/netease/nis/captcha/f;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x1f4

    .line 26
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/captcha/f;->e:Lcom/netease/nis/captcha/CaptchaListener;

    if-eqz v0, :cond_4

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 43
    sget-object p4, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nis/captcha/f$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/nis/captcha/f$e;-><init>(Lcom/netease/nis/captcha/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_4
    sget-object p1, Lcom/netease/nis/captcha/f;->i:Landroid/os/Handler;

    new-instance p2, Lcom/netease/nis/captcha/f$f;

    invoke-direct {p2, p0}, Lcom/netease/nis/captcha/f$f;-><init>(Lcom/netease/nis/captcha/f;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
