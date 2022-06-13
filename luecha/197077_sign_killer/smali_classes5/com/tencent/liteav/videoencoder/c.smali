.class public Lcom/tencent/liteav/videoencoder/c;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXIVideoEncoder.java"


# instance fields
.field protected mEnableXMirror:Z

.field protected mEncFmt:Lorg/json/JSONArray;

.field protected mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

.field private mEncodeFirstGOP:Z

.field protected mGLContextExternal:Ljava/lang/Object;

.field protected mInit:Z

.field protected mInputFilter:Lcom/tencent/liteav/basic/e/f;

.field protected mInputHeight:I

.field protected mInputTextureID:I

.field protected mInputWidth:I

.field protected mListener:Lcom/tencent/liteav/videoencoder/d;

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field protected mRotation:I

.field protected mStreamType:I

.field private mVideoGOPEncode:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mListener:Lcom/tencent/liteav/videoencoder/d;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/tencent/liteav/videoencoder/c;->mInputWidth:I

    .line 22
    iput v1, p0, Lcom/tencent/liteav/videoencoder/c;->mInputHeight:I

    .line 24
    iput v1, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    .line 26
    iput v1, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    const/4 v2, -0x1

    .line 29
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mInputTextureID:I

    .line 34
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mGLContextExternal:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 36
    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 37
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    const/4 v2, 0x2

    .line 38
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mStreamType:I

    .line 39
    iput v1, p0, Lcom/tencent/liteav/videoencoder/c;->mRotation:I

    .line 40
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mEncFmt:Lorg/json/JSONArray;

    .line 41
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/c;->mEnableXMirror:Z

    return-void
.end method


# virtual methods
.method protected callDelegate(I)V
    .locals 1

    .line 149
    new-instance v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videoencoder/c;->callDelegate(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    return-void
.end method

.method protected callDelegate(Landroid/media/MediaFormat;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoencoder/d;->a(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method protected callDelegate(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_2

    .line 156
    iget v1, p0, Lcom/tencent/liteav/videoencoder/c;->mStreamType:I

    iput v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->streamType:I

    .line 157
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videoencoder/d;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    .line 159
    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    const/16 p2, 0xfa6

    const-wide/16 v0, 0x1

    if-nez p1, :cond_1

    .line 160
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    .line 164
    :cond_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    goto :goto_0

    .line 167
    :cond_1
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 168
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    if-nez p1, :cond_2

    .line 169
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public enableNearestRPS(I)V
    .locals 0

    return-void
.end method

.method public getEncodeCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRealBitrate()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRealFPS()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    return v0
.end method

.method public isH265Encoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEncodeFinished(IJJ)V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 184
    invoke-interface/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/d;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public pushVideoFrame(IIIJ)J
    .locals 0

    const-wide/32 p1, 0x989682

    return-wide p1
.end method

.method public pushVideoFrameAsync(IIIJ)J
    .locals 0

    const-wide/32 p1, 0x989682

    return-wide p1
.end method

.method public pushVideoFrameSync(IIIJ)J
    .locals 0

    const-wide/32 p1, 0x989682

    return-wide p1
.end method

.method public restartIDR()V
    .locals 0

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    return-void
.end method

.method public setBitrateFromQos(II)V
    .locals 0

    return-void
.end method

.method public setEncodeIdrFpsFromQos(I)V
    .locals 0

    return-void
.end method

.method public setFPS(I)V
    .locals 0

    return-void
.end method

.method public setGLFinishedTextureNeed(Z)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videoencoder/d;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/c;->mListener:Lcom/tencent/liteav/videoencoder/d;

    return-void
.end method

.method public setRPSRefBitmap(IIJ)V
    .locals 0

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/tencent/liteav/videoencoder/c;->mRotation:I

    return-void
.end method

.method public setXMirror(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/tencent/liteav/videoencoder/c;->mEnableXMirror:Z

    return-void
.end method

.method public signalEOSAndFlush()V
    .locals 0

    return-void
.end method

.method public start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    .line 54
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    .line 55
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mInputWidth:I

    .line 56
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mInputHeight:I

    .line 57
    iget-object v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mGLContextExternal:Ljava/lang/Object;

    .line 58
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->streamType:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mStreamType:I

    .line 59
    iget-object p1, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encFmt:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/c;->mEncFmt:Lorg/json/JSONArray;

    :cond_0
    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    const p1, 0x989682

    return p1
.end method

.method public stop()V
    .locals 0

    return-void
.end method
