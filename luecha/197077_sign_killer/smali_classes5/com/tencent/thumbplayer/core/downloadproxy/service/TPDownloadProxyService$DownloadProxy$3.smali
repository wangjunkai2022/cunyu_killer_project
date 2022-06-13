.class Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;
.super Ljava/lang/Object;
.source "TPDownloadProxyService.java"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

.field final synthetic val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 10

    move-object v1, p0

    .line 780
    :try_start_0
    iget-object v0, v1, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    .line 781
    iget-object v2, v1, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDownloadProgressUpdate failed, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TPDownloadProxyService"

    const-string v4, "tpdlnative"

    invoke-static {v3, v2, v4, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPrepareError(IILjava/lang/String;)V
    .locals 1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareError(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 773
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrepareError failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPrepareOK()V
    .locals 4

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$3;->val$preloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPreLoadListenerAidl;->onPrepareOK()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOK failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TPDownloadProxyService"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
