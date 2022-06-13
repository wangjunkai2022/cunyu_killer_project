.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;
.super Ljava/lang/Object;
.source "AnimatedDrawableDiagnosticsImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mDebugTextPaint:Landroid/text/TextPaint;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

.field private final mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

.field private mLastTimeStamp:J

.field private final sbTemp:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 49
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    .line 50
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    .line 52
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    .line 53
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    const/16 p2, 0xe

    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private convertDpToPx(I)I
    .locals 2

    int-to-float p1, p1

    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public drawDebugOverlay(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 15

    move-object v0, p0

    .line 114
    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->getSum(I)I

    move-result v1

    .line 115
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->getSum(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 117
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v2

    const/16 v4, 0x14

    .line 119
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v4

    const/4 v5, 0x5

    .line 120
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->convertDpToPx(I)I

    move-result v5

    const/4 v6, 0x0

    if-lez v1, :cond_0

    mul-int/lit8 v3, v3, 0x64

    .line 122
    div-int/2addr v3, v1

    .line 123
    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v8, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-float v1, v2

    int-to-float v12, v4

    iget-object v13, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v11, v1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    .line 132
    :goto_0
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getMemoryUsage()I

    move-result v3

    .line 133
    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v8, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v3}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->appendMemoryString(Ljava/lang/StringBuilder;I)V

    .line 135
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    int-to-float v7, v1

    add-float/2addr v7, v3

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    int-to-float v1, v4

    .line 138
    iget-object v4, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    int-to-float v7, v5

    add-float/2addr v4, v7

    add-float/2addr v1, v4

    float-to-int v4, v1

    move v1, v2

    .line 140
    :cond_1
    iget-object v8, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-float v1, v1

    int-to-float v14, v4

    iget-object v13, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v11, v1

    move v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v5

    .line 145
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-interface {v3, v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->appendDebugOptionString(Ljava/lang/StringBuilder;)V

    .line 147
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    int-to-float v6, v1

    add-float/2addr v6, v3

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2

    .line 150
    iget-object v1, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    int-to-float v3, v5

    add-float/2addr v1, v3

    add-float/2addr v14, v1

    float-to-int v4, v14

    move v1, v2

    .line 152
    :cond_2
    iget-object v6, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->sbTemp:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-float v9, v1

    int-to-float v10, v4

    iget-object v11, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDebugTextPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public incrementDrawnFrames(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDrawnFrames:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->incrementStats(I)V

    return-void
.end method

.method public incrementDroppedFrames(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mDroppedFramesStat:Lcom/facebook/imagepipeline/animated/impl/RollingStat;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->incrementStats(I)V

    if-lez p1, :cond_0

    .line 92
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Dropped %d frames"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDrawMethodBegin()V
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    return-void
.end method

.method public onDrawMethodEnd()V
    .locals 4

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long/2addr v0, v2

    .line 109
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "draw took %d"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNextFrameMethodBegin()V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    return-void
.end method

.method public onNextFrameMethodEnd()V
    .locals 4

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 84
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "onNextFrame took %d"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartMethodBegin()V
    .locals 2

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    return-void
.end method

.method public onStartMethodEnd()V
    .locals 4

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mLastTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 71
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->TAG:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "onStart took %d"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    return-void
.end method
