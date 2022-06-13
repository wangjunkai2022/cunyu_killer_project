.class Lcom/tencent/liteav/network/o$2$2;
.super Ljava/lang/Object;
.source "TXRTMPAccUrlFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/o$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lcom/tencent/liteav/network/o$2;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/o$2;Ljava/util/Vector;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tencent/liteav/network/o$2$2;->b:Lcom/tencent/liteav/network/o$2;

    iput-object p2, p0, Lcom/tencent/liteav/network/o$2$2;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/tencent/liteav/network/o$2$2;->b:Lcom/tencent/liteav/network/o$2;

    iget-object v0, v0, Lcom/tencent/liteav/network/o$2;->f:Lcom/tencent/liteav/network/o$a;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/tencent/liteav/network/o$2$2;->b:Lcom/tencent/liteav/network/o$2;

    iget-object v0, v0, Lcom/tencent/liteav/network/o$2;->f:Lcom/tencent/liteav/network/o$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/liteav/network/o$2$2;->a:Ljava/util/Vector;

    const-string v3, "Success"

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/network/o$a;->a(ILjava/lang/String;Ljava/util/Vector;)V

    :cond_0
    return-void
.end method
