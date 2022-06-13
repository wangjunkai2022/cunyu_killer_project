.class Lcom/netease/nis/captcha/e$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/e;->a(Ljava/lang/String;Lcom/netease/nis/captcha/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/captcha/e$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/nis/captcha/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nis/captcha/e$a;->b:Lcom/netease/nis/captcha/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/e$a;->a:Ljava/lang/String;

    new-instance v5, Lcom/netease/nis/captcha/e$a$a;

    invoke-direct {v5, p0}, Lcom/netease/nis/captcha/e$a$a;-><init>(Lcom/netease/nis/captcha/e$a;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/netease/nis/captcha/e;->a(Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Network;Lcom/netease/nis/captcha/e$b;)V

    return-void
.end method
