.class public Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPPlayerGeneralTrackingParams"
.end annotation


# instance fields
.field public mCoreApiPrepareStartTimeMs:J

.field public mCorePrepareExecuteTimeMs:J

.field public mFindStreamInfoSuccessTimeMs:J

.field public mFirstAudioDecoderStartTimeMs:J

.field public mFirstAudioFrameRenderTimeMs:J

.field public mFirstAudioPacketReadTimeMs:J

.field public mFirstClipOpenedTimeMs:J

.field public mFirstVideoDecoderStartTimeMs:J

.field public mFirstVideoFrameRenderTimeMs:J

.field public mFirstVideoPacketReadTimeMs:J

.field public mInitFirstClipPositionTimeMs:J

.field public mOpenDataSourceStartTimeMs:J

.field public mPrepareDoneTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
