.class public Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;
.super Ljava/lang/Object;
.source "RenderProcessService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostEngine-RenderProcessService"

.field private static mInstance:Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;


# instance fields
.field private mEnableRenderProcess:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mEnableRenderProcess:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;
    .locals 2

    .line 33
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mInstance:Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mInstance:Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;-><init>()V

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mInstance:Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mInstance:Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    return-object v0
.end method


# virtual methods
.method public canRenderProcessWork()Z
    .locals 7

    .line 80
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->isEnableRenderProcess()Z

    move-result v0

    const-string v1, "[canRenderProcessWork],isEnableRenderProcess == false !!!"

    const/4 v2, 0x0

    const-string v3, "HostEngine-RenderProcessService"

    if-nez v0, :cond_0

    .line 81
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 86
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->checkAndLoadPlugin(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 93
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object v1

    const/16 v5, 0x68

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V

    const-string v1, "KEY_RET_PARAM1"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "[canRenderProcessWork],IS_SUPPORT_RESOLUTION == false !!!"

    .line 104
    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v0, "[canRenderProcessWork], finally return true"

    .line 108
    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public checkInit(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->init(Landroid/content/Context;)V

    return-void
.end method

.method public connectPlayer(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Landroid/view/Surface;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "HostEngine-RenderProcessService"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->canRenderProcessWork()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "connectPlayer\uff0cpostProcessService can not work!!"

    .line 125
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 129
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "KEY_PARAM1"

    .line 131
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "KEY_PARAM2"

    .line 132
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v2, 0x64

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V

    .line 139
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "KEY_RET_PARAM1"

    .line 140
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 141
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 142
    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    .line 144
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const-string p1, "connectPlayer invalid param player or surface is null !!!"

    .line 121
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getVodLicenseFeature()I
    .locals 5

    .line 56
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "HostEngine-RenderProcessService"

    if-nez v0, :cond_0

    const-string v0, "Host engine not init!!"

    .line 58
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 61
    :cond_0
    new-instance v3, Lcom/tencent/liteav/basic/license/e;

    invoke-direct {v3}, Lcom/tencent/liteav/basic/license/e;-><init>()V

    .line 62
    invoke-static {}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a()Lcom/tencent/liteav/basic/license/LicenceCheck;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I

    move-result v0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVodLicense, checkErrCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a()Lcom/tencent/liteav/basic/license/LicenceCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isEnableRenderProcess()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mEnableRenderProcess:Z

    return v0
.end method

.method public setEnableRenderProcess(Z)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableRenderProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostEngine-RenderProcessService"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->mEnableRenderProcess:Z

    return-void
.end method

.method public setSurfaceBufferSize(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "HostEngine-RenderProcessService"

    if-nez p1, :cond_0

    const-string p1, "setSurfaceBufferSize invalid param player is null !!!"

    .line 153
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->canRenderProcessWork()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "setSurfaceBufferSize\uff0cpostProcessService can not work!!"

    .line 157
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 161
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "KEY_PARAM1"

    .line 163
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object p1

    const/4 v2, 0x2

    const/16 v3, 0x65

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V

    .line 170
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "KEY_RET_PARAM1"

    .line 171
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 173
    move-object p1, v0

    check-cast p1, Ljava/lang/Boolean;

    .line 175
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public stopRenderProcess(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 4

    .line 183
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->canRenderProcessWork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "HostEngine-RenderProcessService"

    const-string v0, "stopRenderProcess invalid param player is null !!!"

    .line 187
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY_PARAM1"

    .line 192
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object p1

    const/4 v1, 0x2

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public updateRenderProcessMode(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;I)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->canRenderProcessWork()Z

    move-result v0

    const-string v1, "HostEngine-RenderProcessService"

    if-nez v0, :cond_0

    const-string p1, "updatePostProcessMode\uff0cpostProcessService can not work!!"

    .line 206
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "updatePostProcessMode invalid param player is null !!!"

    .line 210
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY_PARAM1"

    .line 215
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "KEY_PARAM2"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->sendSyncRequestToPlugin(IILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method
