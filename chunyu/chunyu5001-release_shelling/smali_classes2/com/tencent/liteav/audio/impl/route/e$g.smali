.class Lcom/tencent/liteav/audio/impl/route/e$g;
.super Lcom/tencent/liteav/audio/impl/route/e$h;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e$h;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1232
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$g;->d()V

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 1235
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->b:Z

    if-eqz v3, :cond_4

    .line 1236
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v3

    sget-object v5, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-ne v3, v5, :cond_0

    goto :goto_1

    .line 1238
    :cond_0
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1239
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Z)V

    goto :goto_2

    :cond_1
    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 1237
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$g;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "connect speakerPhone: do nothing, mCurrentIOScene: %s"

    invoke-static {v1, v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0xfa0

    .line 1243
    :goto_3
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE_SPEAKERPHONE"

    return-object v0
.end method
