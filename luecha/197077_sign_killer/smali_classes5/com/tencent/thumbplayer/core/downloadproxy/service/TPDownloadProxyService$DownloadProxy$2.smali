.class Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;
.super Ljava/lang/Object;
.source "TPDownloadProxyService.java"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;->startClipPlay(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

.field final synthetic val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->this$1:Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvRemainTime()J
    .locals 4

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getAdvRemainTime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdvRemainTime failed, error:"

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
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getContentType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContentType key failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxyService"

    const-string v1, "tpdlnative"

    .line 705
    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getCurrentPlayClipNo()I
    .locals 4

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getCurrentPlayClipNo()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPlayClipNo failed, error:"

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
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPlayOffset()J
    .locals 4

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getCurrentPlayOffset()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPlayOffset failed, error:"

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
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPosition failed, error:"

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
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDataFilePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getDataFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataFilePath key failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxyService"

    const-string v1, "tpdlnative"

    .line 692
    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getDataTotalSize(ILjava/lang/String;)J
    .locals 2

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getDataTotalSize(ILjava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataTotalSize key failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxyService"

    const-string v1, "tpdlnative"

    .line 679
    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public getPlayInfo(J)Ljava/lang/Object;
    .locals 2

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getPlayInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayInfo type failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxyService"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getPlayInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayInfo key failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxyService"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayerBufferLength()J
    .locals 4

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->getPlayerBufferLength()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayerBufferLength failed, error:"

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
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onDownloadCdnUrlExpired(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadCdnUrlExpired(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCdnUrlExpired failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxyService"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 510
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onDownloadCdnUrlInfoUpdate failed, error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string p4, "tpdlnative"

    invoke-static {p3, p2, p4, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 3

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCdnUrlUpdate failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxyService"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadError(IILjava/lang/String;)V
    .locals 1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadError(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 466
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadError failed, error:"

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

.method public onDownloadFinish()V
    .locals 4

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadFinish failed, error:"

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

.method public onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 10

    move-object v1, p0

    .line 440
    :try_start_0
    iget-object v0, v1, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 441
    iget-object v2, v1, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownloadProgressUpdate failed, error:"

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

.method public onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProtocolUpdate failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxyService"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadStatusUpdate(I)V
    .locals 3

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onDownloadStatusUpdate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStatusUpdate failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxyService"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    :try_start_0
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 475
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 478
    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 481
    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    iget-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz p2, :cond_3

    .line 484
    iget-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {p2, p1, p5}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onPlayCallback(ILjava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 487
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onPlayCallback failed, error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string p4, "tpdlnative"

    invoke-static {p3, p2, p4, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onReadData(ILjava/lang/String;JJ)I
    .locals 8

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onReadData(ILjava/lang/String;JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 653
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onReadData key failed, error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string p4, "tpdlnative"

    .line 653
    invoke-static {p3, p2, p4, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onStartReadData(ILjava/lang/String;JJ)I
    .locals 8

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 637
    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onStartReadData(ILjava/lang/String;JJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 640
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onStartReadData key failed, error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string p4, "tpdlnative"

    .line 640
    invoke-static {p3, p2, p4, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onStopReadData(ILjava/lang/String;I)I
    .locals 1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy$2;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl;->onStopReadData(ILjava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 666
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopReadData key failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxyService"

    const-string v0, "tpdlnative"

    .line 666
    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
