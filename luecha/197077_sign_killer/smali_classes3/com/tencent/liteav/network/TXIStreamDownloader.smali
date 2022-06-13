.class public abstract Lcom/tencent/liteav/network/TXIStreamDownloader;
.super Ljava/lang/Object;
.source "TXIStreamDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXIStreamDownloader$a;
    }
.end annotation


# instance fields
.field public connectRetryInterval:I

.field public connectRetryLimit:I

.field public connectRetryTimes:I

.field protected mApplicationContext:Landroid/content/Context;

.field protected mEnableMessage:Z

.field protected mEnableMetaData:Z

.field protected mFlvSessionKey:Ljava/lang/String;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsRunning:Z

.field protected mListener:Lcom/tencent/liteav/network/l;

.field protected mMessageNotifyListener:Lcom/tencent/liteav/network/k;

.field protected mNotifyListener:Lcom/tencent/liteav/basic/c/b;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mPayloadType:I

.field protected mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

.field protected mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    .line 29
    iput-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    .line 30
    iput-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mMessageNotifyListener:Lcom/tencent/liteav/network/k;

    .line 32
    iput-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mApplicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mIsRunning:Z

    const-string v1, ""

    .line 36
    iput-object v1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mOriginUrl:Ljava/lang/String;

    .line 38
    iput v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryTimes:I

    const/4 v2, 0x3

    .line 39
    iput v2, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    .line 40
    iput v2, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    .line 42
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mEnableMessage:Z

    .line 44
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mEnableMetaData:Z

    .line 46
    iput-object v1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mUserID:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public PushAudioFrame([BIJI)V
    .locals 0

    return-void
.end method

.method public PushVideoFrame([BIJJI)V
    .locals 0

    return-void
.end method

.method public getConnectCountQuic()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectCountTcp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentStreamUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTS()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlvSessionKey()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastIFrameTS()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRealStreamUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isQuicChannel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecvAudioData([BIII)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_3

    .line 201
    new-instance v0, Lcom/tencent/liteav/basic/structs/a;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/a;-><init>()V

    .line 202
    iput-object p1, v0, Lcom/tencent/liteav/basic/structs/a;->f:[B

    int-to-long p1, p2

    .line 203
    iput-wide p1, v0, Lcom/tencent/liteav/basic/structs/a;->e:J

    const/16 p1, 0xa

    const/4 p2, 0x2

    if-ne p3, p1, :cond_1

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 206
    iput p2, v0, Lcom/tencent/liteav/basic/structs/a;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 208
    iput p1, v0, Lcom/tencent/liteav/basic/structs/a;->d:I

    .line 211
    :goto_0
    iget p1, v0, Lcom/tencent/liteav/basic/structs/a;->d:I

    if-ne p1, p2, :cond_1

    const/16 p1, 0x10

    .line 214
    iput p1, v0, Lcom/tencent/liteav/basic/structs/a;->c:I

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p1, 0x5

    .line 218
    iput p1, v0, Lcom/tencent/liteav/basic/structs/a;->d:I

    .line 220
    :cond_2
    iput p3, v0, Lcom/tencent/liteav/basic/structs/a;->h:I

    .line 221
    iput p4, v0, Lcom/tencent/liteav/basic/structs/a;->g:I

    .line 222
    iget-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    :cond_3
    return-void
.end method

.method public onRecvMetaData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mMessageNotifyListener:Lcom/tencent/liteav/network/k;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/k;->onMetaDataMessage(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onRecvSEIData([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 232
    array-length v0, p1

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mMessageNotifyListener:Lcom/tencent/liteav/network/k;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/k;->onSEIMessage([B)V

    :cond_0
    return-void
.end method

.method public onRecvVideoData([BIJJI)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    .line 183
    iput-object p1, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    .line 184
    iput p2, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    .line 185
    iput-wide p3, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    .line 186
    iput-wide p5, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    .line 187
    iput p7, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    .line 189
    iget-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    :cond_0
    return-void
.end method

.method public requestKeyFrame(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendNotifyEvent(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendNotifyEvent(ILjava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_MSG"

    .line 130
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendNotifyEvent(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 164
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string p3, "EVT_MSG"

    .line 167
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public sendNotifyEvent(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "EVT_MSG"

    .line 149
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setFlvSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/network/l;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    return-void
.end method

.method public setMessageNotifyListener(Lcom/tencent/liteav/network/k;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mMessageNotifyListener:Lcom/tencent/liteav/network/k;

    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mOriginUrl:Ljava/lang/String;

    return-void
.end method

.method public setPayloadType(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mPayloadType:I

    return-void
.end method

.method public setRestartListener(Lcom/tencent/liteav/network/TXIStreamDownloader$a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/tencent/liteav/network/TXIStreamDownloader;->mUserID:Ljava/lang/String;

    return-void
.end method

.method public abstract startDownload(Ljava/util/Vector;ZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;ZZZZ)V"
        }
    .end annotation
.end method

.method public abstract startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;ZZZZ",
            "Lcom/tencent/liteav/basic/b/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopDownload()V
.end method
