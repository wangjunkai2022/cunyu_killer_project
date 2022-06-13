.class Lcom/tencent/rtmp/downloader/a/b$4;
.super Ljava/lang/Object;
.source "TXVodDownloadManagerEx.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V
    .locals 0

    .line 602
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/b/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 604
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 605
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 606
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 607
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStart(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    .line 609
    :cond_0
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getPlayPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "TXVodDownloadManagerEx"

    if-eqz p1, :cond_1

    const-string p1, "file state ok"

    .line 610
    invoke-static {p2, p1}, Lcom/tencent/rtmp/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "file not create!"

    .line 612
    invoke-static {p2, p1}, Lcom/tencent/rtmp/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;ILjava/lang/String;)V
    .locals 1

    .line 655
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/b/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 657
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadError "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \uff1a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXVodDownloadManagerEx"

    invoke-static {v0, p2}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 658
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 659
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 660
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 664
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getDownloadState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 665
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f0

    if-ne p3, p2, :cond_1

    .line 668
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    const/16 p3, -0x138e

    invoke-interface {p2, p1, p3, p4}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const p2, 0xd5eda3

    if-ne p3, p2, :cond_2

    .line 670
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    const/16 p3, -0x1390

    invoke-interface {p2, p1, p3, p4}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    const/16 p3, -0x138d

    invoke-interface {p2, p1, p3, p4}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 662
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V
    .locals 1

    .line 619
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/b/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadEnd "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXVodDownloadManagerEx"

    invoke-static {v0, p2}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 622
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 623
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 624
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 628
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 626
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V
    .locals 2

    .line 635
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/b/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadFinish "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXVodDownloadManagerEx"

    invoke-static {v0, p2}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 638
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 639
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 640
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 644
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/a/c;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 645
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadFinish(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    const/16 v0, -0x138b

    const-string v1, "The file has been deleted"

    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 642
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V
    .locals 0

    .line 681
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/b/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 682
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 683
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p2}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadProgress(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    return-void
.end method
