.class public Lcom/humrousz/sequence/AnimationSequenceDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimationSequenceDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/humrousz/sequence/AnimationSequenceDrawable$LoopBehavior;,
        Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;,
        Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MS:J = 0x64L

.field public static final LOOP_DEFAULT:I = 0x3

.field public static final LOOP_FINITE:I = 0x1

.field public static final LOOP_INF:I = 0x2

.field private static final MIN_DELAY_MS:J = 0x14L

.field private static final STATE_DECODING:I = 0x2

.field private static final STATE_READY_TO_SWAP:I = 0x4

.field private static final STATE_SCHEDULED:I = 0x1

.field private static final STATE_WAITING_TO_SWAP:I = 0x3

.field private static final S_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BaseAnimationSequence"

.field private static sAllocatingBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

.field private static sDecodingThread:Landroid/os/HandlerThread;

.field private static sDecodingThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

.field private mBackBitmap:Landroid/graphics/Bitmap;

.field private mBackBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

.field private mCircleMaskEnabled:Z

.field private mCurrentLoop:I

.field private mDecodeRunnable:Ljava/lang/Runnable;

.field private mDestroyed:Z

.field private mFinishedCallbackRunnable:Ljava/lang/Runnable;

.field private mFrontBitmap:Landroid/graphics/Bitmap;

.field private mFrontBitmapShader:Landroid/graphics/BitmapShader;

.field private mLastSwap:J

.field private final mLock:Ljava/lang/Object;

.field private mLoopBehavior:I

.field private mLoopCount:I

.field private mNextFrameToDecode:I

.field private mNextSwap:J

.field private mOnFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mState:I

.field private mTempRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->S_LOCK:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/humrousz/sequence/AnimationSequenceDrawable$1;

    invoke-direct {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable$1;-><init>()V

    sput-object v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sAllocatingBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    return-void
.end method

.method public constructor <init>(Lcom/humrousz/sequence/BaseAnimationSequence;)V
    .locals 1

    .line 245
    sget-object v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sAllocatingBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;-><init>(Lcom/humrousz/sequence/BaseAnimationSequence;Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/humrousz/sequence/BaseAnimationSequence;Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;)V
    .locals 5

    .line 248
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    const/4 v1, 0x3

    .line 158
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopBehavior:I

    const/4 v1, 0x1

    .line 159
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopCount:I

    .line 164
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    .line 169
    new-instance v2, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;

    invoke-direct {v2, p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;-><init>(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V

    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDecodeRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v2, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;

    invoke-direct {v2, p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;-><init>(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V

    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    .line 249
    invoke-virtual {p1}, Lcom/humrousz/sequence/BaseAnimationSequence;->getWidth()I

    move-result v2

    .line 250
    invoke-virtual {p1}, Lcom/humrousz/sequence/BaseAnimationSequence;->getHeight()I

    move-result v3

    .line 251
    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    .line 252
    invoke-static {p2, v2, v3}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->acquireAndValidateBitmap(Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 253
    invoke-static {p2, v2, v3}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->acquireAndValidateBitmap(Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 254
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 255
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    .line 256
    iget-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 257
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 259
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    const-wide/16 v1, 0x0

    .line 261
    iput-wide v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLastSwap:J

    const/4 p2, -0x1

    .line 262
    iput p2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    .line 263
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    .line 264
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, p2}, Lcom/humrousz/sequence/BaseAnimationSequence;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 265
    invoke-static {}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->initializeDecodingThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/humrousz/sequence/AnimationSequenceDrawable;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    return p0
.end method

.method static synthetic access$202(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$300(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/humrousz/sequence/AnimationSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/humrousz/sequence/AnimationSequenceDrawable;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/BaseAnimationSequence;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    return-object p0
.end method

.method static synthetic access$600(Lcom/humrousz/sequence/AnimationSequenceDrawable;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextSwap:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/humrousz/sequence/AnimationSequenceDrawable;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextSwap:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/humrousz/sequence/AnimationSequenceDrawable;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLastSwap:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mOnFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    return-object p0
.end method

.method private static acquireAndValidateBitmap(Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 235
    invoke-interface {p0, p1, p2}, Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;->acquireBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lt p1, p2, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_0

    return-object p0

    .line 239
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid bitmap provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkDestroyedLocked()V
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform operation on recycled drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initializeDecodingThread()V
    .locals 4

    .line 45
    sget-object v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->S_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 47
    monitor-exit v0

    return-void

    .line 49
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BaseAnimationSequence decoding thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    .line 51
    sget-object v1, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThreadHandler:Landroid/os/Handler;

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleDecodeLocked()V
    .locals 2

    const/4 v0, 0x1

    .line 447
    iput v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    .line 448
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    invoke-virtual {v0}, Lcom/humrousz/sequence/BaseAnimationSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    .line 449
    sget-object v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->sDecodingThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDecodeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->checkDestroyedLocked()V

    .line 313
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 314
    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 315
    iget v3, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 316
    iget-object v3, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 317
    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object v2, v3

    :cond_0
    const/4 v3, 0x1

    .line 319
    iput-boolean v3, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    .line 324
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBitmapProvider:Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 320
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapProvider must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 381
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->checkDestroyedLocked()V

    .line 383
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 386
    iget-wide v6, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextSwap:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v1, v6, v3

    if-gtz v1, :cond_0

    .line 387
    iput v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    if-ne v1, v2, :cond_6

    .line 393
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 394
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 395
    iput-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 396
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 397
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    iput-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 398
    iput-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLastSwap:J

    .line 401
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    invoke-virtual {v2}, Lcom/humrousz/sequence/BaseAnimationSequence;->getFrameCount()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v7, 0x0

    if-ne v1, v2, :cond_4

    .line 402
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCurrentLoop:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCurrentLoop:I

    .line 403
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v6, :cond_1

    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCurrentLoop:I

    iget v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopCount:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCurrentLoop:I

    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    .line 404
    invoke-virtual {v2}, Lcom/humrousz/sequence/BaseAnimationSequence;->getDefaultLoopCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    if-eqz v1, :cond_4

    move v6, v7

    :cond_4
    if-eqz v6, :cond_5

    .line 410
    invoke-direct {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->scheduleDecodeLocked()V

    goto :goto_1

    .line 412
    :cond_5
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v3, v4}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 415
    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-boolean v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCircleMaskEnabled:Z

    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 419
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 421
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v3

    div-float/2addr v0, v5

    .line 431
    iget-object v4, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    sub-float v5, v1, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v7, v2, v0

    div-float/2addr v7, v6

    add-float/2addr v1, v3

    div-float/2addr v1, v6

    add-float/2addr v2, v0

    div-float/2addr v2, v6

    invoke-virtual {v4, v5, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 437
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 441
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 415
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getCircleMaskEnabled()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCircleMaskEnabled:Z

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    invoke-virtual {v0}, Lcom/humrousz/sequence/BaseAnimationSequence;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    invoke-virtual {v0}, Lcom/humrousz/sequence/BaseAnimationSequence;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mAnimationSequence:Lcom/humrousz/sequence/BaseAnimationSequence;

    invoke-virtual {v0}, Lcom/humrousz/sequence/BaseAnimationSequence;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 492
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 495
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->invalidateSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 495
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setCircleMaskEnabled(Z)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCircleMaskEnabled:Z

    if-eq v0, p1, :cond_0

    .line 276
    iput-boolean p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCircleMaskEnabled:Z

    .line 278
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setLoopBehavior(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopBehavior:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLoopCount:I

    return-void
.end method

.method public setOnFinishedListener(Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mOnFinishedListener:Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 367
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->stop()V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->start()V

    goto :goto_1

    .line 371
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->stop()V

    .line 372
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->start()V

    :cond_3
    :goto_1
    return v0
.end method

.method public start()V
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->checkDestroyedLocked()V

    .line 334
    iget v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 335
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 337
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mCurrentLoop:I

    .line 338
    invoke-direct {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->scheduleDecodeLocked()V

    .line 339
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, p0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 359
    :try_start_0
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mNextFrameToDecode:I

    const/4 v1, 0x0

    .line 360
    iput v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable;->mState:I

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 361
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
