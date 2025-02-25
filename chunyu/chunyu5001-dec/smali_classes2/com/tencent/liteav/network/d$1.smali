.class Lcom/tencent/liteav/network/d$1;
.super Ljava/lang/Thread;
.source "TXCIntelligentRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/d;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/network/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/liteav/network/d$1;->c:Lcom/tencent/liteav/network/d;

    iput-object p3, p0, Lcom/tencent/liteav/network/d$1;->a:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/liteav/network/d$1;->b:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/network/d$1;->c:Lcom/tencent/liteav/network/d;

    iget-object v0, v0, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    :goto_0
    if-lez v0, :cond_4

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const-string v1, "https://tcdns.myqcloud.com/queryip"

    goto :goto_1

    :cond_1
    const-string v1, "https://tcdnsipv6.myqcloud.com/queryip"

    .line 94
    :goto_1
    iget-object v2, p0, Lcom/tencent/liteav/network/d$1;->c:Lcom/tencent/liteav/network/d;

    iget-object v3, p0, Lcom/tencent/liteav/network/d$1;->a:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/liteav/network/d$1;->b:I

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/liteav/network/d;->a(Lcom/tencent/liteav/network/d;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "TXCIntelligentRoute"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "fetchByUrl failed, bad response, no retryCount left, push directly to domain name"

    .line 98
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/network/d$1;->c:Lcom/tencent/liteav/network/d;

    iget-object v0, v0, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Lcom/tencent/liteav/network/b;->onFetchDone(ILjava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 104
    :try_start_0
    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchByUrl failed, bad response, bad response, retryCount left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
