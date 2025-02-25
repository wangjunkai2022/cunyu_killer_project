.class public Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;
.super Ljava/lang/Object;
.source "OpeninstallFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static final METHOD_CONFIG:Ljava/lang/String; = "config"

.field private static final METHOD_EFFECT_POINT:Ljava/lang/String; = "reportEffectPoint"

.field private static final METHOD_INIT:Ljava/lang/String; = "init"

.field private static final METHOD_INIT_PERMISSION:Ljava/lang/String; = "initWithPermission"

.field private static final METHOD_INSTALL:Ljava/lang/String; = "getInstall"

.field private static final METHOD_INSTALL_NOTIFICATION:Ljava/lang/String; = "onInstallNotification"

.field private static final METHOD_INSTALL_RETRY:Ljava/lang/String; = "getInstallCanRetry"

.field private static final METHOD_REGISTER:Ljava/lang/String; = "reportRegister"

.field private static final METHOD_WAKEUP:Ljava/lang/String; = "registerWakeup"

.field private static final METHOD_WAKEUP_NOTIFICATION:Ljava/lang/String; = "onWakeupNotification"

.field private static final TAG:Ljava/lang/String; = "OpenInstallPlugin"


# instance fields
.field private activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private alwaysCallback:Z

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private configuration:Lcom/appinstall/api/Configuration;

.field private flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private volatile initialized:Z

.field private intentHolder:Landroid/content/Intent;

.field private final newIntentListener:Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

.field private final permissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 59
    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->intentHolder:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initialized:Z

    .line 61
    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->configuration:Lcom/appinstall/api/Configuration;

    .line 63
    iput-boolean v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->alwaysCallback:Z

    .line 202
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->newIntentListener:Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    .line 237
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$7;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$7;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->permissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;
    .locals 0

    .line 40
    invoke-static {p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->data2Map(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method static synthetic access$200(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->permissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    return-object p0
.end method

.method static synthetic access$300(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-object p0
.end method

.method static synthetic access$400(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initialized:Z

    return p0
.end method

.method static synthetic access$402(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initialized:Z

    return p1
.end method

.method static synthetic access$500(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Landroid/content/Intent;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->intentHolder:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$502(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 40
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->intentHolder:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->wakeup(Landroid/content/Intent;)V

    return-void
.end method

.method private checkBoolean(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private config(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/appinstall/api/Configuration$Builder;

    invoke-direct {v0}, Lcom/appinstall/api/Configuration$Builder;-><init>()V

    .line 141
    invoke-direct {p0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->checkBoolean(Ljava/lang/Boolean;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/appinstall/api/Configuration$Builder;->adEnabled(Z)Lcom/appinstall/api/Configuration$Builder;

    .line 142
    invoke-virtual {v0, p2}, Lcom/appinstall/api/Configuration$Builder;->oaid(Ljava/lang/String;)Lcom/appinstall/api/Configuration$Builder;

    .line 143
    invoke-virtual {v0, p3}, Lcom/appinstall/api/Configuration$Builder;->gaid(Ljava/lang/String;)Lcom/appinstall/api/Configuration$Builder;

    .line 144
    invoke-direct {p0, p4}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->checkBoolean(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/appinstall/api/Configuration$Builder;->macDisabled()Lcom/appinstall/api/Configuration$Builder;

    .line 147
    :cond_0
    invoke-direct {p0, p5}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->checkBoolean(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/appinstall/api/Configuration$Builder;->imeiDisabled()Lcom/appinstall/api/Configuration$Builder;

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/appinstall/api/Configuration$Builder;->build()Lcom/appinstall/api/Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->configuration:Lcom/appinstall/api/Configuration;

    return-void
.end method

.method private static data2Map(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appinstall/api/model/AppData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/appinstall/api/model/AppData;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p0}, Lcom/appinstall/api/model/AppData;->getData()Ljava/lang/String;

    move-result-object p0

    const-string v1, "bindData"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 163
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->configuration:Lcom/appinstall/api/Configuration;

    invoke-static {v0, v1}, Lcom/appinstall/api/AppInstall;->init(Landroid/content/Context;Lcom/appinstall/api/Configuration;)V

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initialized:Z

    .line 167
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->intentHolder:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->wakeup(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0, v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->wakeup(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->intentHolder:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "OpenInstallPlugin"

    const-string v1, "Context is null, can not init AppInstall"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private initWithPermission(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->permissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 186
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->configuration:Lcom/appinstall/api/Configuration;

    new-instance v1, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;

    invoke-direct {v1, p0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/appinstall/api/AppInstall;->initWithPermission(Landroid/app/Activity;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V

    return-void
.end method

.method private wakeup(Landroid/content/Intent;)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->alwaysCallback:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$5;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$5;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    invoke-static {p1, v0}, Lcom/appinstall/api/AppInstall;->getWakeUpAlwaysCallback(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$6;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$6;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    invoke-static {p1, v0}, Lcom/appinstall/api/AppInstall;->getWakeUp(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 76
    iget-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->newIntentListener:Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 69
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    const-string v1, "openinstall_flutter_plugin"

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 70
    iget-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 9

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenInstallPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "OK"

    if-eqz v0, :cond_0

    const-string v0, "oaid"

    .line 83
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "gaid"

    .line 84
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "adEnabled"

    .line 85
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    const-string v0, "macDisabled"

    .line 86
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    const-string v0, "imeiDisabled"

    .line 87
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/Boolean;

    move-object v3, p0

    .line 88
    invoke-direct/range {v3 .. v8}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->config(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 89
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 90
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v3, "init"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alwaysCallback"

    .line 91
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->alwaysCallback:Z

    .line 92
    invoke-direct {p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->init()V

    .line 93
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 94
    :cond_1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v3, "initWithPermission"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 97
    invoke-direct {p0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initWithPermission(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string p1, "Activity is null, can\'t call initWithPermission"

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->init()V

    .line 102
    :goto_0
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 103
    :cond_3
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "registerWakeup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 105
    :cond_4
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "getInstall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "seconds"

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 107
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$1;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$1;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    if-nez p1, :cond_5

    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    :goto_1
    invoke-static {v0, v1}, Lcom/appinstall/api/AppInstall;->getInstall(Lcom/appinstall/api/listener/AppInstallListener;I)V

    .line 113
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 114
    :cond_6
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v4, "getInstallCanRetry"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 116
    new-instance v0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$2;

    invoke-direct {v0, p0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$2;-><init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V

    if-nez p1, :cond_7

    goto :goto_2

    .line 123
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    :goto_2
    invoke-static {v0, v1}, Lcom/appinstall/api/AppInstall;->getInstallCanRetry(Lcom/appinstall/api/listener/AppInstallRetryAdapter;I)V

    .line 124
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 125
    :cond_8
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "reportRegister"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 126
    invoke-static {}, Lcom/appinstall/api/AppInstall;->reportRegister()V

    .line 127
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 128
    :cond_9
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "reportEffectPoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pointId"

    .line 129
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pointValue"

    .line 130
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_a

    const-wide/16 v3, 0x0

    goto :goto_3

    .line 131
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    :goto_3
    invoke-static {v0, v3, v4}, Lcom/appinstall/api/AppInstall;->reportEffectPoint(Ljava/lang/String;J)V

    .line 132
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 134
    :cond_b
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_4
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    return-void
.end method
