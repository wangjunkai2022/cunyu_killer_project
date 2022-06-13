.class Lcom/tencent/rtmp/downloader/a/b$2;
.super Ljava/lang/Object;
.source "TXVodDownloadManagerEx.java"

# interfaces
.implements Lcom/tencent/liteav/network/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail: errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXVodDownloadManagerEx"

    invoke-static {v0, p1}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x1389

    invoke-interface {p1, v0, v1, p2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 361
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public a(Lcom/tencent/liteav/network/g;Lcom/tencent/rtmp/TXPlayInfoParams;)V
    .locals 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: protocol params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodDownloadManagerEx"

    invoke-static {v1, v0}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/a/c;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-interface {p1, p2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    const-string p1, "TXVodDownloadManagerEx"

    const-string p2, "Download task canceled"

    .line 334
    invoke-static {p1, p2}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 337
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/rtmp/TXPlayInfoParams;->getPSign()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 338
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 339
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p2}, Lcom/tencent/rtmp/downloader/a/c;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object p2

    check-cast p2, Lcom/tencent/rtmp/downloader/a/a;

    .line 340
    invoke-virtual {p2}, Lcom/tencent/rtmp/downloader/a/a;->getAppId()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/rtmp/downloader/a/a;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p2}, Lcom/tencent/rtmp/downloader/a/a;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/rtmp/downloader/a/a;->getQuality()I

    move-result v3

    .line 340
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    invoke-virtual {p2, v1}, Lcom/tencent/rtmp/downloader/a/a;->a(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/downloader/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "TXVodDownloadManagerEx"

    const-string p2, "create local key exception!"

    .line 348
    invoke-static {p1, p2}, Lcom/tencent/rtmp/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-static {p2, v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/network/g;)V

    return-void
.end method
