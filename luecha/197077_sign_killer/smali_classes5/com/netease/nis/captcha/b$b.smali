.class Lcom/netease/nis/captcha/b$b;
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
    iput-object p1, p0, Lcom/netease/nis/captcha/b$b;->a:Lcom/netease/nis/captcha/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/captcha/b$b;->a:Lcom/netease/nis/captcha/b;

    invoke-virtual {p1}, Lcom/netease/nis/captcha/b;->dismiss()V

    return-void
.end method
