.class public Lcom/tencent/rtmp/TXVodPlayConfig;
.super Ljava/lang/Object;
.source "TXVodPlayConfig.java"


# instance fields
.field autoRotate:Z

.field cacheMp4ExtName:Ljava/lang/String;

.field enableAccurateSeek:Z

.field mCacheFolderPath:Ljava/lang/String;

.field mConnectRetryCount:I

.field mConnectRetryInterval:I

.field public mEnableRenderProcess:Z

.field mExtInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mFirstStartPlayBufferTime:I

.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxCacheItems:I

.field mNextStartPlayBufferTime:I

.field mOverlayIv:Ljava/lang/String;

.field mOverlayKey:Ljava/lang/String;

.field mPlayerType:I

.field public mPreferredResolution:J

.field mTimeout:I

.field maxBufferSize:I

.field maxPreloadSize:I

.field progressInterval:I

.field smoothSwitchBitrate:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryCount:I

    .line 13
    iput v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryInterval:I

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mTimeout:I

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->enableAccurateSeek:Z

    .line 27
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->autoRotate:Z

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->smoothSwitchBitrate:Z

    const-string v2, "mp4"

    .line 31
    iput-object v2, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->cacheMp4ExtName:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxBufferSize:I

    .line 37
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxPreloadSize:I

    .line 39
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mFirstStartPlayBufferTime:I

    .line 41
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mNextStartPlayBufferTime:I

    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mExtInfoMap:Ljava/util/Map;

    .line 52
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mEnableRenderProcess:Z

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPreferredResolution:J

    return-void
.end method


# virtual methods
.method public getPreferredResolution()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPreferredResolution:J

    return-wide v0
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->autoRotate:Z

    return-void
.end method

.method public setCacheFolderPath(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mCacheFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setCacheMp4ExtName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->cacheMp4ExtName:Ljava/lang/String;

    return-void
.end method

.method public setConnectRetryCount(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryCount:I

    return-void
.end method

.method public setConnectRetryInterval(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryInterval:I

    return-void
.end method

.method public setEnableAccurateSeek(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->enableAccurateSeek:Z

    return-void
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mExtInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mExtInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setFirstStartPlayBufferTime(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mFirstStartPlayBufferTime:I

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

    .line 118
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setMaxBufferSize(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxBufferSize:I

    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mMaxCacheItems:I

    return-void
.end method

.method public setMaxPreloadSize(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxPreloadSize:I

    return-void
.end method

.method public setNextStartPlayBufferTime(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mNextStartPlayBufferTime:I

    return-void
.end method

.method public setOverlayIv(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayIv:Ljava/lang/String;

    return-void
.end method

.method public setOverlayKey(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayKey:Ljava/lang/String;

    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPlayerType:I

    return-void
.end method

.method public setPreferredResolution(J)V
    .locals 0

    .line 230
    iput-wide p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPreferredResolution:J

    return-void
.end method

.method public setProgressInterval(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->progressInterval:I

    return-void
.end method

.method public setSmoothSwitchBitrate(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->smoothSwitchBitrate:Z

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayConfig;->mTimeout:I

    return-void
.end method
