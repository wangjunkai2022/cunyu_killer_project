.class public Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;
.super Ljava/lang/Object;
.source "TXCVideoFfmpegDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/videodecoder/b;


# instance fields
.field private mFirstDec:Z

.field private mListener:Lcom/tencent/liteav/videodecoder/g;

.field private mNativeDecoder:J

.field private mNativeNotify:J

.field private mPps:Ljava/nio/ByteBuffer;

.field private mRawData:[B

.field private mSps:Ljava/nio/ByteBuffer;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 132
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 133
    invoke-static {}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDecode([BJJJ)Z
.end method

.method private native nativeInit(Ljava/lang/ref/WeakReference;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;",
            ">;Z)V"
        }
    .end annotation
.end method

.method private native nativeLoadRawData([BJI)V
.end method

.method private native nativeRelease()V
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;JIIJJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;",
            ">;JIIJJI)V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public GetDecodeCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public config(Landroid/view/Surface;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public config(Lorg/json/JSONArray;)V
    .locals 0

    return-void
.end method

.method public decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 13

    .line 47
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mFirstDec:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mSps:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mPps:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 50
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mPps:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 51
    array-length v4, v0

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v6, v4, [B

    .line 52
    array-length v4, v0

    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v0, v0

    array-length v4, v3

    invoke-static {v3, v2, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-wide v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    iget-wide v9, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    sub-long/2addr v9, v7

    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    int-to-long v11, v0

    move-object v5, p0

    move-wide v7, v3

    invoke-direct/range {v5 .. v12}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeDecode([BJJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFailed(I)V

    .line 61
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mFirstDec:Z

    .line 64
    :cond_1
    iget-object v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    iget-wide v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    int-to-long v9, p1

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeDecode([BJJJ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1, v1}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFailed(I)V

    :cond_2
    return-void
.end method

.method public enableLimitDecCache(Z)V
    .locals 0

    return-void
.end method

.method public isH265()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadNativeData([BJI)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeLoadRawData([BJI)V

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videodecoder/g;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mListener:Lcom/tencent/liteav/videodecoder/g;

    return-void
.end method

.method public setNotifyListener(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mSps:Ljava/nio/ByteBuffer;

    .line 73
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mPps:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mFirstDec:Z

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mVideoWidth:I

    .line 76
    iput p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->mVideoHeight:I

    .line 77
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeInit(Ljava/lang/ref/WeakReference;Z)V

    return p1
.end method

.method public stop()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;->nativeRelease()V

    return-void
.end method
