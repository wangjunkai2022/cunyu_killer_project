.class public abstract Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final isNetwork:Z

.field private listenerCount:I

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    :cond_0
    return-void
.end method

.method protected final bytesTransferred(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    .line 92
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final transferEnded()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method protected final transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 3

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
