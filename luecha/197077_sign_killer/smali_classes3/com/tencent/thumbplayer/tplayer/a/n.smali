.class public Lcom/tencent/thumbplayer/tplayer/a/n;
.super Lcom/tencent/thumbplayer/tplayer/a/c;


# instance fields
.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/tencent/thumbplayer/tplayer/a/m;

.field private n:[Lcom/tencent/thumbplayer/api/TPTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->n:[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    return-void
.end method

.method private a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportVodEndEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "vod_end"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 10

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->b(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->i(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->b(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->g(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->k:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v8, v8, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    sub-long/2addr v6, v8

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->k:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iput-wide v4, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    :cond_3
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

    const-string v1, "TPVodReporter"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p5}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    return-void
.end method

.method private a(JJJ)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reportSelectTrackEndEvent mSelectTrackInfoList is not contain key:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/tplayer/a/m$a;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m$a;->b:J

    sub-long/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSelectTrackEndEvent trackUniqueIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " costTimeMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " trackId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/tencent/thumbplayer/tplayer/a/m$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;-><init>()V

    invoke-virtual {v2, p5, p6}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->d(J)V

    invoke-virtual {v2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->c(J)V

    const/4 p3, 0x0

    const/4 p4, -0x1

    iget-object p5, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->n:[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    if-eqz p5, :cond_1

    array-length p5, p5

    iget p6, v0, Lcom/tencent/thumbplayer/tplayer/a/m$a;->a:I

    if-le p5, p6, :cond_1

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->n:[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    iget p4, v0, Lcom/tencent/thumbplayer/tplayer/a/m$a;->a:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Lcom/tencent/thumbplayer/api/TPTrackInfo;->getTrackType()I

    move-result p4

    iget-boolean p3, p3, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isInternal:Z

    move v4, p4

    move p4, p3

    move p3, v4

    goto :goto_0

    :cond_1
    const-string p5, "reportSelectTrackEndEvent do not find match track info"

    invoke-static {v1, p5}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, p3}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->m(I)V

    invoke-virtual {v2, p4}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->n(I)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p4, p4, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget p4, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 p5, p4, 0x1

    iput p5, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {p3, p4}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v2, p3}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->b()Ljava/util/Map;

    move-result-object p3

    const-string p4, "onSelectTrackEnd"

    invoke-virtual {p0, p4, p3}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p4, "vod_select_track"

    invoke-virtual {p0, p4, p3}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p4, p3}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/api/TPDrmInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Lcom/tencent/thumbplayer/api/TPDrmInfo;)Lcom/tencent/thumbplayer/tplayer/a/b/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "reportPlayerDrmInfoEvent"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "vod_drm_authentication"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportVodEndFlowEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "vod_flow"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/b/c;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 1

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->r(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->s(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->t(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->u(I)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mDemuxerType:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->q(I)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V
    .locals 2

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->t(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->u(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->v(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMaxVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->w(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mAvgVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->x(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mMinVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->y(J)V

    iget v0, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoDecodeFrameCount:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->z(J)V

    iget p2, p2, Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;->mVideoRenderFrameCount:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->A(J)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V
    .locals 2

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreApiPrepareStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->f(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCorePrepareExecuteTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->g(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mOpenDataSourceStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->h(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFindStreamInfoSuccessTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->i(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstClipOpenedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->j(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mInitFirstClipPositionTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->k(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoPacketReadTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->l(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoDecoderStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->p(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoFrameRenderTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->q(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioPacketReadTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->m(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioDecoderStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->r(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioFrameRenderTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->s(J)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, p2, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mPrepareDoneTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->n(J)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onPrepareDone fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v4, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->d()J

    move-result-wide v4

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v6, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->d:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->f:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onPrepareDone timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Since1970TimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tplayer/a/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Lcom/tencent/thumbplayer/tplayer/a/b;)V

    new-instance p1, Lcom/tencent/thumbplayer/tplayer/a/b/b/d;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/d;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/b/d;->c(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/d;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/d;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "onPrepareDone"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "vod_first_load"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/tencent/thumbplayer/api/TPDrmInfo;)Lcom/tencent/thumbplayer/tplayer/a/b/b/b;
    .locals 3

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;-><init>()V

    iget v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmAbility:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->m(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmSupportSecureDecoder:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->p(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmSupportSecureDecrypt:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->q(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmSecureLevel:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->o(I)V

    iget-object v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->p(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmType:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->n(I)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmPrepareStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->c(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmPrepareEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->d(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmOpenSessionStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->e(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmOpenSessionEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->f(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmGetProvisionReqStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->g(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmGetProvisionReqEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->h(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmSendProvisionReqTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->i(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmRecvProvisionRespTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->j(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmProvideProvisionRespStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->k(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmProvideProvisionRespEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->l(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmGetKeyReqStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->m(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmGetKeyReqEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->n(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmSendKeyReqTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->o(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmRecvKeyRespTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->p(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmProvideKeyRespStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->q(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;->drmProvideKeyRespEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->r(J)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/b;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/c;
    .locals 6

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->i:J

    iget-object v4, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v4, v4, Lcom/tencent/thumbplayer/tplayer/a/m;->g:J

    sub-long/2addr p1, v4

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->i:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->i:J

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->c(J)V

    invoke-virtual {v0, p3}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->m(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->m:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->n(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->n:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->o(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->o:I

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->d(J)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->q:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->p(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->r:I

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->e(J)V

    invoke-direct {p0, v0, p4}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tplayer/a/b/b/c;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/c;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/e;
    .locals 3

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->c(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->d(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/l;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->e(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->o(J)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)V

    invoke-direct {p0, v0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/e;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 10

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onPlayerStart fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->g:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->h:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vod onPlayerStart timeMs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v2, Lcom/tencent/thumbplayer/tplayer/a/m;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->k:J

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v6

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v8, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->k:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iput-wide v4, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "TPVodReporter"

    const-string v1, "onAppForeground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onPlayerPause fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    if-eqz v0, :cond_1

    const-string p1, "onPlayerPause has been called"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->l:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onPlayerPause timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->j:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "TPVodReporter"

    const-string v1, "onAppBackground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/a/n;->b()Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Z)Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/e;

    move-result-object v0

    const-string v2, "vod_flow"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/a/n;->b()Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tplayer/a/b/b/c;

    move-result-object v0

    const-string v1, "vod_end"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 9

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

    const-string v1, "TPVodReporter"

    if-eqz v0, :cond_0

    const-string p1, "Player has been called End"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

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

    invoke-direct/range {v3 .. v8}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onPlayerEnd fail:eventparams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 12

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

    const-string v1, "TPVodReporter"

    if-eqz v0, :cond_0

    const-string p1, "Player has been called End"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->i:Z

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

    invoke-direct/range {v6 .. v11}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(JILcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onPlayerError fail:eventparams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onSeekStart fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->b(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->i(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->b(J)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/n;->g(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->l:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onSeekStart timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->l:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onSeekEnd fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v4, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->l:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->n:I

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->o:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->o:I

    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->m:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onSeekEnd seekCostTimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mSeekTotalCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->m:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSeekBufferingTotalCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSeekBufferingTotalDurationMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onBufferingStart fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->p:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onBufferingStart timeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->p:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onBufferingEnd fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->k:Z

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-wide v4, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->p:J

    sub-long/2addr v2, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onBufferingEnd bufferingCostTimeMs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4b0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->q:I

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->r:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->r:I

    new-instance p1, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;-><init>()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->s:F

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;->b(F)V

    invoke-virtual {p1, v2, v3}, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;->c(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/a/b/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "onBufferingEnd"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "vod_second_buffering"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private j(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onSetPlaySpeed fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "onSetPlaySpeed playSpeedParams is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const-string p1, "onSetPlaySpeed playSpeedParams count is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_3

    const-string p1, "onSetPlaySpeed playSpeedParams[0] is not Float"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Lcom/tencent/thumbplayer/tplayer/a/m;->s:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vod onSetPlaySpeed mPlaySpeed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->s:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onSelectTrackStart fail:params is not match"

    :goto_0
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vod onSelectTrackStart trackId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " trackUniqueIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->t:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/thumbplayer/tplayer/a/m$a;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tplayer/a/m$a;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/tencent/thumbplayer/tplayer/a/m$a;->a:I

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tplayer/a/m$a;->b:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tplayer/a/m;->t:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "onSelectTrackStart fail:eventparams is not match"

    goto :goto_0
.end method

.method private l(Ljava/lang/Object;)V
    .locals 11

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onSelectTrackEnd fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/lang/Long;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Long;

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vod onSelectTrackEnd errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " trackUniqueIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(JJJ)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "onSelectTrackEnd fail:eventparams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onDrmInfo fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v2, p1, v0

    instance-of v2, v2, Lcom/tencent/thumbplayer/api/TPDrmInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Lcom/tencent/thumbplayer/api/TPDrmInfo;

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Lcom/tencent/thumbplayer/api/TPDrmInfo;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "onDrmInfo drmInfoParams error"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p1, "onTrackInfo fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "onTrackInfo trackInfoParams is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, [Lcom/tencent/thumbplayer/api/TPTrackInfo;

    if-nez v0, :cond_2

    const-string p1, "onTrackInfo trackInfoParams is not TPTrackInfo[]"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast p1, [Lcom/tencent/thumbplayer/api/TPTrackInfo;

    check-cast p1, [Lcom/tencent/thumbplayer/api/TPTrackInfo;

    invoke-virtual {p1}, [Lcom/tencent/thumbplayer/api/TPTrackInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/thumbplayer/api/TPTrackInfo;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->n:[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    return-void
.end method

.method private o(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

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

    const-string v2, "Vod onDTProcessUpdate speedKBs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iput p1, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->b:I

    return-void
.end method

.method private p(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

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

    const-string v3, "Vod onDTCdnUrlUpdate cdnIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iput-object v0, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/thumbplayer/tplayer/a/m;->d:Ljava/lang/String;

    return-void
.end method

.method private q(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPVodReporter"

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

    const-string v2, "Vod onDTProtocolUpdate protocolVer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iput-object p1, v0, Lcom/tencent/thumbplayer/tplayer/a/m;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/thumbplayer/tplayer/a/c;->a()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->q(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->p(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->o(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->n(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->m(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->j(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->l(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->k(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->i(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->h(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->g(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->f(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->c(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/n;->d()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/n;->c()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/tencent/thumbplayer/tplayer/a/l;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/c;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->f:Lcom/tencent/thumbplayer/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tplayer/a/m;->a:Lcom/tencent/thumbplayer/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/j;->a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V

    return-void
.end method
