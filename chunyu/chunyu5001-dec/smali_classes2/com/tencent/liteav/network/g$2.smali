.class Lcom/tencent/liteav/network/g$2;
.super Ljava/lang/Object;
.source "TXCPlayInfoProtocolV4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/g;->a(Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/g$a;

.field final synthetic b:Lcom/tencent/liteav/network/g;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/g;Lcom/tencent/liteav/network/g$a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tencent/liteav/network/g$2;->b:Lcom/tencent/liteav/network/g;

    iput-object p2, p0, Lcom/tencent/liteav/network/g$2;->a:Lcom/tencent/liteav/network/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/network/g$2;->a:Lcom/tencent/liteav/network/g$a;

    const/4 v1, -0x1

    const-string v2, "request return error!"

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/network/g$a;->a(ILjava/lang/String;)V

    return-void
.end method
