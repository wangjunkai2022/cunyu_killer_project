.class public Lcom/tencent/liteav/txcplayer/b/c;
.super Ljava/lang/Object;
.source "TXVCubeDownloaderFactory.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/tencent/liteav/txcplayer/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/txcplayer/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/tencent/liteav/txcplayer/b/a;
    .locals 5

    const-string v0, "com.tencent.ijk.media.player.IjkDownloadCenter"

    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 64
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcplayer/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    sget-object v2, Lcom/tencent/liteav/txcplayer/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create IjkPlayer Downloader exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/txcplayer/b/a;
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/tencent/liteav/txcplayer/b/c;->b(Landroid/content/Context;)Lcom/tencent/liteav/txcplayer/b/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 30
    invoke-static {}, Lcom/tencent/liteav/txcplayer/b/c;->a()Lcom/tencent/liteav/txcplayer/b/a;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/tencent/liteav/txcplayer/b/a;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.liteav.thumbplayer.downloader.ThumbPlayerDownloader"

    .line 43
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    .line 47
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/txcplayer/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    sget-object v1, Lcom/tencent/liteav/txcplayer/b/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create ThumbPlayer Downloader exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method
