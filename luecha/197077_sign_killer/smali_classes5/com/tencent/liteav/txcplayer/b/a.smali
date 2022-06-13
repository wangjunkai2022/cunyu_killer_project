.class public abstract Lcom/tencent/liteav/txcplayer/b/a;
.super Ljava/lang/Object;
.source "AbsTXVCubeDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcplayer/b/a$a;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

.field protected mDownloadPath:Ljava/lang/String;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/tencent/liteav/txcplayer/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/txcplayer/b/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteDownloadFile(Ljava/lang/String;)Z
.end method

.method public abstract downloadHls(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract makePlayPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected makePlayPathDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/liteav/txcplayer/b/a;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/txcache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    sget-object v1, Lcom/tencent/liteav/txcplayer/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create download path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/txcache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/b/a;->mDownloadPath:Ljava/lang/String;

    .line 29
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/b/a;->mDownloadPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/b/a;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/txcplayer/b/a$a;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/b/a;->mDownloadListener:Lcom/tencent/liteav/txcplayer/b/a$a;

    return-void
.end method

.method public abstract stop(I)V
.end method
