.class Lcom/netease/nis/captcha/f$i;
.super Ljava/lang/Object;
.source "JsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/f;->a()V
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
    iput-object p1, p0, Lcom/netease/nis/captcha/f$i;->a:Lcom/netease/nis/captcha/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/f$i;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->a(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/CaptchaWebView;

    move-result-object v0

    const-string v1, "javascript:captchaVerify()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
