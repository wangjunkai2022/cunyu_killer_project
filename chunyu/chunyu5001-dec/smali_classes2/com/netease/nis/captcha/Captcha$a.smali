.class Lcom/netease/nis/captcha/Captcha$a;
.super Ljava/lang/Object;
.source "Captcha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/Captcha;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/captcha/Captcha;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/Captcha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/Captcha$a;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$a;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->a(Lcom/netease/nis/captcha/Captcha;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$a;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->b(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$a;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->b(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$a;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->b(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/nis/captcha/CaptchaConfiguration;->k:Lcom/netease/nis/captcha/CaptchaListener;

    sget-object v0, Lcom/netease/nis/captcha/Captcha$CloseType;->TIP_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    invoke-interface {p1, v0}, Lcom/netease/nis/captcha/CaptchaListener;->onClose(Lcom/netease/nis/captcha/Captcha$CloseType;)V

    :cond_0
    return-void
.end method
