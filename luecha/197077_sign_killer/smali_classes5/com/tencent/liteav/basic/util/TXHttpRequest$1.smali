.class Lcom/tencent/liteav/basic/util/TXHttpRequest$1;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;->downloadFile(Ljava/lang/String;Ljava/lang/String;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:J

.field final synthetic e:Ljava/util/concurrent/ExecutorService;

.field final synthetic f:Lcom/tencent/liteav/basic/util/TXHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;JLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->f:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->c:Landroid/os/Handler;

    iput-wide p5, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->d:J

    iput-object p7, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->f:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$100(Lcom/tencent/liteav/basic/util/TXHttpRequest;)Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->downloadFileInternal(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/basic/util/TXHttpRequest$d;)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->f:Lcom/tencent/liteav/basic/util/TXHttpRequest;

    iget-object v2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->d:J

    invoke-static {v1, v2, v0, v3, v4}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$200(Lcom/tencent/liteav/basic/util/TXHttpRequest;Landroid/os/Handler;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V

    .line 132
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
