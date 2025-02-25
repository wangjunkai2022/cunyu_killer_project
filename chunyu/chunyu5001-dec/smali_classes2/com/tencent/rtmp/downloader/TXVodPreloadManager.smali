.class public Lcom/tencent/rtmp/downloader/TXVodPreloadManager;
.super Ljava/lang/Object;
.source "TXVodPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;,
        Lcom/tencent/rtmp/downloader/TXVodPreloadManager$a;
    }
.end annotation


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field private a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/rtmp/downloader/TXVodPreloadManager$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;-><init>()V

    return-void
.end method

.method private declared-synchronized a()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const v0, 0x238ebf

    .line 48
    :try_start_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    .line 49
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/b;->b()I

    move-result v0

    if-gez v0, :cond_0

    .line 54
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MaxCacheSize not set."

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/b;->a()Ljava/lang/String;

    move-result-object v8

    const-string v1, "NO_SET"

    .line 58
    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CacheFolderPath not set."

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->b:Z

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "VodCacheReserveSizeMB"

    .line 66
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 68
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    new-instance v9, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;

    const v2, 0x238ebf

    const-string v3, "1.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liteav_tbplayer_android_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->c:Landroid/content/Context;

    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    sget-object v2, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v9}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->init(Landroid/content/Context;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;)I

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->b:Z

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v1, v8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->updateStoragePath(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setMaxStorageSizeMB(J)V

    .line 80
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    :cond_3
    :try_start_5
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Inner error."

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/rtmp/downloader/TXVodPreloadManager;
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->c:Landroid/content/Context;

    .line 42
    sget-object p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$a;->a:Lcom/tencent/rtmp/downloader/TXVodPreloadManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public startPreload(Ljava/lang/String;IJLcom/tencent/rtmp/downloader/ITXVodPreloadListener;)I
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a()Landroid/util/Pair;

    move-result-object v0

    .line 96
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p2, -0x1

    if-eqz p5, :cond_0

    .line 98
    iget-object p3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-interface {p5, p2, p1, p3, p4}, Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;->onError(ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return p2

    .line 102
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    mul-int/lit16 p2, p2, 0x400

    mul-int/lit16 p2, p2, 0x400

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "dl_param_preload_size"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "dl_param_preferred_resolution"

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance p2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;-><init>(Ljava/util/ArrayList;ILjava/util/Map;)V

    .line 108
    new-instance p3, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;

    invoke-direct {p3, p1, p5}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;-><init>(Ljava/lang/String;Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;)V

    .line 109
    iget-object p4, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-static {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->genFieldID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)I

    move-result p1

    .line 110
    invoke-virtual {p3, p1}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a(I)V

    return p1
.end method

.method public stopPreload(I)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a()Landroid/util/Pair;

    move-result-object v0

    .line 120
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->stopPreload(I)V

    return-void
.end method
