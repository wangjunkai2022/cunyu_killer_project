.class public Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPPlayerConfigParams"
.end annotation


# instance fields
.field public mBufferMaxTotalDurationMs:J

.field public mBufferMinTotalDurationMs:J

.field public mBufferType:I

.field public mMaxBufferingTimeMs:J

.field public mMinBufferingDurationMs:J

.field public mMinBufferingTimeMs:J

.field public mPreloadTotalDurationMs:J

.field public mReduceLatencyAction:I

.field public mReduceLatencyPlaySpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
