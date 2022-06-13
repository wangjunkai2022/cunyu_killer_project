.class Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;
.super Ljava/lang/Object;
.source "ThumbPlayerDownloader.java"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->downloadHls(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

.field final synthetic val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;Lcom/tencent/liteav/txcplayer/b/b;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    iput-object p2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCdnUrlExpired(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDownloadCdnUrlExpired!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-static {}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCdnUrlUpdate! url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadError(IILjava/lang/String;)V
    .locals 3

    .line 154
    invoke-static {}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HLS offline download error! moduleID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$500(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$600(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/tencent/liteav/txcplayer/b/a$a;->a(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadFinish()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$200(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$300(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/txcplayer/b/a$a;->c(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V

    :cond_0
    return-void
.end method

.method public onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x400

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    long-to-int p3, p3

    .line 123
    iget-object p4, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    iget p4, p4, Lcom/tencent/liteav/txcplayer/b/b;->c:I

    if-eq p3, p4, :cond_0

    .line 124
    iget-object p4, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    iput p3, p4, Lcom/tencent/liteav/txcplayer/b/b;->c:I

    .line 126
    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    long-to-int p4, p5

    iput p4, p3, Lcom/tencent/liteav/txcplayer/b/b;->d:I

    .line 127
    iput p2, p3, Lcom/tencent/liteav/txcplayer/b/b;->e:I

    .line 128
    iput p1, p3, Lcom/tencent/liteav/txcplayer/b/b;->h:I

    .line 129
    iget p1, p3, Lcom/tencent/liteav/txcplayer/b/b;->i:I

    if-gtz p1, :cond_2

    .line 130
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "totalDuration"

    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ","

    .line 131
    invoke-virtual {p7, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 132
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object p5, p2, p4

    .line 133
    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 134
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/tencent/liteav/txcplayer/b/b;->i:I

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 140
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$000(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$100(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->this$0:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    iget-object p3, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;->val$downloadMedia:Lcom/tencent/liteav/txcplayer/b/b;

    invoke-interface {p1, p2, p3}, Lcom/tencent/liteav/txcplayer/b/a$a;->d(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V

    :cond_3
    return-void
.end method

.method public onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 182
    invoke-static {}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProtocolUpdate! protocol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", protocolVer:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadStatusUpdate(I)V
    .locals 3

    .line 177
    invoke-static {}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStatusUpdate! statusCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
