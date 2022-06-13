.class public Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;
.super Ljava/lang/Object;
.source "HostEngine.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HostEngine"

.field private static mInstance:Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mIsInit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mIsInit:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;
    .locals 2

    .line 27
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;-><init>()V

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    return-object v0
.end method


# virtual methods
.method public checkAndLoadPlugin(I)Z
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkAndLoadPlugin], pluginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostEngine"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->checkAndLoadPlugin(I)Z

    move-result p1

    return p1
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleSyncRequestHandleByHost(ILjava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleSyncRequestHandleByHost], functionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,inParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ,outParams="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HostEngine"

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string v0, "KEY_RET_PARAM1"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    const/4 p1, 0x3

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getVodLicenseFeature()I

    move-result p1

    if-eqz p3, :cond_2

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "HostEngine"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init], appContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mIsInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mAppContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->onCreate()V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->mIsInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "HostEngine"

    const-string v1, "[onCreate]"

    .line 54
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->loadPlugin()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HostEngine"

    const-string v1, "[onDestroy]"

    .line 60
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->unLoadPlugin()V

    return-void
.end method

.method public sendAsyncRequestToPlugin(IILjava/util/Map;Lcom/tencent/liteav/txcplayer/ext/host/PluginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/liteav/txcplayer/ext/host/PluginCallback;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getPluginInstance(I)Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;->handleAsyncRequest(IILjava/util/Map;Lcom/tencent/liteav/txcplayer/ext/host/PluginCallback;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[sendAsyncRequestToPlugin], destPluginId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HostEngine"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendSyncRequestHandleByHost(ILjava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->handleSyncRequestHandleByHost(ILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->getPluginInstance(I)Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;->handleSyncRequest(IILjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[sendSyncRequestToPlugin], destPluginId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not loaded"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HostEngine"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
