.class Lcom/netease/nis/captcha/f$j;
.super Ljava/lang/Object;
.source "JsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/captcha/f;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->h(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nis/captcha/CaptchaConfiguration;->c:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    sget-object v1, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->i(Lcom/netease/nis/captcha/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->h(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/netease/nis/captcha/CaptchaConfiguration;->f:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u663e\u793a\u9a8c\u8bc1\u7801\u89c6\u56fe"

    aput-object v2, v0, v1

    const-string v2, "%s"

    .line 9
    invoke-static {v2, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/netease/nis/captcha/f$j;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
