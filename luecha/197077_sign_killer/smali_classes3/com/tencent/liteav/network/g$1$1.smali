.class Lcom/tencent/liteav/network/g$1$1;
.super Ljava/lang/Object;
.source "TXCPlayInfoProtocolV4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/g$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/g$1;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/g$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/liteav/network/g$1$1;->a:Lcom/tencent/liteav/network/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/network/g$1$1;->a:Lcom/tencent/liteav/network/g$1;

    iget-object v0, v0, Lcom/tencent/liteav/network/g$1;->a:Lcom/tencent/liteav/network/g$a;

    iget-object v1, p0, Lcom/tencent/liteav/network/g$1$1;->a:Lcom/tencent/liteav/network/g$1;

    iget-object v1, v1, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    iget-object v2, p0, Lcom/tencent/liteav/network/g$1$1;->a:Lcom/tencent/liteav/network/g$1;

    iget-object v2, v2, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    invoke-static {v2}, Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g;)Lcom/tencent/rtmp/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/network/g$a;->a(Lcom/tencent/liteav/network/g;Lcom/tencent/rtmp/b;)V

    return-void
.end method
