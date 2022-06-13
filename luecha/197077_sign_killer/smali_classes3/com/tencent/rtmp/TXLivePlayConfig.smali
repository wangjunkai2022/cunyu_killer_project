.class public Lcom/tencent/rtmp/TXLivePlayConfig;
.super Ljava/lang/Object;
.source "TXLivePlayConfig.java"


# instance fields
.field mAutoAdjustCacheTime:Z

.field mAutoRotate:Z

.field mCacheFolderPath:Ljava/lang/String;

.field mCacheTime:F

.field mConnectRetryCount:I

.field mConnectRetryInterval:I

.field mEnableAec:Z

.field mEnableMessage:Z

.field mEnableMetaData:Z

.field mEnableNearestIP:Z

.field mFlvSessionKey:Ljava/lang/String;

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

.field mMaxAutoAdjustCacheTime:F

.field mMaxCacheItems:I

.field mMinAutoAdjustCacheTime:F

.field mRtmpChannelType:I

.field mVideoBlockThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 24
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheTime:F

    .line 26
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    const/16 v0, 0x320

    .line 30
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mVideoBlockThreshold:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryCount:I

    .line 34
    iput v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryInterval:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableAec:Z

    .line 40
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableNearestIP:Z

    .line 42
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMessage:Z

    .line 44
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMetaData:Z

    const-string v2, ""

    .line 46
    iput-object v2, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mFlvSessionKey:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mRtmpChannelType:I

    .line 53
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoRotate:Z

    return-void
.end method


# virtual methods
.method public enableAEC(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableAec:Z

    return-void
.end method

.method public setAutoAdjustCacheTime(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    return-void
.end method

.method public setCacheFolderPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheTime:F

    return-void
.end method

.method public setConnectRetryCount(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryCount:I

    return-void
.end method

.method public setConnectRetryInterval(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryInterval:I

    return-void
.end method

.method public setEnableMessage(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMessage:Z

    return-void
.end method

.method public setEnableMetaData(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMetaData:Z

    return-void
.end method

.method public setEnableNearestIP(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableNearestIP:Z

    return-void
.end method

.method public setFlvSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mFlvSessionKey:Ljava/lang/String;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setMaxAutoAdjustCacheTime(F)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxCacheItems:I

    return-void
.end method

.method public setMinAutoAdjustCacheTime(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    return-void
.end method

.method public setRtmpChannelType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mRtmpChannelType:I

    return-void
.end method

.method public setVideoBlockThreshold(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mVideoBlockThreshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxAutoAdjustCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinAutoAdjustCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoAdjustCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoBlockThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mVideoBlockThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectRetryInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableAec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableAec:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMetaData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
