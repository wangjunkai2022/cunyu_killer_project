.class Lcom/netease/nis/captcha/Captcha$b;
.super Ljava/lang/Object;
.source "Captcha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/Captcha;->f()V
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
    iput-object p1, p0, Lcom/netease/nis/captcha/Captcha$b;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "TipDialog cancel"

    .line 1
    invoke-static {v0, p1}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$b;->a:Lcom/netease/nis/captcha/Captcha;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/nis/captcha/Captcha;->a(Lcom/netease/nis/captcha/Captcha;Z)Z

    .line 3
    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$b;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->c(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$b;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->c(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/captcha/a;->c()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/nis/captcha/Captcha$b;->a:Lcom/netease/nis/captcha/Captcha;

    invoke-static {p1}, Lcom/netease/nis/captcha/Captcha;->c(Lcom/netease/nis/captcha/Captcha;)Lcom/netease/nis/captcha/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/captcha/a;->c()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method
