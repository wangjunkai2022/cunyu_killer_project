.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

.field private final periodDurationUs:J

.field public final representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field public final segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

.field private final segmentNumShift:J

.field public final selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;


# direct methods
.method constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 807
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 808
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 809
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 810
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 811
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .locals 2

    .line 788
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    return-wide v0
.end method


# virtual methods
.method copyWithNewRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 818
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v9

    .line 819
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v10

    if-nez v9, :cond_0

    .line 823
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v10

    .line 832
    :cond_0
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 834
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v11

    .line 843
    :cond_1
    invoke-interface {v9, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 846
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v11

    .line 855
    :cond_2
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v6

    .line 856
    invoke-interface {v9, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v11

    add-long/2addr v4, v6

    const-wide/16 v13, 0x1

    sub-long/2addr v4, v13

    .line 859
    invoke-interface {v9, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v15

    .line 860
    invoke-interface {v9, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 861
    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v13

    move-object v1, v9

    .line 862
    invoke-interface {v10, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v8

    move-wide/from16 v19, v6

    .line 863
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    cmp-long v15, v15, v8

    if-nez v15, :cond_3

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    :goto_0
    sub-long/2addr v4, v13

    add-long/2addr v6, v4

    :goto_1
    move-wide v7, v6

    goto :goto_2

    :cond_3
    if-ltz v15, :cond_5

    cmp-long v4, v8, v11

    if-gez v4, :cond_4

    .line 875
    invoke-interface {v10, v11, v12, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v4

    sub-long v4, v4, v19

    sub-long/2addr v6, v4

    goto :goto_1

    .line 880
    :cond_4
    invoke-interface {v1, v8, v9, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 883
    :goto_2
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v11

    .line 870
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method copyWithNewSegmentIndex(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10

    .line 894
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method copyWithNewSelectedBaseUrl(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10

    .line 905
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method public getFirstAvailableSegmentNum(J)J
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .locals 4

    .line 915
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastAvailableSegmentNum(J)J
    .locals 5

    .line 945
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 946
    invoke-interface {v2, v3, v4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public getSegmentCount()J
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentEndTimeUs(J)J
    .locals 5

    .line 932
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 933
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getSegmentNum(J)J
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getSegmentStartTimeUs(J)J
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public isSegmentAvailableAtFullNetworkSpeed(JJ)Z
    .locals 4

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
