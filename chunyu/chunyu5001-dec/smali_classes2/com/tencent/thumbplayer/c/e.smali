.class public Lcom/tencent/thumbplayer/c/e;
.super Lcom/tencent/thumbplayer/c/d;

# interfaces
.implements Lcom/tencent/thumbplayer/api/composition/ITPMediaComposition;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/c/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->a:I

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->b:I

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->c:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/thumbplayer/c/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/thumbplayer/c/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/thumbplayer/c/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/thumbplayer/c/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a()J
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public declared-synchronized addAVTrack()Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/c/g;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/c/e;->f()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/c/g;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAudioTrack()Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/c/g;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/c/e;->e()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/c/g;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addVideoTrack()Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/c/g;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/c/e;->d()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/c/g;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()J
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method c()J
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    invoke-interface {v3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;->getTimelineDurationMs()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getAllAVTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getAllAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllVideoTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDurationMs()J
    .locals 13

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/c/e;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/c/e;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/c/e;->a()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide v5, v2

    goto :goto_0

    :cond_1
    move-wide v5, v0

    :goto_0
    sget-object v7, Lcom/tencent/thumbplayer/c/f;->a:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7a0002a9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v10, :cond_4

    const v10, -0x1d4e1b18

    if-eq v9, v10, :cond_3

    const v10, -0x1c2ba273

    if-eq v9, v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "base_video"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const-string v9, "base_audio"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v8, v12

    goto :goto_1

    :cond_4
    const-string v9, "base_longer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v8, v11

    :cond_5
    :goto_1
    if-eqz v8, :cond_7

    if-eq v8, v12, :cond_8

    if-eq v8, v11, :cond_6

    move-wide v0, v5

    goto :goto_2

    :cond_6
    if-lez v4, :cond_8

    :cond_7
    move-wide v0, v2

    :cond_8
    :goto_2
    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/c/i;->a(Lcom/tencent/thumbplayer/api/composition/ITPMediaComposition;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TPMediaComposition"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public removeAVTrack(Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "remove audio track , track is null ."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized removeAudioTrack(Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "remove audio track , track is null ."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeVideoTrack(Lcom/tencent/thumbplayer/api/composition/ITPMediaTrack;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/c/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "remove video track , track is null ."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
