.class public Lcom/example/plugin_yidun/PluginYidunPlugin;
.super Ljava/lang/Object;
.source "PluginYidunPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private codeval:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/example/plugin_yidun/PluginYidunPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->codeval:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/plugin_yidun/PluginYidunPlugin;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method static synthetic access$202(Lcom/example/plugin_yidun/PluginYidunPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->token:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "plugin_yidun"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 34
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 39
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "getPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
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

    .line 41
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "initYd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :try_start_0
    new-instance v0, Lcom/netease/mobsec/WatchManConf;

    invoke-direct {v0}, Lcom/netease/mobsec/WatchManConf;-><init>()V

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/netease/mobsec/WatchManConf;->setCollectApk(Z)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/netease/mobsec/WatchManConf;->setCollectSensor(Z)V

    .line 48
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 50
    iget-object v1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->context:Landroid/content/Context;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lcom/example/plugin_yidun/PluginYidunPlugin$1;

    invoke-direct {v2, p0}, Lcom/example/plugin_yidun/PluginYidunPlugin$1;-><init>(Lcom/example/plugin_yidun/PluginYidunPlugin;)V

    invoke-static {v1, p1, v0, v2}, Lcom/netease/mobsec/WatchMan;->init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobsec/WatchManConf;Lcom/netease/mobsec/InitCallback;)V

    .line 61
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->codeval:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v1, "-1"

    invoke-interface {p2, v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "getYdToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    :try_start_1
    new-instance p1, Lcom/example/plugin_yidun/PluginYidunPlugin$2;

    invoke-direct {p1, p0}, Lcom/example/plugin_yidun/PluginYidunPlugin$2;-><init>(Lcom/example/plugin_yidun/PluginYidunPlugin;)V

    invoke-static {p1}, Lcom/netease/mobsec/WatchMan;->getToken(Lcom/netease/mobsec/GetTokenCallback;)V

    .line 75
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin;->token:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v1, "-2"

    invoke-interface {p2, v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method
