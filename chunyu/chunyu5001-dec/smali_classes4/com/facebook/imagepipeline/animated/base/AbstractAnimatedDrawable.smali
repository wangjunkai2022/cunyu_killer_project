.class public abstract Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AbstractAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# static fields
.field private static final NO_FRAME:I = -0x1

.field private static final POLL_FOR_RENDERED_FRAME_MS:I = 0x5

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final WATCH_DOG_TIMER_MIN_TIMEOUT_MS:J = 0x3e8L

.field private static final WATCH_DOG_TIMER_POLL_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

.field private final mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

.field private mApplyTransformation:Z

.field private final mDstRect:Landroid/graphics/Rect;

.field private final mDurationMs:I

.field private final mFrameCount:I

.field private mHaveWatchdogScheduled:Z

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private mInvalidateTaskScheduled:Z

.field private mIsRunning:Z

.field private mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDrawnFrameMonotonicNumber:I

.field private mLastDrawnFrameNumber:I

.field private mLastInvalidateTimeMs:J

.field private volatile mLogId:Ljava/lang/String;

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mNextFrameTask:Ljava/lang/Runnable;

.field private mNextFrameTaskMs:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingRenderedFrameMonotonicNumber:I

.field private mPendingRenderedFrameNumber:I

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScheduledFrameMonotonicNumber:I

.field private mScheduledFrameNumber:I

.field private final mStartTask:Ljava/lang/Runnable;

.field private mStartTimeMs:J

.field private mSx:F

.field private mSy:F

.field private final mTotalLoops:I

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mWaitingForDraw:Z

.field private final mWatchdogTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 83
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 95
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 98
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 139
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    .line 140
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 141
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMs()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    .line 142
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameCount()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    .line 143
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 144
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getLoopCount()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTotalLoops:I

    .line 145
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 146
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->resetToPreviewFrame()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onStart()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onNextFrame()V

    return-void
.end method

.method static synthetic access$402(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doWatchdogCheck()V

    return-void
.end method

.method private computeAndScheduleNextFrame(Z)V
    .locals 8

    .line 253
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 257
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 258
    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTotalLoops:I

    if-lez v3, :cond_1

    if-lt v2, v3, :cond_1

    return-void

    .line 262
    :cond_1
    iget-wide v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v5, v5

    rem-long/2addr v3, v5

    long-to-int v3, v3

    .line 263
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result v4

    .line 264
    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    const/4 v6, 0x1

    if-eq v5, v4, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 265
    :goto_0
    iput v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 266
    iget v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    mul-int/2addr v2, v7

    add-int/2addr v2, v4

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz v5, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    goto :goto_1

    .line 277
    :cond_4
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-interface {p1, v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getTimestampMsForFrame(I)I

    move-result p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 278
    invoke-interface {v2, v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr p1, v3

    .line 280
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    add-int/2addr v2, v6

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    rem-int/2addr v2, v3

    int-to-long v3, p1

    add-long/2addr v0, v3

    .line 282
    iget-wide v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    cmp-long v3, v3, v0

    if-lez v3, :cond_6

    .line 283
    :cond_5
    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "(%s) Next frame (%d) in %d ms"

    invoke-static {v3, v5, v4, v2, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 285
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 286
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    :cond_6
    :goto_1
    return-void
.end method

.method private doInvalidateSelf()V
    .locals 2

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 493
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    .line 494
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->invalidateSelf()V

    return-void
.end method

.method private doWatchdogCheck()V
    .locals 11

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 466
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v1

    .line 472
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-wide v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    sub-long v7, v1, v7

    cmp-long v3, v7, v4

    if-lez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v0

    .line 476
    :goto_0
    iget-wide v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_2

    sub-long/2addr v1, v7

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    move v0, v6

    :cond_2
    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 487
    iput-boolean v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    goto :goto_2

    .line 480
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->dropCaches()V

    .line 481
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    :goto_2
    return-void
.end method

.method private onNextFrame()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 237
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 238
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-nez v0, :cond_1

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodBegin()V

    const/4 v0, 0x1

    .line 246
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    throw v0
.end method

.method private onStart()V
    .locals 5

    .line 219
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodBegin()V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 226
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 227
    iget-wide v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 228
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 229
    iput-wide v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 230
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    throw v0
.end method

.method private renderFrame(Landroid/graphics/Canvas;II)Z
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 435
    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getBitmapForFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 442
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    if-le p3, p1, :cond_1

    sub-int p1, p3, p1

    sub-int/2addr p1, v1

    .line 444
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDrawnFrames(I)V

    .line 445
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDroppedFrames(I)V

    if-lez p1, :cond_1

    .line 447
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "(%s) Dropped %d frames"

    invoke-static {v2, v4, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    :cond_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 451
    iput p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 452
    iput p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 453
    sget-object p1, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    iget-object p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "(%s) Drew frame %d"

    invoke-static {p1, v0, p3, p2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resetToPreviewFrame()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForPreview()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 155
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 157
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    return-void
.end method

.method private scheduleInvalidatePoll()V
    .locals 3

    .line 406
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    .line 410
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public didLastDrawRender()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodBegin()V

    const/4 v0, 0x0

    .line 295
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 296
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 301
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 304
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 308
    invoke-interface {v1, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v1

    .line 309
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    if-eq v1, v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 311
    iput-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 312
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v3, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 315
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 316
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 398
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    return-void

    .line 325
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 330
    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 332
    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 333
    invoke-direct {p0, p1, v1, v4}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v1

    or-int/lit8 v4, v1, 0x0

    if-eqz v1, :cond_4

    .line 336
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v5, "(%s) Rendered pending frame %d"

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 338
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    goto :goto_0

    .line 341
    :cond_4
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v5, "(%s) Trying again later for pending %d"

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V

    goto :goto_0

    :cond_5
    move v4, v0

    .line 346
    :goto_0
    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    if-ne v1, v3, :cond_8

    .line 348
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v1, :cond_6

    .line 349
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    .line 351
    :cond_6
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v0

    or-int v1, v4, v0

    if-eqz v0, :cond_7

    .line 357
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v3, "(%s) Rendered current frame %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_9

    .line 359
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    goto :goto_1

    .line 362
    :cond_7
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v3, "(%s) Trying again later for current %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 364
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 365
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V

    goto :goto_1

    :cond_8
    move v1, v4

    :cond_9
    :goto_1
    const/4 v0, 0x0

    if-nez v1, :cond_a

    .line 370
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v3, :cond_a

    .line 371
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 373
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v3, "(%s) Rendered last known frame %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    :cond_a
    if-nez v1, :cond_b

    .line 379
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 380
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 382
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 384
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered preview frame"

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    :cond_b
    if-nez v1, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 391
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 392
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Failed to draw a frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->drawDebugOverlay(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    throw p1
.end method

.method public dropCaches()V
    .locals 3

    .line 556
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    const-string v2, "(%s) Dropping caches"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    const/4 v0, -0x1

    .line 560
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 561
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    :cond_0
    return-void
.end method

.method protected getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    return-object v0
.end method

.method protected getDuration()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method getScheduledFrameNumber()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    return v0
.end method

.method isWaitingForDraw()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    return v0
.end method

.method isWaitingForNextFrame()Z
    .locals 4

    .line 504
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 209
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    :cond_0
    const/4 p1, -0x1

    .line 213
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 214
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 215
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 533
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result p1

    .line 539
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    if-ne p1, v0, :cond_1

    return v1

    .line 544
    :cond_1
    :try_start_0
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 545
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 546
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 3

    .line 514
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 518
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    return-void
.end method
