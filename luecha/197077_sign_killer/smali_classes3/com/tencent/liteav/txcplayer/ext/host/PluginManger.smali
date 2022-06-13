.class public Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;
.super Ljava/lang/Object;
.source "PluginManger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostEngine-PluginManger"

.field private static mInstance:Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;


# instance fields
.field private mPluginConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private _doLoadPlugin(Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;)Z
    .locals 6

    .line 120
    iget v0, p1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    .line 122
    iget-object v1, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "HostEngine-PluginManger"

    if-eqz v1, :cond_0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadPlugin], pluginId has been loaded!!, pluginId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 128
    :cond_0
    iget-object v1, p1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginClazzName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->createPluginInstance(ILjava/lang/String;)Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getInstance()Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/ext/host/HostEngine;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;->onCreate(Landroid/content/Context;)V

    .line 131
    iget-object v4, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadPlugin], succeed loading pluginId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,pluginClazzName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginClazzName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadPlugin], pluginId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not exist, do not load!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private createPluginInstance(ILjava/lang/String;)Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;
    .locals 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createPluginInstance],pluginId|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|clazzName|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HostEngine-PluginManger"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    return-object v0

    .line 154
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create pluginInstance exception, pluginId|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not install in dex!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private doLoadPlugin()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadPlugin], pluginId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,pluginClazzName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginClazzName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HostEngine-PluginManger"

    invoke-static {v4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mIsCorePlugin:Z

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0, v1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->_doLoadPlugin(Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;)Z

    goto :goto_0

    .line 112
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not core plugin, do not load by default"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;
    .locals 2

    .line 30
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;-><init>()V

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mInstance:Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;

    return-object v0
.end method

.method private loadPluginConfig()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->loadPluginConfig(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public checkAndLoadPlugin(I)Z
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;

    .line 88
    iget v3, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    if-ne v3, p1, :cond_1

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 95
    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->_doLoadPlugin(Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getPluginInstance(I)Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;

    return-object p1
.end method

.method public loadPlugin()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->loadPluginConfig()V

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->doLoadPlugin()V

    return-void
.end method

.method public unLoadPlugin()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;

    .line 54
    iget v1, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unLoadPlugin], unLoadPlugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HostEngine-PluginManger"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v2}, Lcom/tencent/liteav/txcplayer/ext/host/IPluginBase;->onDestroy()V

    .line 59
    iget-object v2, p0, Lcom/tencent/liteav/txcplayer/ext/host/PluginManger;->mPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
