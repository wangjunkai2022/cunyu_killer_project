.class public Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;
.super Lcom/tencent/liteav/videoencoder/c;
.source "TXCSWVideoEncoder.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitrate:I

.field private mNativeEncoder:J

.field private mPTS:J

.field private mPopIdx:I

.field private mPushIdx:I

.field private mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

.field private mRendIdx:I

.field private mResizeFilter:Lcom/tencent/liteav/basic/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 290
    const-class v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 333
    invoke-static {}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/c;-><init>()V

    const-wide/16 v0, 0x0

    .line 296
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    const/4 v2, 0x0

    .line 297
    iput v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mBitrate:I

    .line 300
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mPTS:J

    .line 302
    iput v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mPushIdx:I

    .line 303
    iput v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRendIdx:I

    .line 304
    iput v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mPopIdx:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mPTS:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;JIIIJ)I
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeEncodeSync(JIIIJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;JIIIJ)I
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeEncode(JIIIJ)I

    move-result p0

    return p0
.end method

.method public static getAndIncreaseGopIndex()J
    .locals 2

    .line 176
    invoke-static {}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeGetAndIncreaseGopIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAndIncreateSeq()J
    .locals 2

    .line 172
    invoke-static {}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeGetAndIncreaseSeq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isRPSSupported()Z
    .locals 1

    .line 180
    invoke-static {}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeIsRPSSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnableNearestRPS(JI)V
.end method

.method private native nativeEncode(JIIIJ)I
.end method

.method private native nativeEncodeSync(JIIIJ)I
.end method

.method private static native nativeGetAndIncreaseGopIndex()J
.end method

.method private static native nativeGetAndIncreaseSeq()J
.end method

.method private native nativeGetRealFPS(J)J
.end method

.method private native nativeInit(Ljava/lang/ref/WeakReference;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeIsRPSSupported()Z
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeRestartIDR(J)V
.end method

.method private native nativeSetBitrate(JI)V
.end method

.method private native nativeSetBitrateFromQos(JII)V
.end method

.method private native nativeSetEncodeIdrFpsFromQos(JI)V
.end method

.method private native nativeSetFPS(JI)V
.end method

.method private native nativeSetID(JLjava/lang/String;)V
.end method

.method private native nativeSetRPSRefBitmap(JIIJ)V
.end method

.method private native nativeSignalEOSAndFlush(J)V
.end method

.method private native nativeStart(JLcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
.end method

.method private native nativeStop(J)V
.end method

.method private native nativegetRealBitrate(J)J
.end method

.method private static onEncodeFinishedFromNative(Ljava/lang/ref/WeakReference;IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;",
            ">;IJJ)V"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->onEncodeFinished(IJJ)V

    :cond_0
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;[BIJJJJJJI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;",
            ">;[BIJJJJJJI)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    move-object v2, p1

    .line 190
    iput-object v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    move v2, p2

    .line 191
    iput v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    move-wide v2, p3

    .line 192
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->gopIndex:J

    move-wide v2, p5

    .line 193
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->gopFrameIndex:J

    move-wide v2, p7

    .line 194
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->frameIndex:J

    move-wide v2, p9

    .line 195
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->refFremeIndex:J

    move-wide v2, p11

    .line 196
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    move-wide/from16 v2, p13

    .line 197
    iput-wide v2, v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    move/from16 v2, p15

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->callDelegate(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    :cond_0
    return-void
.end method

.method private pushVideoFrameInternal(IIIJZ)J
    .locals 15

    move-object v0, p0

    .line 216
    iget-object v1, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mResizeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 217
    iget-object v2, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    .line 218
    iget-object v3, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mGLContextExternal:Ljava/lang/Object;

    if-eqz v3, :cond_a

    move/from16 v3, p2

    .line 220
    iput v3, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mInputWidth:I

    move/from16 v6, p3

    .line 221
    iput v6, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mInputHeight:I

    const/4 v12, 0x1

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/tencent/liteav/basic/e/f;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/e/f;-><init>()V

    .line 224
    iput-object v1, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mResizeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 225
    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->a()Z

    .line 226
    invoke-virtual {v1, v12}, Lcom/tencent/liteav/basic/e/f;->a(Z)V

    .line 228
    :cond_0
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget v5, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    invoke-virtual {v1, v4, v5}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    .line 232
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget v5, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    const/4 v13, 0x0

    invoke-static {v13, v13, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz v1, :cond_5

    .line 236
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRotation:I

    rsub-int v4, v4, 0x2d0

    rem-int/lit16 v7, v4, 0x168

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v7, v5, :cond_2

    if-ne v7, v4, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iget v8, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v8, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    :goto_1
    if-eq v7, v5, :cond_4

    if-ne v7, v4, :cond_3

    goto :goto_2

    .line 238
    :cond_3
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    goto :goto_3

    :cond_4
    :goto_2
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    :goto_3
    const/4 v9, 0x0

    int-to-float v5, v8

    int-to-float v4, v4

    div-float v10, v5, v4

    .line 240
    iget-boolean v11, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mEnableXMirror:Z

    const/4 v14, 0x0

    move-object v4, v1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v14

    invoke-virtual/range {v4 .. v11}, Lcom/tencent/liteav/basic/e/f;->a(III[FFZZ)V

    move/from16 v3, p1

    .line 241
    invoke-virtual {v1, v3}, Lcom/tencent/liteav/basic/e/f;->b(I)I

    goto :goto_4

    :cond_5
    move/from16 v3, p1

    :goto_4
    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->l()I

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    new-array v3, v12, [I

    move-wide/from16 v4, p4

    .line 246
    iput-wide v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mPTS:J

    const-wide/32 v4, 0x989684

    if-nez v2, :cond_8

    .line 248
    sget-object v2, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    const-string v6, "pushVideoFrameInternal->create mRawFrameFilter"

    invoke-static {v2, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Lcom/tencent/liteav/beauty/a/a;

    invoke-direct {v2, v12}, Lcom/tencent/liteav/beauty/a/a;-><init>(I)V

    .line 250
    iput-object v2, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    .line 251
    invoke-virtual {v2, v12}, Lcom/tencent/liteav/basic/e/f;->a(Z)V

    .line 252
    invoke-virtual {v2}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result v6

    if-nez v6, :cond_7

    .line 254
    sget-object v1, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "pushVideoFrameInternal->destroy mRawFrameFilter, init failed!"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 255
    iput-object v1, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    return-wide v4

    .line 258
    :cond_7
    iget v6, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget v7, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    invoke-virtual {v2, v6, v7}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    .line 259
    new-instance v6, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;

    move/from16 v7, p6

    invoke-direct {v6, p0, v7, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;-><init>(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;ZI)V

    invoke-virtual {v2, v6}, Lcom/tencent/liteav/basic/e/f;->a(Lcom/tencent/liteav/basic/e/f$a;)V

    :cond_8
    if-nez v2, :cond_9

    return-wide v4

    .line 277
    :cond_9
    iget v4, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget v5, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    invoke-static {v13, v13, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 278
    invoke-virtual {v2, v1}, Lcom/tencent/liteav/basic/e/f;->b(I)I

    .line 280
    aget v1, v3, v13

    if-eqz v1, :cond_a

    .line 283
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->callDelegate(I)V

    :cond_a
    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method public enableNearestRPS(I)V
    .locals 2

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeEnableNearestRPS(JI)V

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRealBitrate()J
    .locals 2

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativegetRealBitrate(J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRealFPS()D
    .locals 2

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeGetRealFPS(J)J

    move-result-wide v0

    long-to-double v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushVideoFrame(IIIJ)J
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->pushVideoFrameInternal(IIIJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public pushVideoFrameAsync(IIIJ)J
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->pushVideoFrameInternal(IIIJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public pushVideoFrameSync(IIIJ)J
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 144
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->pushVideoFrameInternal(IIIJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public restartIDR()V
    .locals 2

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeRestartIDR(J)V

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBitrate(I)V
    .locals 2

    .line 102
    iput p1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mBitrate:I

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetBitrate(JI)V

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBitrateFromQos(II)V
    .locals 2

    .line 110
    iput p1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mBitrate:I

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetBitrateFromQos(JII)V

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEncodeIdrFpsFromQos(I)V
    .locals 2

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetEncodeIdrFpsFromQos(JI)V

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFPS(I)V
    .locals 2

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetFPS(JI)V

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/tencent/liteav/videoencoder/c;->setID(Ljava/lang/String;)V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetID(JLjava/lang/String;)V

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRPSRefBitmap(IIJ)V
    .locals 7

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetRPSRefBitmap(JIIJ)V

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public signalEOSAndFlush()V
    .locals 2

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSignalEOSAndFlush(J)V

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
    .locals 5

    .line 28
    invoke-super {p0, p1}, Lcom/tencent/liteav/videoencoder/c;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    .line 29
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 30
    iget v1, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 31
    iget v2, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    if-eq v1, v2, :cond_1

    .line 32
    :cond_0
    sget-object v2, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Encode Resolution not supportted, transforming..."

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    iput v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    .line 36
    iput v1, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    .line 37
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    .line 38
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    .line 39
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mInputWidth:I

    .line 40
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mInputHeight:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    .line 42
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mResizeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeInit(Ljava/lang/ref/WeakReference;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    .line 46
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    iget v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mBitrate:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetBitrate(JI)V

    .line 47
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-virtual {p0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeSetID(JLjava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeStart(JLcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    .line 49
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 5

    .line 56
    sget-object v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop->enter with mRawFrameFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mGLContextExternal:Ljava/lang/Object;

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    const-wide/16 v3, 0x0

    .line 61
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mNativeEncoder:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeStop(J)V

    .line 64
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->nativeRelease(J)V

    .line 65
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->d()V

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mRawFrameFilter:Lcom/tencent/liteav/basic/e/f;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mResizeFilter:Lcom/tencent/liteav/basic/e/f;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->d()V

    .line 71
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mResizeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 74
    :cond_1
    invoke-super {p0}, Lcom/tencent/liteav/videoencoder/c;->stop()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
