.class Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;
.super Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;
.source "TPDownloadProxyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;->startPlay(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;

.field final synthetic val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->this$0:Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPPlayListenerAidl$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvRemainTime()J
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getAdvRemainTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getContentType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPlayClipNo()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getCurrentPlayClipNo()I

    move-result v0

    return v0
.end method

.method public getCurrentPlayOffset()J
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getCurrentPlayOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataFilePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getDataFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDataTotalSize(ILjava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getDataTotalSize(ILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPlayInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 173
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 175
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayerBufferLength()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getPlayerBufferLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public onDownloadCdnUrlExpired(Ljava/util/Map;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    return-void
.end method

.method public onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadError(IILjava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadError(IILjava/lang/String;)V

    return-void
.end method

.method public onDownloadFinish()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadFinish()V

    return-void
.end method

.method public onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    return-void
.end method

.method public onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStatusUpdate(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadStatusUpdate(I)V

    return-void
.end method

.method public onPlayCallback(ILjava/util/List;)I
    .locals 12

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 103
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 105
    iget-object v4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 107
    iget-object v5, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 109
    iget-object v6, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    move v7, p1

    invoke-interface/range {v6 .. v11}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Integer;

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 115
    :cond_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_4
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public onReadData(ILjava/lang/String;JJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onReadData(ILjava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public onStartReadData(ILjava/lang/String;JJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 185
    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onStartReadData(ILjava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public onStopReadData(ILjava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient$1;->val$playListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onStopReadData(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method
