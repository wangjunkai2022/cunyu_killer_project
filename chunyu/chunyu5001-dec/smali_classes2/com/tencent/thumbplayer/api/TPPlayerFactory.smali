.class public Lcom/tencent/thumbplayer/api/TPPlayerFactory;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TPPlayerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRichMediaASyncRequester(Landroid/content/Context;)Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaAsyncRequester;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createRichMediaSynchronizer(Landroid/content/Context;)Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/g/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/g/b;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create rich media synchronizer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TPPlayerFactory"

    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/tencent/thumbplayer/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance p0, Lcom/tencent/thumbplayer/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V

    new-instance p0, Lcom/tencent/thumbplayer/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/f/b;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/f/b;)V

    new-instance p0, Lcom/tencent/thumbplayer/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Lcom/tencent/thumbplayer/f/b;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 2

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/f/b;)V

    new-instance p0, Lcom/tencent/thumbplayer/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    check-cast p0, Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPSurface(Landroid/graphics/SurfaceTexture;)Lcom/tencent/thumbplayer/api/ITPSurface;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/e;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tplayer/e;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method
