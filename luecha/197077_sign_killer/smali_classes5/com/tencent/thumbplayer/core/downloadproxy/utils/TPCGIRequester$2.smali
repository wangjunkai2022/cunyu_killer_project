.class Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester$2;
.super Ljava/lang/Object;
.source "TPCGIRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester$2;->this$0:Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester$2;->this$0:Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->access$200(Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPRequestItem;

    .line 97
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester$2;->this$0:Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->access$300(Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPRequestItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPRequestItem;->updateFailedTime()V

    .line 99
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester$2;->this$0:Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->access$400(Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPRequestItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request queue take failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TPCGIRequester"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
