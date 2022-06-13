.class Lcom/tencent/liteav/audio/impl/route/e$e;
.super Lcom/tencent/liteav/audio/impl/route/e$h;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e$h;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1260
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$e;->d()V

    const/4 v0, 0x0

    move v1, v0

    .line 1261
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->b:Z

    if-eqz v2, :cond_4

    .line 1262
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v2

    sget-object v3, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1264
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1265
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    .line 1266
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$e;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Z)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v2, "TXCAudioRouteManager"

    const-string v3, "connect headset: do nothing"

    .line 1263
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    const-wide/16 v2, 0x3e8

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0xfa0

    .line 1270
    :goto_3
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE_WIREDHEADSET"

    return-object v0
.end method
