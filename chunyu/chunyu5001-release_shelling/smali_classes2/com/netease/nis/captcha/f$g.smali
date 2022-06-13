.class Lcom/netease/nis/captcha/f$g;
.super Ljava/lang/Object;
.source "JsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/f;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/captcha/f;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    iput-object p2, p0, Lcom/netease/nis/captcha/f$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError is callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/nis/captcha/f$g;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "%s"

    invoke-static {v2, v1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->g(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/Captcha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/captcha/Captcha;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->c(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/captcha/a;->dismiss()V

    .line 7
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->f(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->f(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->f(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/captcha/b;->show()V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v1}, Lcom/netease/nis/captcha/f;->f(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/b;

    move-result-object v1

    sget v5, Lcom/netease/nis/captcha/R$string;->yd_tip_load_failed:I

    invoke-virtual {v1, v5}, Lcom/netease/nis/captcha/b;->c(I)V

    .line 14
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/netease/nis/captcha/f$g;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    .line 15
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "message"

    .line 16
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v6, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v6}, Lcom/netease/nis/captcha/f;->b(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 18
    iget-object v6, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v6}, Lcom/netease/nis/captcha/f;->b(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Lcom/netease/nis/captcha/CaptchaListener;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/nis/captcha/f$g;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v2, v0}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->b(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/netease/nis/captcha/f$g;->b:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->b(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/captcha/CaptchaListener;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
