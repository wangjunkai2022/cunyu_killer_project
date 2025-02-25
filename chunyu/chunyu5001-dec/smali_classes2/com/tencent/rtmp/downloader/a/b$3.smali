.class Lcom/tencent/rtmp/downloader/a/b$3;
.super Ljava/lang/Object;
.source "TXVodDownloadManagerEx.java"

# interfaces
.implements Lcom/tencent/liteav/network/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/network/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/liteav/network/g;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/network/g;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    iput-object p3, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/network/g;

    iput-object p4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "TXVodDownloadManagerEx"

    const-string v1, "prepareDownloadMedia onError"

    .line 454
    invoke-static {v0, v1}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v2, -0x1389

    const-string v3, "get substream infos failure"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 457
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x1389

    const-string v2, "get substream infos failure"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 388
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/network/g;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/g;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v2

    .line 400
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 401
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/network/g$b;

    .line 402
    iget-object v5, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v5}, Lcom/tencent/rtmp/downloader/a/c;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v5

    iget-object v6, v4, Lcom/tencent/liteav/network/g$b;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tencent/rtmp/downloader/a/a;->a(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 403
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    const-string v0, "TXVodDownloadManagerEx"

    const-string v3, "resolution is not matched, use last resolution!"

    .line 405
    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    iget v3, v4, Lcom/tencent/liteav/network/g$b;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/tencent/liteav/network/g$b;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 413
    :goto_2
    iget-object v3, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v3, p1, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/network/g;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v3, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 416
    array-length v4, v3

    if-lez v4, :cond_a

    .line 417
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 418
    iget-object v4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "voddrm.token."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".m3u8"

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v0, ".m3u8"

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 425
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".m3u8"

    .line 426
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v1, ".m3u8"

    .line 427
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 429
    :cond_7
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 431
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "voddrm.token."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_3
    move-object v1, p1

    .line 436
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "to download subStreamUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXVodDownloadManagerEx"

    invoke-static {v0, p1}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 439
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 440
    :try_start_2
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 443
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x138b

    const-string v2, "No such resolution"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_b
    const-string p1, "TXVodDownloadManagerEx"

    const-string v0, "to download subStreamUrl is null"

    .line 445
    invoke-static {p1, v0}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 441
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 448
    :cond_c
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/downloader/a/c;->b(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-static {p1, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    return-void
.end method
