.class Lcom/tencent/liteav/network/g$1;
.super Ljava/lang/Object;
.source "TXCPlayInfoProtocolV4.java"

# interfaces
.implements Lcom/tencent/liteav/network/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g$a;)V
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

    .line 56
    iput-object p1, p0, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    iput-object p2, p0, Lcom/tencent/liteav/network/g$1;->a:Lcom/tencent/liteav/network/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    new-instance v1, Lcom/tencent/liteav/network/g$1$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/network/g$1$2;-><init>(Lcom/tencent/liteav/network/g$1;)V

    invoke-static {v0, v1}, Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    iget-object v1, p0, Lcom/tencent/liteav/network/g$1;->a:Lcom/tencent/liteav/network/g$a;

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g;Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/tencent/liteav/network/g$1;->b:Lcom/tencent/liteav/network/g;

    new-instance v0, Lcom/tencent/liteav/network/g$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/network/g$1$1;-><init>(Lcom/tencent/liteav/network/g$1;)V

    invoke-static {p1, v0}, Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
