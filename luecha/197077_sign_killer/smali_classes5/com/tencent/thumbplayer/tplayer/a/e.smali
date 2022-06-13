.class public Lcom/tencent/thumbplayer/tplayer/a/e;
.super Lcom/tencent/thumbplayer/tplayer/a/c;


# instance fields
.field private i:Z

.field private j:Z

.field private k:Lcom/tencent/thumbplayer/tplayer/a/d;

.field private final l:Ljava/lang/Object;

.field private m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->j:Z

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tplayer/a/e$1;-><init>(Lcom/tencent/thumbplayer/tplayer/a/e;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/a/e;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method private a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportLiveEndEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "live_end"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/e/b$a;->a(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/e/b$a;->b(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->j:Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v3, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportPlayerEndEvent playerStopTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPLiveReporter"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p5}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportLiveEndFlowEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "live_flow"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/a/a;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 1

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->o(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->p(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->q(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->r(I)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mDemuxerType:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->n(I)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/a/d;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 2

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->t(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->u(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->v(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->w(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->x(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->y(J)V

    iget v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoDecodeFrameCount:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->z(J)V

    iget p2, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoRenderFrameCount:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->A(J)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/a/d;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 2

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreApiPrepareStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->f(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCorePrepareExecuteTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->g(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mOpenDataSourceStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->h(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFindStreamInfoSuccessTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->i(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstClipOpenedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->j(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mInitFirstClipPositionTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->k(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoPacketReadTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->l(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoDecoderStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->p(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoFrameRenderTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->q(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioPacketReadTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->m(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioDecoderStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->r(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioFrameRenderTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->s(J)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mPrepareDoneTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->n(J)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onPrepareDone fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v4, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->d()J

    move-result-wide v4

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v6, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->d:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->f:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Live onPrepareDone timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Since1970TimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tplayer/a/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Lcom/tencent/thumbplayer/tplayer/a/b;)V

    new-instance p1, Lcom/tencent/thumbplayer/tplayer/a/b/a/b;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/b;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/b;->c(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/b;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/b;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "onPrepareDone"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "live_first_load"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/a/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    return p0
.end method

.method private b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/a;
    .locals 6

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->i:J

    iget-object v4, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v4, v4, Lcom/tencent/thumbplayer/tplayer/a/d;->g:J

    sub-long/2addr p1, v4

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->i:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->i:J

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->c(J)V

    invoke-virtual {v0, p3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->m(I)V

    invoke-direct {p0, v0, p4}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a/a;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/a;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/d;
    .locals 3

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->c(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->d(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->e(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->o(J)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a/d;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    invoke-direct {p0, v0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a/d;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/d;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/a/e;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onPlayerStart fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->g:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Live onPlayerStart FirstStartTimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->g:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mPlayerStartOccurElapsedTimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->c()V

    return-void
.end method

.method private c()V
    .locals 9

    const-string v0, "TPLiveReporter"

    const-string v1, "startPeriodReportTimer"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/utils/o;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->n:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0xea60

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Lcom/tencent/thumbplayer/tplayer/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->a:Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;->getPeriodExtendReportInfo()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "TPLiveReporter"

    const-string v0, "fillPeriodExtReportInfoToCommonParams fail, period ExtendReportInfo is null"

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p1, Lcom/tencent/thumbplayer/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->c(Ljava/util/Map;)V

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->d(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/thumbplayer/tplayer/a/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->g()V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 9

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    const-string v1, "TPLiveReporter"

    if-eqz v0, :cond_0

    const-string p1, "Player has been called End"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    instance-of v2, p1, Lcom/tencent/thumbplayer/e/b;

    if-nez v2, :cond_1

    const-string p1, "onPlayerEnd fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v4, v2, v3

    instance-of v4, v4, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    if-eqz v4, :cond_3

    aget-object v4, v2, v0

    instance-of v4, v4, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    aget-object v1, v2, v3

    move-object v7, v1

    check-cast v7, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    aget-object v0, v2, v0

    move-object v8, v0

    check-cast v8, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onPlayerEnd fail:eventparams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TPLiveReporter"

    const-string v1, "destroyPeriodReportTimer"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->l:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->m:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/lang/Object;)V
    .locals 12

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    const-string v1, "TPLiveReporter"

    if-eqz v0, :cond_0

    const-string p1, "Player has been called End"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    instance-of v2, p1, Lcom/tencent/thumbplayer/e/b;

    if-nez v2, :cond_1

    const-string p1, "onPlayerError fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v4, v2, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    aget-object v4, v2, v0

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget-object v5, v2, v4

    instance-of v5, v5, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    aget-object v6, v2, v5

    instance-of v6, v6, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    aget-object v1, v2, v3

    check-cast v1, Ljava/lang/Integer;

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, v2, v4

    move-object v10, v1

    check-cast v10, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    aget-object v1, v2, v5

    move-object v11, v1

    check-cast v11, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onPlayerError fail:eventparams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "TPLiveReporter"

    const-string v1, "onAppForeground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onBufferingStart fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->j:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->j:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Live onBufferingStart timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->j:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->j:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    return-void
.end method

.method private f()V
    .locals 4

    const-string v0, "TPLiveReporter"

    const-string v1, "onAppBackground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->b()Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Z)Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/d;

    move-result-object v0

    const-string v2, "live_flow"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->b()Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/a/a;

    move-result-object v0

    const-string v1, "live_end"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onBufferingEnd fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->j:Z

    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v4, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->j:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Live onBufferingEnd bufferingCostTimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4b0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->l:I

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->k:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/tencent/thumbplayer/tplayer/a/d;->j:J

    return-void
.end method

.method private g()V
    .locals 5

    const-string v0, "TPLiveReporter"

    const-string v1, "periodReportEvent enter."

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v2, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v3, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->h:J

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->m(I)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->c(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->d(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->b:Lcom/tencent/thumbplayer/tplayer/a/a/a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/a/a;->a(Z)Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    move-result-object v1

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoStreamBitrate:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->e(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoStreamBitrate:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->f(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoStreamBitrate:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->g(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoDecodeCostTimeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->h(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoDecodeCostTimeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->i(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoDecodeCostTimeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->j(J)V

    iget v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoGopSize:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->m(J)V

    iget v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoGopSize:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->l(J)V

    iget v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoGopSize:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->k(J)V

    iget v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoDecodeFrameCount:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->n(J)V

    iget v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoRenderFrameCount:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->o(J)V

    iget-wide v2, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoBufferedDurationMs:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->p(J)V

    iget-wide v1, v1, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAudioBufferedDurationMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->q(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    invoke-direct {p0, v1}, Lcom/tencent/thumbplayer/tplayer/a/e;->c(Lcom/tencent/thumbplayer/tplayer/a/b;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->g:I

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a/c;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "periodReportEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "live_period_report"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->k:J

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->m:J

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->c(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->d(Ljava/util/Map;)V

    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onDTProcessUpdate fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "onDTProcessUpdate dtProcessUpdateParams is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const-string p1, "onDTProcessUpdate dtProcessUpdateParams count is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    const-string p1, "onDTProcessUpdate dtProcessUpdateParams[1] is not Integer"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Live onDTProcessUpdate speedKBs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iput p1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->b:I

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onDTCdnUrlUpdate fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "onDTCdnUrlUpdate dtCdnUrlUpdateParams is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const-string p1, "onDTCdnUrlUpdate dtCdnUrlUpdateParams count is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_3

    const-string p1, "onDTCdnUrlUpdate dtCdnUrlUpdateParams[1] is not String"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_4

    const-string p1, "onDTCdnUrlUpdate dtCdnUrlUpdateParams[2] is not String"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Live onDTCdnUrlUpdate cdnIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iput-object v0, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/thumbplayer/tplayer/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method private i(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPLiveReporter"

    if-nez v0, :cond_0

    const-string p1, "onDTProtocolUpdate fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "onDTProtocolUpdate dtProtocolUpdateParams is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const-string p1, "onDTProtocolUpdate dtProtocolUpdateParams count is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_3

    const-string p1, "onDTProtocolUpdate dtProtocolUpdateParams[1] is not String"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Live onDTProtocolUpdate protocolVer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iput-object p1, v0, Lcom/tencent/thumbplayer/tplayer/a/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/thumbplayer/tplayer/a/c;->a()V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->d()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->i(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->h(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->f()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/e;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/e;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/tencent/thumbplayer/tplayer/a/l;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/c;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/e;->k:Lcom/tencent/thumbplayer/tplayer/a/d;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/d;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-void
.end method
