.class public Lcom/tencent/rtmp/downloader/TXVodDownloadManager;
.super Ljava/lang/Object;
.source "TXVodDownloadManager.java"


# static fields
.field public static final DOWNLOAD_403FORBIDDEN:I = -0x1390

.field public static final DOWNLOAD_AUTH_FAILED:I = -0x1389

.field public static final DOWNLOAD_DISCONNECT:I = -0x138d

.field public static final DOWNLOAD_FORMAT_ERROR:I = -0x138c

.field public static final DOWNLOAD_HLS_KEY_ERROR:I = -0x138e

.field public static final DOWNLOAD_NO_FILE:I = -0x138b

.field public static final DOWNLOAD_PATH_ERROR:I = -0x138f

.field public static final DOWNLOAD_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TXVodDownloadManager"

.field private static instance:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/tencent/rtmp/downloader/a/b;->a()Lcom/tencent/rtmp/downloader/a/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    .line 36
    :cond_0
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    return-object v0
.end method


# virtual methods
.method public deleteDownloadFile(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteDownloadMediaInfo(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Z

    move-result p1

    return p1
.end method

.method public getDownloadMediaInfo(ILjava/lang/String;I)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 1

    .line 146
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/rtmp/downloader/a/b;->a(ILjava/lang/String;I)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadMediaInfo(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 1

    .line 158
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadMediaInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/a/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
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

    .line 52
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method public setListener(Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;)V

    return-void
.end method

.method public startDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 1

    .line 92
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    return-object p1
.end method

.method public startDownloadUrl(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    const-string v1, "default"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    return-object p1
.end method

.method public startDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 1

    .line 82
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    return-object p1
.end method

.method public stopDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->instance:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    return-void
.end method
