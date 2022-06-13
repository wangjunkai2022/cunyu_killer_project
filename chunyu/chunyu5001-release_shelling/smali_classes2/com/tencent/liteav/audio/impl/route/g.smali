.class public Lcom/tencent/liteav/audio/impl/route/g;
.super Ljava/lang/Object;
.source "TXCAudioSessionHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/route/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/audio/impl/route/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Lcom/tencent/liteav/audio/impl/route/g$a;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/impl/route/g$a;

    .line 19
    iget-wide v3, v2, Lcom/tencent/liteav/audio/impl/route/g$a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move-object v0, v2

    .line 24
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/impl/route/g$a;

    .line 53
    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/route/g$a;->b:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/audio/impl/route/f;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tencent/liteav/audio/impl/route/f;J)V
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/tencent/liteav/audio/impl/route/g;->a(J)Lcom/tencent/liteav/audio/impl/route/g$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/g$a;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/route/g$a;-><init>()V

    .line 33
    iput-wide p2, v0, Lcom/tencent/liteav/audio/impl/route/g$a;->a:J

    .line 34
    iput-object p1, v0, Lcom/tencent/liteav/audio/impl/route/g$a;->b:Lcom/tencent/liteav/audio/impl/route/f;

    .line 35
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/impl/route/g$a;

    iget-wide v1, v1, Lcom/tencent/liteav/audio/impl/route/g$a;->a:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/g;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
