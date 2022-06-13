.class public Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;
.super Ljava/lang/Object;
.source "TXCVideoDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/videodecoder/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;
    }
.end annotation


# static fields
.field private static final NEW_DECODER:Z = true

.field private static final TAG:Ljava/lang/String; = "TXCVideoDecoder"

.field private static mDecodeFirstFrameTS:J


# instance fields
.field private mDecFormat:Lorg/json/JSONArray;

.field private mDecoderCacheNum:I

.field private mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

.field mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

.field private mDecoderWrapperHandler:Landroid/os/Handler;

.field private mEnableDecoderChange:Z

.field private mEnableLimitDecCache:Z

.field private mEnableRestartDecoder:Z

.field mH265:Z

.field mHWDec:Z

.field private mNALList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/basic/structs/TXSNALPacket;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContext:J

.field mNeedSortFrame:Z

.field private mNotifyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private mPps:Ljava/nio/ByteBuffer;

.field mRecvFirstFrame:Z

.field private mRestarting:Z

.field private mSps:Ljava/nio/ByteBuffer;

.field private mStreamType:I

.field mSurface:Landroid/view/Surface;

.field private mUserId:Ljava/lang/String;

.field mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 507
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRestarting:Z

    .line 50
    iput v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    .line 51
    iput v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    .line 52
    iput v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    .line 53
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableDecoderChange:Z

    .line 54
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableRestartDecoder:Z

    .line 55
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableLimitDecCache:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecFormat:Lorg/json/JSONArray;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    .line 116
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    .line 117
    iput-boolean v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNeedSortFrame:Z

    .line 118
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRecvFirstFrame:Z

    const-wide/16 v0, 0x0

    .line 119
    sput-wide v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    return-void
.end method

.method private addOneNalToDecoder(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 5

    .line 163
    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "iframe"

    .line 165
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    iget-object v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    const-string v3, "nal"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 167
    iget-wide v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    const-string v0, "pts"

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    iget-wide v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    const-string v0, "dts"

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    const-string v0, "codecId"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x65

    .line 171
    iput v0, p1, Landroid/os/Message;->what:I

    .line 172
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    return-void
.end method

.method private decNALByNewWay(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 12

    .line 182
    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    iget-wide v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    iget v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    iget v8, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->decodeFrame([BJJIIIII)V

    goto :goto_0

    .line 185
    :cond_0
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-object v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    iget v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    iget-wide v6, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v8, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    iget v10, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    iget v11, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeDecodeFrame(J[BIJJII)V

    .line 187
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decNALByOldWay(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 6

    const-string v0, "TXCVideoDecoder"

    .line 193
    :try_start_0
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 194
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRecvFirstFrame:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const-string p1, "play:decode: push nal ignore p frame when not got i frame"

    .line 195
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRecvFirstFrame:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "play:decode: push first i frame"

    .line 199
    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRecvFirstFrame:Z

    .line 203
    :cond_2
    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRestarting:Z

    if-nez v3, :cond_3

    iget v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    if-ne v3, v2, :cond_3

    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    if-nez v3, :cond_3

    const-string v3, "play:decode: hevc decode error  "

    .line 204
    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNotifyListener:Ljava/lang/ref/WeakReference;

    const/16 v4, -0x900

    const-string v5, "h265 Decoding failed"

    invoke-static {v3, v4, v5}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 206
    iput-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRestarting:Z

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    if-eqz v2, :cond_5

    .line 211
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    .line 213
    invoke-direct {p0, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->addOneNalToDecoder(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->addOneNalToDecoder(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 219
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 220
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRestarting:Z

    if-nez p1, :cond_7

    .line 224
    invoke-virtual {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->start()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "decode NAL By Old way failed."

    .line 228
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private decodeFrame([BJJIIIII)V
    .locals 1

    .line 554
    new-instance v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    .line 555
    iput-object p1, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    .line 556
    iput-wide p2, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    .line 557
    iput-wide p4, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    .line 558
    iput p6, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    .line 559
    iput p7, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    .line 560
    iput p10, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-wide p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    .line 564
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 566
    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    .line 569
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->initializeHWDecoderThread()V

    .line 570
    new-instance p2, Lcom/tencent/liteav/videodecoder/f;

    iget-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderWrapperHandler:Landroid/os/Handler;

    .line 571
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/tencent/liteav/videodecoder/f;-><init>(Landroid/os/Looper;)V

    .line 572
    invoke-virtual {p2, p8, p9}, Lcom/tencent/liteav/videodecoder/f;->a(II)V

    .line 573
    invoke-virtual {p2, p0}, Lcom/tencent/liteav/videodecoder/f;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 574
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videodecoder/f;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 575
    iget-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecFormat:Lorg/json/JSONArray;

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videodecoder/f;->a(Lorg/json/JSONArray;)V

    .line 576
    iget-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videodecoder/f;->config(Landroid/view/Surface;)I

    .line 577
    iget-boolean p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableLimitDecCache:Z

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videodecoder/f;->enableLimitDecCache(Z)V

    .line 578
    iget-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSps:Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mPps:Ljava/nio/ByteBuffer;

    iget-boolean p5, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNeedSortFrame:Z

    iget-boolean p6, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/tencent/liteav/videodecoder/f;->start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I

    .line 579
    iget-boolean p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    invoke-direct {p0, p1, p3}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->notifyDecoderStartEvent(ZZ)V

    .line 580
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    if-eqz p1, :cond_2

    .line 583
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videodecoder/b;->decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    .line 585
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private hasSurface()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeHWDecoderThread()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderWrapperHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video_hw_decoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 246
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderWrapperHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private native nativeCreateContext(ZLjava/lang/Object;J)J
.end method

.method private native nativeDecCache(J)V
.end method

.method private native nativeDecodeFrame(J[BIJJII)V
.end method

.method private native nativeDestroyContext(J)V
.end method

.method private native nativeEnableDecodeChange(JZ)V
.end method

.method private native nativeEnableRestartDecoder(JZ)V
.end method

.method private native nativeNotifyHWDecoderError(J)V
.end method

.method private native nativeNotifyPts(JJII)V
.end method

.method private native nativeReStart(JZ)V
.end method

.method private native nativeSetID(JLjava/lang/String;)V
.end method

.method private native nativeSetStreamType(JI)V
.end method

.method private notifyDecoderStartEvent(ZZ)V
    .locals 10

    .line 473
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const-wide/16 v8, 0x1

    if-eqz p1, :cond_0

    move-wide v2, v8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    move-wide v2, v1

    :goto_0
    const-wide/16 v4, -0x1

    iget v7, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    const/16 v1, 0xfa5

    const-string v6, ""

    invoke-static/range {v0 .. v7}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->reportDecoderEvent(ZZ)V

    .line 475
    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const v0, 0x9c5a

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x2

    :goto_1
    iget p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {p2, v0, v8, v9, p1}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    return-void
.end method

.method private onDecodeDone(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJII)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    move v10, p2

    move/from16 v11, p3

    .line 525
    sget-wide v3, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 526
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v3

    sput-wide v3, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FirstFramePath][Video][Decoder] TXCVideoDecoder: decode first frame success. instance:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isHWAcc:false isH265:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TXCVideoDecoder"

    .line 532
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v3, 0x138d

    iget v4, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    sget-wide v5, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 534
    iget-boolean v1, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 535
    :goto_0
    iget-object v3, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v4, 0x138c

    iget v5, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v5, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 537
    :cond_1
    iget-object v12, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v12, :cond_3

    .line 539
    iput v10, v2, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    .line 540
    iput v11, v2, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    move/from16 v9, p8

    .line 541
    iput v9, v2, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->rotation:I

    move-wide/from16 v5, p4

    .line 542
    iput-wide v5, v2, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->pts:J

    move/from16 v1, p9

    .line 543
    iput v1, v2, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->frameType:I

    move-object v1, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-wide/from16 v7, p6

    .line 544
    invoke-interface/range {v1 .. v9}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJI)V

    .line 545
    iget v1, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    if-ne v1, v10, :cond_2

    iget v1, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    if-eq v1, v11, :cond_3

    .line 546
    :cond_2
    iput v10, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    .line 547
    iput v11, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    .line 548
    iget v1, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    iget v2, v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    invoke-interface {v12, v1, v2}, Lcom/tencent/liteav/videodecoder/g;->onVideoSizeChange(II)V

    :cond_3
    return-void
.end method

.method private onStartDecoder(ZZ)V
    .locals 0

    .line 598
    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    .line 599
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    .line 600
    iget-boolean p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->notifyDecoderStartEvent(ZZ)V

    return-void
.end method

.method private reportDecoderEvent(ZZ)V
    .locals 5

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x7d8

    const-string v2, "EVT_ID"

    .line 480
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    const-string v4, "EVT_TIME"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 482
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v2

    const-string v4, "EVT_UTC_TIME"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enables "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "H265 "

    .line 485
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "H264 "

    .line 487
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "hardware "

    .line 490
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p2, "software "

    .line 492
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p2, "decoding"

    .line 494
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "EVT_MSG"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    const-string p2, "EVT_PARAM1"

    .line 496
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNotifyListener:Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start video decoder:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCVideoDecoder"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDecodeThread()I
    .locals 11

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    if-eqz v0, :cond_0

    const-string v0, "TXCVideoDecoder"

    const-string v1, "play:decode: start decoder error when decoder is started"

    .line 435
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 436
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    .line 439
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRestarting:Z

    .line 440
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VDecoder"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 442
    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    if-eqz v2, :cond_1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoWDec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoSWDec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setName(Ljava/lang/String;)V

    .line 448
    :goto_0
    new-instance v2, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;-><init>(Landroid/os/Looper;)V

    .line 450
    iget-boolean v4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    iget-boolean v5, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    iget-object v6, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    iget-object v7, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSps:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mPps:Ljava/nio/ByteBuffer;

    move-object v3, v2

    move-object v9, p0

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a(ZZLandroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videodecoder/g;Lcom/tencent/liteav/basic/c/b;)V

    const-string v1, "TXCVideoDecoder"

    const-string v3, "play:decode: start decode thread"

    .line 451
    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x64

    .line 454
    iput v3, v1, Landroid/os/Message;->what:I

    .line 455
    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNeedSortFrame:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->sendMessage(Landroid/os/Message;)Z

    .line 458
    iput-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    .line 459
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopDecodeThread()V
    .locals 2

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderHandler:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;

    .line 469
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized stopHWDecoder()V
    .locals 2

    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0}, Lcom/tencent/liteav/videodecoder/b;->stop()V

    .line 591
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 592
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 593
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uninitializeHWDecoderThread()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderWrapperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderWrapperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;-><init>(Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public GetDecodeFirstFrameTS()J
    .locals 2

    .line 429
    sget-wide v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    return-wide v0
.end method

.method public config(Lorg/json/JSONArray;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecFormat:Lorg/json/JSONArray;

    return-void
.end method

.method public enableChange(Z)V
    .locals 2

    .line 88
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableDecoderChange:Z

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableDecoderChange:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeEnableDecodeChange(JZ)V

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableHWDec(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    return-void
.end method

.method public enableLimitDecCache(Z)V
    .locals 1

    .line 95
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableLimitDecCache:Z

    .line 96
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    if-eqz p1, :cond_0

    .line 98
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableLimitDecCache:Z

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videodecoder/b;->enableLimitDecCache(Z)V

    :cond_0
    return-void
.end method

.method public enableRestart(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableRestartDecoder:Z

    return-void
.end method

.method public getDecoderCacheNum()I
    .locals 2

    .line 350
    iget v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isH265()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    return v0
.end method

.method public isHardwareDecode()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDecodeFailed(I)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x138e

    invoke-static {v0, v3, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFailed(I)V

    .line 411
    :cond_0
    monitor-enter p0

    .line 412
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeDecCache(J)V

    .line 413
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDecodeFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJI)V
    .locals 18

    move-object/from16 v8, p0

    .line 356
    sget-wide v0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 357
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FirstFramePath][Video][Decoder] TXCVideoDecoder: decode first frame success. instance:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isHWAcc:true isH265:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXCVideoDecoder"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v2, 0x138d

    iget v3, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    sget-wide v4, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 364
    iget-boolean v0, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 365
    :goto_0
    iget-object v2, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v3, 0x138c

    iget v4, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    .line 367
    :cond_1
    iget-object v9, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v9, :cond_2

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move/from16 v17, p8

    .line 368
    invoke-interface/range {v9 .. v17}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJI)V

    .line 370
    :cond_2
    iget v0, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    if-lez v0, :cond_3

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    :cond_3
    if-nez p1, :cond_4

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide v2, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeNotifyPts(JJII)V

    .line 374
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 377
    :cond_4
    :goto_1
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0}, Lcom/tencent/liteav/videodecoder/b;->GetDecodeCost()I

    move-result v0

    .line 378
    iget-boolean v1, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    if-eqz v1, :cond_5

    .line 379
    iget-object v1, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v2, 0x1f44

    iget v3, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    goto :goto_2

    .line 381
    :cond_5
    iget-object v1, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    const/16 v2, 0x1f43

    iget v3, v8, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public onDecoderChange(Ljava/lang/String;Z)V
    .locals 2

    .line 399
    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mH265:Z

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecoderChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , isH265 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVideoDecoder"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->reportDecoderEvent(ZZ)V

    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x83a

    if-eq p1, v0, :cond_0

    const/16 v0, -0x900

    if-ne p1, v0, :cond_1

    .line 66
    :cond_0
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeNotifyHWDecoderError(J)V

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNotifyListener:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onVideoSizeChange(II)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_1

    .line 389
    iget v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    if-eq v1, p2, :cond_1

    .line 390
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    .line 391
    iput p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    .line 392
    iget p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoWidth:I

    iget p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoHeight:I

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videodecoder/g;->onVideoSizeChange(II)V

    :cond_1
    return-void
.end method

.method public pushNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->decNALByNewWay(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    return-void
.end method

.method public restart(Z)V
    .locals 2

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    .line 331
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeReStart(JZ)V

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/tencent/liteav/videodecoder/g;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderListener:Lcom/tencent/liteav/videodecoder/g;

    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNotifyListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setStreamType(I)V
    .locals 2

    .line 81
    iput p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeSetStreamType(JI)V

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeSetID(JLjava/lang/String;)V

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setup(Landroid/graphics/SurfaceTexture;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 1

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    .line 143
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->setup(Landroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setup(Landroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSps:Ljava/nio/ByteBuffer;

    .line 152
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mPps:Ljava/nio/ByteBuffer;

    .line 154
    iput-boolean p4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNeedSortFrame:Z

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()I
    .locals 6

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const-string v0, "TXCVideoDecoder"

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:decode: start decoder error when not setup surface, id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return v1

    .line 269
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-string v0, "TXCVideoDecoder"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:decode: start decoder error when decoder is started, id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit p0

    return v1

    .line 273
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Video][Decoder] TXCVideoDecoder: start decode. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoDecoder"

    .line 275
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    const-string v1, "Video"

    const-string v2, "SpsChangeDecoderRestartInterval"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    const-wide/16 v0, 0xa

    .line 281
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    invoke-static {}, Lcom/tencent/liteav/basic/a;->b()Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeCreateContext(ZLjava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    .line 282
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeSetID(JLjava/lang/String;)V

    .line 283
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeSetStreamType(JI)V

    .line 284
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableDecoderChange:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeEnableDecodeChange(JZ)V

    .line 285
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mEnableRestartDecoder:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeEnableRestartDecoder(JZ)V

    .line 286
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mHWDec:Z

    if-eqz v0, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->initializeHWDecoderThread()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v0, 0x0

    .line 292
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    monitor-enter p0

    .line 296
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "TXCVideoDecoder"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:decode: stop decoder ignore when decoder is stopped, id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "TXCVideoDecoder"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play:decode: stop decoder java id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mStreamType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->nativeDestroyContext(J)V

    .line 304
    iput-wide v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNativeContext:J

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mNALList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mRecvFirstFrame:Z

    .line 308
    iput v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecoderCacheNum:I

    .line 309
    sput-wide v2, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mDecodeFirstFrameTS:J

    .line 311
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    :try_start_2
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0}, Lcom/tencent/liteav/videodecoder/b;->stop()V

    .line 314
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 316
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mVideoDecoder:Lcom/tencent/liteav/videodecoder/b;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 321
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->mSurface:Landroid/view/Surface;

    .line 323
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :try_start_3
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->uninitializeHWDecoderThread()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 323
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
