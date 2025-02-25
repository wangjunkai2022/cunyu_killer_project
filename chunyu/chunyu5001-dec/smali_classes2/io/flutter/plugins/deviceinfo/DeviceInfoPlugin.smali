.class public Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;
.super Ljava/lang/Object;
.source "DeviceInfoPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# static fields
.field private static uuidFactory:Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;


# instance fields
.field channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->uuidFactory:Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;

    invoke-static {}, Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 29
    new-instance v0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;-><init>()V

    .line 30
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->setupMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method private setupMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/device_info"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 46
    sget-object p1, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->uuidFactory:Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;

    invoke-direct {p1, p2}, Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;-><init>(Landroid/content/Context;)V

    sput-object p1, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->uuidFactory:Lio/flutter/plugins/deviceinfo/DeviceUuidFactory;

    .line 50
    :cond_0
    new-instance p1, Lio/flutter/plugins/deviceinfo/MethodCallHandlerImpl;

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lio/flutter/plugins/deviceinfo/MethodCallHandlerImpl;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 52
    iget-object p2, p0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private tearDownChannel()V
    .locals 2

    .line 56
    iget-object v0, p0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 57
    iput-object v1, p0, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->setupMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lio/flutter/plugins/deviceinfo/DeviceInfoPlugin;->tearDownChannel()V

    return-void
.end method
