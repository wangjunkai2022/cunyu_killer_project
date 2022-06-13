.class Lcom/netease/nis/captcha/f$a;
.super Ljava/lang/Object;
.source "JsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/f;->b()V
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
    iput-object p1, p0, Lcom/netease/nis/captcha/f$a;->a:Lcom/netease/nis/captcha/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/f$a;->a:Lcom/netease/nis/captcha/f;

    invoke-static {v0}, Lcom/netease/nis/captcha/f;->g(Lcom/netease/nis/captcha/f;)Lcom/netease/nis/captcha/Captcha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->c()Lcom/netease/nis/captcha/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/b;->dismiss()V

    return-void
.end method
