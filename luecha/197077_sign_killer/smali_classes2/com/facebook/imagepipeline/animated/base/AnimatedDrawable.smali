.class public Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;
.super Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.source "AnimatedDrawable.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatableDrawable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V

    return-void
.end method


# virtual methods
.method public createAnimatorUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 65
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable$1;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;)V

    return-object v0
.end method

.method public createValueAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getLoopCount()I

    move-result v0

    .line 53
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 54
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->getDuration()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 55
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 56
    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 57
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 58
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->createAnimatorUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method public createValueAnimator(I)Landroid/animation/ValueAnimator;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->createValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMs()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object v0
.end method
