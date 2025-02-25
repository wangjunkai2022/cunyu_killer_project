.class public Lcom/example/super_network_kit/SuperNetworkKitPlugin;
.super Ljava/lang/Object;
.source "SuperNetworkKitPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private connIndex:I

.field private mContext:Landroid/content/Context;

.field private wsMgrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/example/super_network_kit/WsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method private freeConnection(I)Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/super_network_kit/WsManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/example/super_network_kit/WsManager;->stopConnect()V

    .line 207
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private initConnection(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .line 113
    iget v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->connIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->connIndex:I

    .line 114
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    .line 115
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 118
    new-instance v3, Lcom/example/super_network_kit/WsManager$Builder;

    iget-object v4, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/example/super_network_kit/WsManager$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v3, p1}, Lcom/example/super_network_kit/WsManager$Builder;->wsUrl(Ljava/lang/String;)Lcom/example/super_network_kit/WsManager$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v1}, Lcom/example/super_network_kit/WsManager$Builder;->needReconnect(Z)Lcom/example/super_network_kit/WsManager$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v2}, Lcom/example/super_network_kit/WsManager$Builder;->client(Lokhttp3/OkHttpClient;)Lcom/example/super_network_kit/WsManager$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p3}, Lcom/example/super_network_kit/WsManager$Builder;->enableZip(Z)Lcom/example/super_network_kit/WsManager$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/WsManager$Builder;->salt(Ljava/lang/String;)Lcom/example/super_network_kit/WsManager$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/example/super_network_kit/WsManager$Builder;->build()Lcom/example/super_network_kit/WsManager;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onOpen:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onMessage:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onClosed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFailure:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    new-instance p2, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;-><init>(Lcom/example/super_network_kit/SuperNetworkKitPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/WsManager;->setWsStatusListener(Lcom/example/super_network_kit/listener/WsStatusListener;)V

    return v0
.end method

.method private isConnected(I)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/super_network_kit/WsManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/example/super_network_kit/WsManager;->isWsConnected()Z

    move-result p1

    return p1
.end method

.method private sendString(ILjava/lang/String;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/super_network_kit/WsManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 226
    :cond_0
    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/WsManager;->sendMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private start(I)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/super_network_kit/WsManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/example/super_network_kit/WsManager;->startConnect()V

    const/4 p1, 0x1

    return p1
.end method

.method private stop(I)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->wsMgrMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/super_network_kit/WsManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/example/super_network_kit/WsManager;->stopConnect()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "super_network_kit"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 44
    iget-object p1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 49
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 50
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "sendString"

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "connID"

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "data"

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->sendString(ILjava/lang/String;)Z

    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "initConnection"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p1, "url"

    .line 62
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "nobase64=1"

    const-string v2, "nobase64=0"

    .line 64
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "salt"

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enableZip"

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 71
    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->initConnection(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "start"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 78
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->start(I)Z

    move-result p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "stop"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 84
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->stop(I)Z

    move-result p1

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v2, "freeConnection"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 91
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->freeConnection(I)Z

    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v2, "isConnected"

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 98
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->isConnected(I)Z

    move-result p1

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_6
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "getPlatformVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_7
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method
