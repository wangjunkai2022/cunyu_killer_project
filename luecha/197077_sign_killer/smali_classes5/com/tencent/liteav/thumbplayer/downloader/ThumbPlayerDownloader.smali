.class public Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;
.super Lcom/tencent/liteav/txcplayer/b/a;
.source "ThumbPlayerDownloader.java"


# static fields
.field private static final THUMB_PLAYER_GUID:Ljava/lang/String; = "liteav_tbplayer_android_"

.field private static final THUMB_PLAYER_PLATFORM_ID:I = 0x238ebf

.field private static sInstance:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;


# instance fields
.field private mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/tencent/liteav/txcplayer/b/a;-><init>()V

    const v0, 0x238ebf

    .line 38
    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/txcache"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadPath:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_1
    new-instance v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liteav_tbplayer_android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadPath:Ljava/lang/String;

    const-string v4, "1.0.0"

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->init(Landroid/content/Context;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;)I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;)Lcom/tencent/liteav/txcplayer/b/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;
    .locals 2

    .line 60
    const-class v0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->sInstance:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->sInstance:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    .line 64
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->sInstance:Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;

    return-object p0

    :catchall_0
    move-exception p0

    .line 64
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public deleteDownloadFile(Ljava/lang/String;)Z
    .locals 3

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ".hls"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->removeStorageCache(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public downloadHls(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ".hls"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;-><init>(Ljava/util/ArrayList;ILjava/util/Map;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "dl_param_url_header"

    .line 114
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->setExtInfoMap(Ljava/util/Map;)V

    .line 117
    :cond_2
    new-instance v0, Lcom/tencent/liteav/txcplayer/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/b/b;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/tencent/liteav/txcplayer/b/b;->b:Ljava/lang/String;

    .line 119
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    new-instance v2, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader$1;-><init>(Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;Lcom/tencent/liteav/txcplayer/b/b;)V

    invoke-interface {p1, p2, v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->startOfflineDownload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)I

    move-result p1

    .line 185
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->startTask(I)V

    .line 186
    iput p1, v0, Lcom/tencent/liteav/txcplayer/b/b;->a:I

    .line 187
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    if-eqz p2, :cond_3

    .line 188
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    invoke-interface {p2, p0, v0}, Lcom/tencent/liteav/txcplayer/b/a$a;->a(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V

    :cond_3
    return p1
.end method

.method public makePlayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".hls?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    sget-object p1, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->TAG:Ljava/lang/String;

    const-string v0, "Unsupported format"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/tencent/liteav/txcplayer/b/a;->setDownloadPath(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->updateStoragePath(Ljava/lang/String;)V

    return-void
.end method

.method public stop(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mTpDownloadProxy:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pauseDownload(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/tencent/liteav/txcplayer/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/b/b;-><init>()V

    .line 90
    iput p1, v0, Lcom/tencent/liteav/txcplayer/b/b;->a:I

    .line 91
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/downloader/ThumbPlayerDownloader;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    invoke-interface {p1, p0, v0}, Lcom/tencent/liteav/txcplayer/b/a$a;->b(Lcom/tencent/liteav/txcplayer/b/a;Lcom/tencent/liteav/txcplayer/b/b;)V

    :cond_0
    return-void
.end method
