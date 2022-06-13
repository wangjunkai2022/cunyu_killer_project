.class Lcom/netease/nis/basesdk/HttpUtil$b$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/HttpUtil$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/basesdk/HttpUtil$b;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/HttpUtil$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$b$a;->a:Lcom/netease/nis/basesdk/HttpUtil$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/nis/basesdk/HttpUtil;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/nis/basesdk/HttpUtil$b$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/nis/basesdk/HttpUtil$b$a$b;-><init>(Lcom/netease/nis/basesdk/HttpUtil$b$a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/nis/basesdk/HttpUtil;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/nis/basesdk/HttpUtil$b$a$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/basesdk/HttpUtil$b$a$a;-><init>(Lcom/netease/nis/basesdk/HttpUtil$b$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
