.class Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a(Lcom/tencent/liteav/basic/util/TXHttpRequest$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

.field final synthetic b:Lcom/tencent/liteav/basic/util/TXHttpRequest;

.field final synthetic c:Lcom/tencent/liteav/basic/util/TXHttpRequest$b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/util/TXHttpRequest$b;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;Lcom/tencent/liteav/basic/util/TXHttpRequest;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->c:Lcom/tencent/liteav/basic/util/TXHttpRequest$b;

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iput-object p3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->b:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXPostRequest->recvMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget v1, v1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget-object v1, v1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXHttpRequest"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->b:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$300(Lcom/tencent/liteav/basic/util/TXHttpRequest;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget v5, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget-object v6, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->a:Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    iget-object v7, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;->c:Lcom/tencent/liteav/basic/util/TXHttpRequest$b;

    .line 305
    invoke-static {v0}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a(Lcom/tencent/liteav/basic/util/TXHttpRequest$b;)J

    move-result-wide v8

    .line 304
    invoke-static/range {v2 .. v9}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$400(Lcom/tencent/liteav/basic/util/TXHttpRequest;JI[BLjava/util/Map;J)V

    return-void
.end method
