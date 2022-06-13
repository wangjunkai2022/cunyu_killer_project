.class Lcom/tencent/liteav/basic/util/TXHttpRequest$2;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;->notifyResult(Landroid/os/Handler;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/liteav/basic/util/TXHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->c:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iput-wide p3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->c:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$300(Lcom/tencent/liteav/basic/util/TXHttpRequest;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget v3, v3, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    iget-object v4, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget-object v4, v4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    iget-object v5, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget-object v5, v5, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    iget-wide v6, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;->b:J

    invoke-static/range {v0 .. v7}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$400(Lcom/tencent/liteav/basic/util/TXHttpRequest;JI[BLjava/util/Map;J)V

    return-void
.end method
