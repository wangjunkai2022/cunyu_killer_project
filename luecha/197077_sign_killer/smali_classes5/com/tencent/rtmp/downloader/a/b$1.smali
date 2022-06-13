.class Lcom/tencent/rtmp/downloader/a/b$1;
.super Ljava/lang/Object;
.source "TXVodDownloadManagerEx.java"

# interfaces
.implements Lcom/tencent/liteav/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/downloader/a/b;->c(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

.field final synthetic c:Lcom/tencent/rtmp/downloader/a/a;

.field final synthetic d:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;Lcom/tencent/rtmp/downloader/a/a;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    iput-object p3, p0, Lcom/tencent/rtmp/downloader/a/b$1;->b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    iput-object p4, p0, Lcom/tencent/rtmp/downloader/a/b$1;->c:Lcom/tencent/rtmp/downloader/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetFailed(Lcom/tencent/liteav/network/i;Ljava/lang/String;I)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 276
    :try_start_0
    iget-object p3, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p3}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object p3, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v0, -0x1389

    invoke-interface {p1, p3, v0, p2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 277
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onNetSuccess(Lcom/tencent/liteav/network/i;)V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/a/c;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-interface {p1, v0}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    const-string p1, "TXVodDownloadManagerEx"

    const-string v0, "Download task canceled"

    .line 238
    invoke-static {p1, v0}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 234
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 242
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/network/i;->a()Lcom/tencent/liteav/network/m;

    move-result-object p1

    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 245
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->c:Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/a/a;->getQuality()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/network/m;I)Lcom/tencent/liteav/network/n;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getTemplateName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->c:Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/a/a;->getTemplateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/network/m;Ljava/lang/String;)Lcom/tencent/liteav/network/n;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 250
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 251
    :try_start_2
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/a/b;)Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x138b

    const-string v2, "No such resolution"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 252
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 258
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/liteav/network/n;->b()Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "/"

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 261
    array-length v2, v1

    if-lez v2, :cond_6

    .line 262
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "voddrm.token."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/rtmp/downloader/a/b$1;->b:Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/downloader/a/c;->b(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/n;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/downloader/a/c;->c(I)V

    .line 269
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/n;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->a(I)V

    .line 270
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$1;->d:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$1;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-static {p1, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    return-void
.end method
