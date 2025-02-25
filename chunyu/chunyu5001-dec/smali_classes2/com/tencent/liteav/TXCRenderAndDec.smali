.class public Lcom/tencent/liteav/TXCRenderAndDec;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCRenderAndDec.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/renderer/a$a;
.implements Lcom/tencent/liteav/renderer/f;
.implements Lcom/tencent/liteav/videodecoder/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/TXCRenderAndDec$a;,
        Lcom/tencent/liteav/TXCRenderAndDec$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TXCRenderAndDec"


# instance fields
.field private mConfig:Lcom/tencent/liteav/d;

.field private mContext:Landroid/content/Context;

.field private mCurrentRenderPts:J

.field private mCustomRenderFrameBufferId:I

.field private mDecListener:Lcom/tencent/liteav/TXCRenderAndDec$a;

.field private mEnableDecoderChange:Z

.field private mEnableLimitHWDecCache:Z

.field private mEnableRestartDecoder:Z

.field private mFirstRender:Z

.field private mFrameDecErrCnt:J

.field private mIsRendering:Z

.field private mLastRenderCalculateTS:J

.field private mLastRenderFrameCount:J

.field private mLastReqKeyFrameTS:J

.field private mNotifyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

.field private mRealTime:Z

.field private mRenderAndDecDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/TXCRenderAndDec$b;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderFrameCount:J

.field private mRenderMode:I

.field private mRenderRotation:I

.field private mStreamType:I

.field private mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

.field private mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

.field private mVideoFrameListener:Lcom/tencent/liteav/k;

.field private mVideoRender:Lcom/tencent/liteav/renderer/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableLimitHWDecCache:Z

    .line 49
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    .line 50
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableDecoderChange:Z

    .line 51
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableRestartDecoder:Z

    .line 52
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    .line 55
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    const/4 v2, -0x1

    .line 56
    iput v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    .line 58
    sget-object v2, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    iput-object v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    .line 61
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    .line 62
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    .line 64
    iput v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    const-wide/16 v2, 0x0

    .line 65
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFrameDecErrCnt:J

    .line 67
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastReqKeyFrameTS:J

    .line 68
    iput-boolean v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFirstRender:Z

    .line 69
    iput v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderMode:I

    .line 70
    iput v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderRotation:I

    .line 71
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderCalculateTS:J

    .line 72
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderFrameCount:J

    .line 73
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderFrameCount:J

    .line 74
    iput-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCurrentRenderPts:J

    .line 147
    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mDecListener:Lcom/tencent/liteav/TXCRenderAndDec$a;

    .line 77
    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/basic/f/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private notifyEvent(ILjava/lang/String;)V
    .locals 4

    .line 400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVT_USERID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EVT_ID"

    .line 402
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string v1, "EVT_MSG"

    .line 405
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    iget p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    const-string v1, "EVT_STREAM_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    iget-object p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mNotifyListener:Ljava/lang/ref/WeakReference;

    invoke-static {p2, p1, v0}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    return-void
.end method

.method private requestKeyFrame()V
    .locals 6

    .line 664
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 665
    iget-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastReqKeyFrameTS:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 666
    iput-wide v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastReqKeyFrameTS:J

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestKeyFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderAndDecDelegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/TXCRenderAndDec$b;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/TXCRenderAndDec$b;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private startDecode()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->startDecode(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private startDecode(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->stop()V

    .line 379
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableHWDec(Z)V

    .line 380
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->B:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->config(Lorg/json/JSONArray;)V

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trtc_ start decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean v2, v2, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCRenderAndDec"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 383
    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setup(Landroid/graphics/SurfaceTexture;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    .line 384
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setUserId(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->start()I

    goto :goto_0

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean p1, p1, Lcom/tencent/liteav/d;->h:Z

    if-nez p1, :cond_1

    .line 387
    move-object p1, v1

    check-cast p1, Landroid/view/Surface;

    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setup(Landroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    .line 388
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setUserId(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->start()I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public decVideo(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 0

    return-void
.end method

.method public enableDecoderChange(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableDecoderChange:Z

    return-void
.end method

.method public enableLimitDecCache(Z)V
    .locals 1

    .line 365
    iput-boolean p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableLimitHWDecCache:Z

    .line 366
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableLimitDecCache(Z)V

    :cond_0
    return-void
.end method

.method public enableReport(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->c(Z)V

    :cond_0
    return-void
.end method

.method public enableRestartDecoder(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableRestartDecoder:Z

    return-void
.end method

.method public getAVNetRecvInterval()J
    .locals 2

    const/16 v0, 0x17dc

    const/4 v1, 0x2

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->getLongValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAVPlayInterval()J
    .locals 2

    const/16 v0, 0x17db

    const/4 v1, 0x2

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->getLongValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConfig()Lcom/tencent/liteav/d;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    return-object v0
.end method

.method public getCurrentRenderPts()J
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCurrentRenderPts:J

    return-wide v0
.end method

.method public getStreamType()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    return v0
.end method

.method public getVideoCacheDuration()J
    .locals 2

    const/16 v0, 0x17d8

    const/4 v1, 0x2

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->getIntValue(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoCacheFrameCount()J
    .locals 2

    const/16 v0, 0x17d9

    const/4 v1, 0x2

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->getIntValue(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDecCacheFrameCount()I
    .locals 2

    const/16 v0, 0x17da

    const/4 v1, 0x2

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->getIntValue(II)I

    move-result v0

    return v0
.end method

.method public getVideoGop()I
    .locals 1

    const/16 v0, 0x1bd0

    .line 325
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->getIntValue(I)I

    move-result v0

    return v0
.end method

.method public getVideoRender()Lcom/tencent/liteav/renderer/e;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    return-object v0
.end method

.method public isRendering()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    return v0
.end method

.method public onDecodeFailed(I)V
    .locals 5

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video decode failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "use h265 softdecoder but not set h265 softdecoder to sdk, isH265SoftDecodeExist= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-static {}, Lcom/tencent/liteav/basic/a;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/tencent/liteav/basic/a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 584
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz p1, :cond_2

    .line 585
    invoke-virtual {p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->isH265()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/liteav/d;->h:Z

    .line 587
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->restart(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x4

    if-ne v0, p1, :cond_1

    const/16 p1, -0x908

    const-string v0, "h265 softdecoder start fail."

    .line 591
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->notifyEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->requestKeyFrame()V

    const/16 p1, 0x4276

    .line 594
    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    iget-wide v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFrameDecErrCnt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFrameDecErrCnt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->setStatusValue(IILjava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDecodeFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p8

    .line 501
    iput-wide v2, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mCurrentRenderPts:J

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v4, :cond_0

    if-eq v4, v3, :cond_0

    if-eq v4, v2, :cond_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    mul-int/lit8 v4, v4, 0x5a

    rsub-int v4, v4, 0x168

    .line 505
    :cond_1
    iget-object v5, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameListener:Lcom/tencent/liteav/k;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 507
    iget-object v6, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v7, Lcom/tencent/liteav/basic/enums/b;->b:Lcom/tencent/liteav/basic/enums/b;

    if-eq v6, v7, :cond_2

    iget-object v6, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v7, Lcom/tencent/liteav/basic/enums/b;->e:Lcom/tencent/liteav/basic/enums/b;

    if-ne v6, v7, :cond_5

    .line 509
    :cond_2
    iget-object v6, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v6, :cond_3

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->clone()Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v1

    .line 512
    :goto_0
    iget v7, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderRotation:I

    add-int/2addr v7, v4

    rem-int/lit16 v7, v7, 0x168

    iput v7, v6, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->rotation:I

    .line 513
    iget-object v7, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v8, Lcom/tencent/liteav/basic/enums/b;->e:Lcom/tencent/liteav/basic/enums/b;

    if-ne v7, v8, :cond_4

    .line 514
    invoke-virtual {v6}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->loadNV21BufferFromI420Buffer()V

    .line 516
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-interface {v5, v7, v8, v6}, Lcom/tencent/liteav/k;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    .line 519
    :cond_5
    iget-boolean v5, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mFirstRender:Z

    const-wide/16 v6, 0x0

    if-nez v5, :cond_8

    .line 520
    iput-boolean v3, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mFirstRender:Z

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x138f

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    iget v15, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    const-string v14, ""

    invoke-static/range {v8 .. v15}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 524
    iget-object v3, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-nez v3, :cond_6

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v3

    const v5, 0x9c56

    iget v8, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-static {v3, v5, v6, v7, v8}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 527
    :cond_6
    iget-object v3, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v3, :cond_7

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v3

    const v5, 0x9c5d

    iget-object v8, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v8}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->GetDecodeFirstFrameTS()J

    move-result-wide v8

    iget v10, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-static {v3, v5, v8, v9, v10}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 530
    :cond_7
    iget v3, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    if-ne v3, v2, :cond_8

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d04

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;I)V

    .line 535
    :cond_8
    iget-object v2, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v2, :cond_9

    move/from16 v3, p2

    move/from16 v5, p3

    .line 536
    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;III)V

    goto :goto_1

    .line 539
    :cond_9
    iget-wide v1, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderCalculateTS:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_a

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderCalculateTS:J

    .line 541
    iput-wide v6, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderFrameCount:J

    .line 542
    iput-wide v6, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderFrameCount:J

    goto :goto_1

    .line 544
    :cond_a
    iget-wide v1, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderFrameCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderFrameCount:J

    :goto_1
    return-void
.end method

.method public onDecoderChange(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x83a

    if-ne p1, v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iput-boolean v0, v1, Lcom/tencent/liteav/d;->h:Z

    .line 420
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_3

    .line 422
    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->restart(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, -0x900

    if-ne p1, v1, :cond_2

    .line 425
    invoke-static {}, Lcom/tencent/liteav/basic/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->h:Z

    .line 427
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->restart(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x7e4

    if-ne p1, v0, :cond_3

    const-string p1, "TXCRenderAndDec"

    const-string p2, "decoding too many frame(>40) without output! request key frame now."

    .line 434
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->requestKeyFrame()V

    return-void

    .line 438
    :cond_3
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    const-string v1, "EVT_STREAM_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mNotifyListener:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play decode when surface texture create hw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 452
    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v3, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setup(Landroid/graphics/SurfaceTexture;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean v0, v0, Lcom/tencent/liteav/d;->h:Z

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->startDecode(Landroid/graphics/SurfaceTexture;)V

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->resetPeriodStatistics()V

    .line 458
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->enableReport(Z)V

    return-void
.end method

.method public onSurfaceTextureDestroy(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "TXCRenderAndDec"

    :try_start_0
    const-string v1, "play:stop decode when surface texture release"

    .line 464
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->stop()V

    .line 472
    :cond_0
    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 473
    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    invoke-static {v1}, Lcom/tencent/liteav/basic/e/g;->a(I)V

    .line 474
    iput v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->d()V

    const/4 v1, 0x0

    .line 478
    iput-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mDecListener:Lcom/tencent/liteav/TXCRenderAndDec$a;

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mDecListener:Lcom/tencent/liteav/TXCRenderAndDec$a;

    invoke-interface {v1, p1}, Lcom/tencent/liteav/TXCRenderAndDec$a;->a(Landroid/graphics/SurfaceTexture;)V

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->resetPeriodStatistics()V

    const/4 p1, 0x0

    .line 486
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->enableReport(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "onSurfaceTextureDestroy failed."

    .line 489
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTextureProcess(IIII)V
    .locals 5

    .line 604
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameListener:Lcom/tencent/liteav/k;

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;-><init>()V

    .line 610
    iput p2, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    .line 611
    iput p3, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    .line 612
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->pts:J

    .line 613
    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderRotation:I

    add-int/2addr p4, v2

    rem-int/lit16 p4, p4, 0x168

    iput p4, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->rotation:I

    .line 615
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v2, Lcom/tencent/liteav/basic/enums/b;->f:Lcom/tencent/liteav/basic/enums/b;

    const v3, 0x8d40

    if-ne p4, v2, :cond_2

    .line 616
    iput p1, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->textureId:I

    .line 617
    invoke-static {}, Lcom/tencent/liteav/basic/e/g;->d()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->eglContext:Ljava/lang/Object;

    .line 618
    iget p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 619
    invoke-static {}, Lcom/tencent/liteav/basic/e/g;->c()I

    move-result p2

    iput p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    .line 621
    :cond_1
    iget p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/e/g;->a(II)V

    .line 623
    iget p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 624
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameListener:Lcom/tencent/liteav/k;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-interface {p1, p2, p3, v1}, Lcom/tencent/liteav/k;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    .line 625
    iget p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCustomRenderFrameBufferId:I

    invoke-static {p1}, Lcom/tencent/liteav/basic/e/g;->b(I)V

    goto/16 :goto_2

    .line 626
    :cond_2
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v2, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    if-ne p4, v2, :cond_4

    .line 627
    iput p1, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->textureId:I

    .line 628
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    instance-of p2, p1, Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_3

    .line 629
    check-cast p1, Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->eglContext:Ljava/lang/Object;

    .line 631
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-interface {v0, p1, p2, v1}, Lcom/tencent/liteav/k;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    goto :goto_2

    .line 633
    :cond_4
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz p4, :cond_5

    .line 634
    invoke-virtual {p4}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->isHardwareDecode()Z

    move-result p4

    if-nez p4, :cond_5

    return-void

    .line 638
    :cond_5
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    if-nez p4, :cond_8

    .line 639
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    sget-object v2, Lcom/tencent/liteav/basic/enums/b;->e:Lcom/tencent/liteav/basic/enums/b;

    const/4 v4, 0x1

    if-ne p4, v2, :cond_6

    .line 640
    new-instance p4, Lcom/tencent/liteav/beauty/a/a;

    const/4 v2, 0x3

    invoke-direct {p4, v2}, Lcom/tencent/liteav/beauty/a/a;-><init>(I)V

    iput-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    goto :goto_0

    .line 642
    :cond_6
    new-instance p4, Lcom/tencent/liteav/beauty/a/a;

    invoke-direct {p4, v4}, Lcom/tencent/liteav/beauty/a/a;-><init>(I)V

    iput-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    .line 644
    :goto_0
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p4, v4}, Lcom/tencent/liteav/basic/e/f;->a(Z)V

    .line 645
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p4}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 646
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p4, p2, p3}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    goto :goto_1

    :cond_7
    const-string p4, "TXCRenderAndDec"

    const-string v2, "throwVideoFrame->release mVideoFrameFilter"

    .line 648
    invoke-static {p4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 649
    iput-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    .line 652
    :cond_8
    :goto_1
    iget-object p4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    if-eqz p4, :cond_9

    const/4 p4, 0x0

    .line 653
    invoke-static {p4, p4, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 654
    iget-object v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v2, p2, p3}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    .line 655
    iget-object p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/basic/e/f;->b(I)I

    .line 656
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRGBA2YUVFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/e/f;->m()I

    move-result p1

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 657
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-interface {v0, p1, p2, v1}, Lcom/tencent/liteav/k;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    .line 658
    invoke-static {v3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onVideoSizeChange(II)V
    .locals 11

    .line 552
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/e;->c(II)V

    .line 556
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolution changed to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVT_MSG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "EVT_PARAM1"

    .line 558
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EVT_PARAM2"

    .line 559
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVT_USERID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 562
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_UTC_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0x7d9

    .line 563
    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->onNotifyEvent(ILandroid/os/Bundle;)V

    const/16 v0, 0x138b

    .line 565
    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/liteav/TXCRenderAndDec;->setStatusValue(IILjava/lang/Object;)Z

    .line 567
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa3

    int-to-long v0, p1

    int-to-long p1, p2

    iget v10, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    const-string v9, ""

    move-wide v5, v0

    move-wide v7, p1

    invoke-static/range {v3 .. v10}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 568
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    const v3, 0x9c42

    iget v4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 569
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x9c43

    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    return-void
.end method

.method public resetPeriodFeelingStatistics()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e;->n()V

    :cond_0
    return-void
.end method

.method public resetPeriodStatistics()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e;->m()V

    :cond_0
    return-void
.end method

.method public restartDecoder()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->isH265()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->restart(Z)V

    :cond_0
    return-void
.end method

.method public setBlockInterval(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/d;)V
    .locals 1

    .line 123
    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    .line 124
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->d:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->b(I)V

    :cond_0
    return-void
.end method

.method public setDecListener(Lcom/tencent/liteav/TXCRenderAndDec$a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mDecListener:Lcom/tencent/liteav/TXCRenderAndDec$a;

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/e;->setID(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setUserId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mNotifyListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderAndDecDelegate(Lcom/tencent/liteav/TXCRenderAndDec$b;)V
    .locals 1

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderAndDecDelegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderMirrorType(I)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderMirrorType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->d(I)V

    :cond_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderMode:I

    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->c(I)V

    :cond_0
    return-void
.end method

.method public setRenderRotation(I)V
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrotation setRenderRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderRotation:I

    .line 280
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->e(I)V

    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    .line 355
    iput p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    .line 356
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->a(I)V

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setStreamType(I)V

    :cond_1
    return-void
.end method

.method public setVideoFrameListener(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameListener:Lcom/tencent/liteav/k;

    .line 109
    iput-object p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameFormat:Lcom/tencent/liteav/basic/enums/b;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoFrameListener->enter listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXCRenderAndDec"

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz p2, :cond_1

    instance-of p2, p2, Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const-string p1, "setCustomRenderListener-> clean listener."

    .line 113
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    check-cast p1, Lcom/tencent/liteav/renderer/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    goto :goto_0

    :cond_0
    const-string p1, "setCustomRenderListener-> set listener."

    .line 116
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    check-cast p1, Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoRender(Lcom/tencent/liteav/renderer/e;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set video render "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    .line 84
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->setID(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->a(I)V

    .line 88
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/basic/c/b;)V

    .line 89
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderMode:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->c(I)V

    .line 90
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderRotation:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->e(I)V

    .line 91
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoFrameListener:Lcom/tencent/liteav/k;

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    instance-of v0, p1, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mConfig:Lcom/tencent/liteav/d;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    iget p1, p1, Lcom/tencent/liteav/d;->d:I

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/e;->b(I)V

    :cond_2
    return-void
.end method

.method public start(Z)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start render dec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-boolean p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFrameDecErrCnt:J

    .line 165
    iput-wide v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastReqKeyFrameTS:J

    .line 167
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/f;)V

    .line 169
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/e;->e()V

    .line 170
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/e;->setID(Ljava/lang/String;)V

    .line 174
    :cond_0
    new-instance p1, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-direct {p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    .line 175
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setUserId(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setStreamType(I)V

    .line 177
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 178
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 179
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableDecoderChange:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableChange(Z)V

    .line 180
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableLimitHWDecCache:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableLimitDecCache(Z)V

    .line 181
    iget-object p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableRestartDecoder:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableRestart(Z)V

    .line 182
    invoke-direct {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->startDecode()V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    return-void
.end method

.method public startVideo()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->stopVideo()V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    const-wide/16 v1, 0x0

    .line 190
    iput-wide v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mFrameDecErrCnt:J

    .line 191
    iput-wide v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastReqKeyFrameTS:J

    .line 192
    iput-wide v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mCurrentRenderPts:J

    .line 193
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1, p0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/f;)V

    .line 195
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e;->e()V

    .line 196
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/e;->setID(Ljava/lang/String;)V

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start video dec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCRenderAndDec"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-direct {v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    .line 200
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setUserId(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setStreamType(I)V

    .line 202
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 203
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 204
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableDecoderChange:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableChange(Z)V

    .line 205
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableRestartDecoder:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableRestart(Z)V

    .line 206
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iget-boolean v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mEnableLimitHWDecCache:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->enableLimitDecCache(Z)V

    .line 207
    invoke-direct {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->startDecode()V

    .line 208
    iput-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop video render dec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCRenderAndDec"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    .line 230
    iput-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRealTime:Z

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->stop()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 239
    invoke-virtual {v0, v2}, Lcom/tencent/liteav/renderer/e;->a(Z)V

    .line 240
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/f;)V

    :cond_1
    return-void
.end method

.method public stopVideo()V
    .locals 4

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mIsRendering:Z

    .line 214
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop video dec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/TXCRenderAndDec;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TXCRenderAndDec"

    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 217
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 218
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    invoke-virtual {v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->stop()V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/renderer/e;->a(Z)V

    .line 223
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/f;)V

    :cond_1
    return-void
.end method

.method public updateLoadInfo()V
    .locals 10

    .line 333
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    if-eqz v0, :cond_1

    const/16 v1, 0x138a

    .line 334
    iget v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->isHardwareDecode()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->setStatusValue(IILjava/lang/Object;)Z

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mVideoRender:Lcom/tencent/liteav/renderer/e;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e;->o()V

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    iget-wide v2, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderCalculateTS:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    .line 342
    iget-wide v4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mRenderFrameCount:J

    iget-wide v6, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderFrameCount:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    long-to-double v2, v2

    div-double/2addr v6, v2

    .line 343
    iput-wide v4, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderFrameCount:J

    .line 344
    iput-wide v0, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mLastRenderCalculateTS:J

    const/16 v0, 0x1772

    .line 345
    iget v1, p0, Lcom/tencent/liteav/TXCRenderAndDec;->mStreamType:I

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/liteav/TXCRenderAndDec;->setStatusValue(IILjava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method
