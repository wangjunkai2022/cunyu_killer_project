.class public Lcom/tencent/thumbplayer/api/TPTimeRange;
.super Ljava/lang/Object;


# instance fields
.field private mEndTimeMs:J

.field private mStartTimeMs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mStartTimeMs:J

    iput-wide p3, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mEndTimeMs:J

    return-void
.end method


# virtual methods
.method public getEndTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mEndTimeMs:J

    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mStartTimeMs:J

    return-wide v0
.end method

.method public setEndTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mEndTimeMs:J

    return-void
.end method

.method public setStartTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/api/TPTimeRange;->mStartTimeMs:J

    return-void
.end method
