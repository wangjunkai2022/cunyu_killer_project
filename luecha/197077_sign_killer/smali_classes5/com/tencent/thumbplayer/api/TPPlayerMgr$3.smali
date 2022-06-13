.class final Lcom/tencent/thumbplayer/api/TPPlayerMgr$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initAsyncWithoutWait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/tencent/thumbplayer/utils/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->a()V

    invoke-static {}, Lcom/tencent/thumbplayer/adapter/strategy/utils/TPNativeKeyMapUtil;->init()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init SDK, initAsyncWithoutWait  nativeKeyMap init, times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TPThumbPlayer[TPPlayerMgr.java]"

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->access$100()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/tencent/thumbplayer/core/common/TPThumbplayerCapabilityHelper;->init(Landroid/content/Context;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SDK, initAsyncWithoutWait  TPThumbplayerCapabilityHelper init, times: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->e()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/thumbplayer/utils/i;->a()Lcom/tencent/thumbplayer/utils/i;

    move-result-object v1

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/thumbplayer/utils/i;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/thumbplayer/b/a/c;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/b/a/c;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/b/a/c;->a()V

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/player/TPNativePlayer;->playerCoreNativeSetup(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SDK, initAsyncWithoutWait all times: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->d()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
