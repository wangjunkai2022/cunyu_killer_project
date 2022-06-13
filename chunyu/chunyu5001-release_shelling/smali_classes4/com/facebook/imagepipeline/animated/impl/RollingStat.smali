.class Lcom/facebook/imagepipeline/animated/impl/RollingStat;
.super Ljava/lang/Object;
.source "RollingStat.java"


# static fields
.field private static final WINDOWS:I = 0x3c


# instance fields
.field private final mStat:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    new-array v0, v0, [S

    .line 24
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    return-void
.end method


# virtual methods
.method getSum(I)I
    .locals 6

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 50
    div-long/2addr v0, v2

    int-to-long v2, p1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3c

    .line 51
    rem-long/2addr v2, v4

    long-to-int v2, v2

    .line 52
    div-long/2addr v0, v4

    const-wide/16 v3, 0xff

    and-long/2addr v0, v3

    long-to-int v0, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 56
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    add-int v5, v2, v1

    rem-int/lit8 v5, v5, 0x3c

    aget-short v4, v4, v5

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v0, :cond_0

    add-int/2addr v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method incrementStats(I)V
    .locals 6

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 29
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 30
    rem-long v4, v0, v2

    long-to-int v4, v4

    .line 31
    div-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 33
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    aget-short v1, v1, v4

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    :goto_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/RollingStat;->mStat:[S

    int-to-short p1, p1

    aput-short p1, v0, v4

    return-void
.end method
