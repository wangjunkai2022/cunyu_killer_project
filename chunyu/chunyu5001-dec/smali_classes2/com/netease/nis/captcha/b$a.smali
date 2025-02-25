.class Lcom/netease/nis/captcha/b$a;
.super Ljava/lang/Object;
.source "CaptchaTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/captcha/b;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/b$a;->a:Lcom/netease/nis/captcha/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/captcha/b$a;->a:Lcom/netease/nis/captcha/b;

    invoke-static {p1}, Lcom/netease/nis/captcha/b;->a(Lcom/netease/nis/captcha/b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/nis/captcha/b$a;->a:Lcom/netease/nis/captcha/b;

    invoke-static {p1}, Lcom/netease/nis/captcha/b;->b(Lcom/netease/nis/captcha/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/captcha/c;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/nis/captcha/b$a;->a:Lcom/netease/nis/captcha/b;

    invoke-static {p1}, Lcom/netease/nis/captcha/b;->c(Lcom/netease/nis/captcha/b;)V

    .line 4
    iget-object p1, p0, Lcom/netease/nis/captcha/b$a;->a:Lcom/netease/nis/captcha/b;

    invoke-static {p1}, Lcom/netease/nis/captcha/b;->d(Lcom/netease/nis/captcha/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->e()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/captcha/Captcha;->g()V

    :cond_1
    :goto_0
    return-void
.end method
