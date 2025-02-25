.class public abstract Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/decoder/ITPMediaCodecDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;,
        Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$BufferCallback;
    }
.end annotation


# static fields
.field private static final DUMP_BYTE_BUFFER_BYTES:I = 0x64

.field private static final DUMP_ONE_LINE_BYTES:I = 0x14

.field private static final MEDIA_CODEC_ERROR_INDEX:I = -0x3e8

.field private static MEDIA_CODEC_INPUT_TIMEOUT_US:J = 0x7d0L

.field private static MEDIA_CODEC_OUTPUT_TIMEOUT_US:J = 0x7d0L

.field private static final MSG_FLUSH:I = 0x3ea

.field private static final MSG_RELEASE:I = 0x3eb

.field private static final MSG_RELEASE_OUTPUT_BUFFER:I = 0x3e8

.field private static final MSG_SET_OUTPUT_SURFACE:I = 0x3e9


# instance fields
.field private mCodec:Lcom/tencent/thumbplayer/h/b;

.field protected mCodecId:I

.field private mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private mDecodeThread:Landroid/os/HandlerThread;

.field private mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

.field protected mDolbyVisionLevel:I

.field protected mDolbyVisionProfile:I

.field protected mDrmType:I

.field protected mEnableAsyncMode:Z

.field private mEnableAudioPassThrough:Z

.field protected mEnableMediaCodecReuse:Z

.field private mEnableSetOutputSurfaceApi:Z

.field private mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

.field private mHandlerResult:I

.field private mInputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaCrypto:Landroid/media/MediaCrypto;

.field private mOutputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartCodecOnException:Z

.field protected mStarted:Z

.field protected mSurface:Landroid/view/Surface;

.field private final mThreadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    new-instance v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;-><init>()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableSetOutputSurfaceApi:Z

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mOutputQueue:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mRestartCodecOnException:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAudioPassThrough:Z

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableMediaCodecReuse:Z

    iput v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionProfile:I

    iput v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionLevel:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mThreadLock:Ljava/lang/Object;

    iput v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mHandlerResult:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodecId:I

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mOutputQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleRelease()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onReleaseOutputBuffer(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;Landroid/view/Surface;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onSetOutputSurface(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onFlush()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)I
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onRelease()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleMessageComplete(I)V

    return-void
.end method

.method private bufferSizeCheck(Ljava/nio/ByteBuffer;[B)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeAsync, not enough space, byteBuffer.remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", buffer size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v0, 0x64

    const/16 v2, 0x14

    :try_start_0
    invoke-direct {p0, p2, p1, v0, v2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->dumpByteArray([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private decodeAsync([BZJZ)I
    .locals 10

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/h/b;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->bufferSizeCheck(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v2, 0x0

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-eqz p5, :cond_3

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-eqz p2, :cond_2

    move v9, v1

    goto :goto_0

    :cond_2
    move v9, v2

    :goto_0
    move-wide v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/thumbplayer/h/b;->a(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    array-length v6, p1

    if-eqz p2, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    move-wide v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/thumbplayer/h/b;->a(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onMediaCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method private dequeueOutputBufferAsync()Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mOutputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    :cond_0
    return-object v0
.end method

.method private dumpByteArray([BIII)V
    .locals 8

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-lez p3, :cond_4

    array-length v0, p1

    if-ge p2, v0, :cond_4

    if-ge p2, p3, :cond_4

    if-lez p4, :cond_4

    array-length v0, p1

    if-gt v0, p3, :cond_0

    array-length p3, p1

    :cond_0
    sub-int/2addr p3, p2

    const/16 v0, 0x64

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr p3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "dumpByteArray begin:"

    invoke-static {v2, v1, v3}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge p2, p3, :cond_3

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v6

    rem-int v4, v3, p4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_2
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dumpByteArray end."

    invoke-static {v2, p1, p2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private exitDecodeThread()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private flushAsync()I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "flushAsync: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->waitingForHandleMessage(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private handleFlush()I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "handleFlush: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-nez v0, :cond_0

    const/16 v0, 0x68

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/b;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onMediaCodecException(Ljava/lang/Exception;)I

    move-result v0

    return v0
.end method

.method private handleMessageComplete(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mHandlerResult:I

    iget-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mThreadLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method private handleRelease()I
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-nez v0, :cond_0

    const/16 v0, 0x65

    return v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/b;->g()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop: failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/h/b;->g()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    return v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/h/b;->g()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    throw v0
.end method

.method private handleReleaseOutputBuffer(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onMediaCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method private handleSetOutputSurface(Landroid/view/Surface;)I
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setOutputSurface: set the same surface."

    invoke-static {v1, p1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableSetOutputSurfaceApi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/b;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutputSurface onMediaCodecException:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    return v2
.end method

.method private handleSignalEndOfStream(I)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/thumbplayer/h/b;->a(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignalEndOfStream: failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method private initMediaCodecInternal()Z
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/vnd.dts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initMediaCodec current mime type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is audio dts, need set input timeout to 0!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->MEDIA_CODEC_INPUT_TIMEOUT_US:J

    sput-wide v4, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->MEDIA_CODEC_OUTPUT_TIMEOUT_US:J

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initMediaCodec mime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " level:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDrmType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    invoke-static {v4}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->isInDRMLevel1Blacklist(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " DrmType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fallback to L3."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_2
    iget v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionProfile:I

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionProfile:I

    iget v6, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDolbyVisionLevel:I

    invoke-static {v4, v5, v6, v2}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->getDolbyVisionDecoderName(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->getDecoderName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initMediaCodec codecName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " secureComponent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "initMediaCodec failed, codecName is null."

    invoke-static {v0, v2, v3}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-static {v4}, Lcom/tencent/thumbplayer/h/b;->a(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/b;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    iget-boolean v6, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableMediaCodecReuse:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-nez v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Lcom/tencent/thumbplayer/h/b;->a(Z)V

    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    new-instance v6, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$1;

    invoke-direct {v6, p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$1;-><init>(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;)V

    invoke-virtual {v5, v6}, Lcom/tencent/thumbplayer/h/b;->a(Lcom/tencent/thumbplayer/h/a/a;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initMediaCodec codec name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodec EnableAsyncMode\uff01"

    invoke-static {v3, v5, v6}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "MediaCodecThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    iget-object v6, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;-><init>(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    new-instance v6, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$BufferCallback;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$BufferCallback;-><init>(Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$1;)V

    iget-object v8, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    invoke-virtual {v5, v6, v8}, Lcom/tencent/thumbplayer/h/b;->a(Lcom/tencent/thumbplayer/h/b$a;Landroid/os/Handler;)V

    :cond_6
    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p0, v5}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->configCodec(Lcom/tencent/thumbplayer/h/b;)V

    iget-object v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v5}, Lcom/tencent/thumbplayer/h/b;->e()V

    iput-boolean v7, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    iget v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->getDecoderName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_3

    :cond_7
    move v5, v1

    :goto_3
    new-instance v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;

    invoke-direct {v6}, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;-><init>()V

    iput-boolean v5, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->supportSecureDecoder:Z

    iput-boolean v2, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->supportSecureDecrypt:Z

    iput-object v4, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->componentName:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDrmType:I

    iput v2, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->drmType:I

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM Info: supportSecureDecoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->supportSecureDecoder:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " supportSecureDecrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->supportSecureDecrypt:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " componentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " drmType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/tencent/thumbplayer/core/decoder/TPMediaDrmInfo;->drmType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodecId:I

    invoke-static {v2, v6}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecManager;->onMediaDrmInfo(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return v7

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private onFlush()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mOutputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleFlush()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/h/b;->e()V

    return v0
.end method

.method private onMediaCodecException(Ljava/lang/Exception;)I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaCodecException!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->resetFrameInfo()V

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->processMediaCodecException(Ljava/lang/Exception;)V

    iget-boolean p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mRestartCodecOnException:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->initMediaCodecInternal()Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleRelease()I

    const/16 v2, 0x67

    :goto_0
    return v2
.end method

.method private onRelease()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mOutputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleRelease()I

    move-result v0

    return v0
.end method

.method private onReleaseOutputBuffer(IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleReleaseOutputBuffer(IZ)I

    move-result p1

    return p1
.end method

.method private onSetOutputSurface(Landroid/view/Surface;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleSetOutputSurface(Landroid/view/Surface;)I

    move-result p1

    return p1
.end method

.method private queueInputBuffer([BJZ)I
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/b;->j()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    sget-wide v2, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->MEDIA_CODEC_INPUT_TIMEOUT_US:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/h/b;->a(J)I

    move-result v5

    if-ltz v5, :cond_1

    aget-object v0, v0, v5

    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->bufferSizeCheck(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v10, 0x0

    move-wide v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/thumbplayer/h/b;->a(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    const/4 v6, 0x0

    array-length v7, p1

    const/4 v10, 0x0

    move-wide v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/thumbplayer/h/b;->a(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    if-ne v5, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0x67

    :goto_1
    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onMediaCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method private releaseAsync()I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "releaseAsync: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->waitingForHandleMessage(Landroid/os/Message;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->exitDecodeThread()V

    return v0
.end method

.method private releaseOutputBufferAsync(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->waitingForHandleMessage(Landroid/os/Message;)I

    move-result p1

    return p1
.end method

.method private resetFrameInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    const/16 v1, -0x3e8

    iput v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->bufferIndex:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->ptsUs:J

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->data:[B

    const/16 v1, 0x67

    iput v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    return-void
.end method

.method private selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setOutputSurfaceAsync(Landroid/view/Surface;)I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputSurfaceAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mDecoderHandler:Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder$AsyncDecodeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->waitingForHandleMessage(Landroid/os/Message;)I

    move-result p1

    return p1
.end method

.method private signalEndOfStreamAsync()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleSignalEndOfStream(I)I

    move-result v0

    return v0
.end method

.method private waitingForHandleMessage(Landroid/os/Message;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mThreadLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mHandlerResult:I

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method abstract configCodec(Lcom/tencent/thumbplayer/h/b;)V
.end method

.method public decode([BZJZ)I
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->decodeAsync([BZJZ)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->queueInputBuffer([BJZ)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/16 p1, 0x65

    return p1
.end method

.method public dequeueOutputBuffer()Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->resetFrameInfo()V

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->dequeueOutputBufferAsync()Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    sget-wide v2, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->MEDIA_CODEC_OUTPUT_TIMEOUT_US:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/thumbplayer/h/b;->a(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ltz v1, :cond_4

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM"

    :goto_0
    invoke-static {v3, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    iput v3, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAudioPassThrough:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dequeueOutputBuffer: BUFFER_FLAG_CODEC_CONFIG, AudioPassThrough"

    invoke-static {v3, v2, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    iput v1, v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->bufferIndex:I

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->ptsUs:J

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->processOutputConfigData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    iput v1, v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->bufferIndex:I

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->ptsUs:J

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    const/4 v3, 0x0

    iput v3, v2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->processOutputBuffer(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    goto :goto_2

    :cond_4
    const/4 v4, -0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/b;->i()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->processOutputFormatChanged(Landroid/media/MediaFormat;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    iput v5, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, -0x3

    if-ne v1, v4, :cond_7

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dequeueOutputBuffer: INFO_OUTPUT_BUFFERS_CHANGED!"

    invoke-static {v3, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM!"

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueOutputBuffer: TP_ERROR_DECODE_FAILED! index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    const/16 v1, 0x67

    iput v1, v0, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    :goto_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->onMediaCodecException(Ljava/lang/Exception;)I

    move-result v0

    iput v0, v1, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mFrameInfo:Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;

    return-object v0
.end method

.method public flush()I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "flush: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-nez v0, :cond_0

    const/16 v0, 0x68

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->flushAsync()I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleFlush()I

    move-result v0

    return v0
.end method

.method abstract getLogTag()Ljava/lang/String;
.end method

.method abstract getMimeType()Ljava/lang/String;
.end method

.method protected getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract processMediaCodecException(Ljava/lang/Exception;)V
.end method

.method abstract processOutputBuffer(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
.end method

.method abstract processOutputConfigData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
.end method

.method abstract processOutputFormatChanged(Landroid/media/MediaFormat;)V
.end method

.method public release()I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->releaseAsync()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleRelease()I

    move-result v0

    return v0
.end method

.method public releaseOutputBuffer(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->releaseOutputBufferAsync(IZ)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleReleaseOutputBuffer(IZ)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public setCryptoInfo(I[I[I[B[BI)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    return-void
.end method

.method public setOperateRate(F)I
    .locals 5

    const-string v0, "setOperateRate: "

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "priority"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    const-string v3, "operating-rate"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {v3, v1}, Lcom/tencent/thumbplayer/h/b;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2
.end method

.method public setOutputSurface(Landroid/view/Surface;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setOutputSurfaceAsync(Landroid/view/Surface;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleSetOutputSurface(Landroid/view/Surface;)I

    move-result p1

    return p1
.end method

.method public setParamBool(IZ)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown paramKey: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableMediaCodecReuse:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAudioPassThrough:Z

    const/4 p1, 0x2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOL_SET_IS_AUDIO_PASSTHROUGH mEnableAudioPassThrough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAudioPassThrough:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mStarted:Z

    if-nez p1, :cond_3

    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BOOL_ENABLE_ASYNC_MODE must setup before started!"

    invoke-static {v1, p1, p2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableSetOutputSurfaceApi:Z

    :goto_0
    return v0
.end method

.method public setParamBytes(I[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setParamInt(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setParamLong(IJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setParamObject(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/media/MediaCrypto;

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setParamString(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public signalEndOfStream()I
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "signalEndOfStream: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mCodec:Lcom/tencent/thumbplayer/h/b;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->mEnableAsyncMode:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->signalEndOfStreamAsync()I

    move-result v0

    return v0

    :cond_1
    sget-wide v2, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->MEDIA_CODEC_INPUT_TIMEOUT_US:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/h/b;->a(J)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->handleSignalEndOfStream(I)I

    move-result v0

    return v0

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public startDecoder()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->initMediaCodecInternal()Z

    move-result v0

    return v0
.end method
