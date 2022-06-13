.class Lcom/netease/nis/captcha/a$a;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/netease/nis/captcha/a;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/a;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/a$a;->b:Lcom/netease/nis/captcha/a;

    iput-object p2, p0, Lcom/netease/nis/captcha/a$a;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/nis/captcha/a$a;->b:Lcom/netease/nis/captcha/a;

    invoke-static {p1}, Lcom/netease/nis/captcha/a;->a(Lcom/netease/nis/captcha/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/nis/captcha/a$a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/captcha/a$a;->b:Lcom/netease/nis/captcha/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/nis/captcha/a;->y:Z

    .line 4
    invoke-static {p1}, Lcom/netease/nis/captcha/a;->b(Lcom/netease/nis/captcha/a;)Lcom/netease/nis/captcha/CaptchaListener;

    move-result-object p1

    sget-object v0, Lcom/netease/nis/captcha/Captcha$CloseType;->USER_CLOSE:Lcom/netease/nis/captcha/Captcha$CloseType;

    invoke-interface {p1, v0}, Lcom/netease/nis/captcha/CaptchaListener;->onClose(Lcom/netease/nis/captcha/Captcha$CloseType;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/captcha/a$a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
