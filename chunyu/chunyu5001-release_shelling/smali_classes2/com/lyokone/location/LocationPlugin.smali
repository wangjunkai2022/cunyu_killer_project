.class public Lcom/lyokone/location/LocationPlugin;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPlugin"


# instance fields
.field private activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private locationService:Lcom/lyokone/location/FlutterLocationService;

.field private methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/lyokone/location/LocationPlugin$1;

    invoke-direct {v0, p0}, Lcom/lyokone/location/LocationPlugin$1;-><init>(Lcom/lyokone/location/LocationPlugin;)V

    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/lyokone/location/LocationPlugin;Lcom/lyokone/location/FlutterLocationService;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/lyokone/location/LocationPlugin;->initialize(Lcom/lyokone/location/FlutterLocationService;)V

    return-void
.end method

.method private attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3

    .line 51
    iput-object p1, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 52
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-class v2, Lcom/lyokone/location/FlutterLocationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private detachActivity()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/lyokone/location/LocationPlugin;->dispose()V

    .line 58
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/LocationPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method private dispose()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lyokone/location/StreamHandlerImpl;->setLocation(Lcom/lyokone/location/FlutterLocation;)V

    .line 114
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/lyokone/location/MethodCallHandlerImpl;->setLocationService(Lcom/lyokone/location/FlutterLocationService;)V

    .line 115
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/lyokone/location/MethodCallHandlerImpl;->setLocation(Lcom/lyokone/location/FlutterLocation;)V

    .line 117
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v2, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v2}, Lcom/lyokone/location/FlutterLocationService;->getServiceRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 118
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v2, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v2}, Lcom/lyokone/location/FlutterLocationService;->getLocationRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 119
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v2, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v2}, Lcom/lyokone/location/FlutterLocationService;->getLocationActivityResultListener()Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 121
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0, v1}, Lcom/lyokone/location/FlutterLocationService;->setActivity(Landroid/app/Activity;)V

    .line 123
    iput-object v1, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    return-void
.end method

.method private initialize(Lcom/lyokone/location/FlutterLocationService;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    .line 99
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lyokone/location/FlutterLocationService;->setActivity(Landroid/app/Activity;)V

    .line 101
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->getLocationActivityResultListener()Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 102
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->getLocationRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 103
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->getServiceRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 105
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->getLocation()Lcom/lyokone/location/FlutterLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lyokone/location/MethodCallHandlerImpl;->setLocation(Lcom/lyokone/location/FlutterLocation;)V

    .line 106
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1, v0}, Lcom/lyokone/location/MethodCallHandlerImpl;->setLocationService(Lcom/lyokone/location/FlutterLocationService;)V

    .line 108
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->getLocation()Lcom/lyokone/location/FlutterLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lyokone/location/StreamHandlerImpl;->setLocation(Lcom/lyokone/location/FlutterLocation;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/lyokone/location/LocationPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/lyokone/location/MethodCallHandlerImpl;

    invoke-direct {v0}, Lcom/lyokone/location/MethodCallHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    .line 33
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyokone/location/MethodCallHandlerImpl;->startListening(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 34
    new-instance v0, Lcom/lyokone/location/StreamHandlerImpl;

    invoke-direct {v0}, Lcom/lyokone/location/StreamHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    .line 35
    iget-object v0, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lyokone/location/StreamHandlerImpl;->startListening(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/lyokone/location/LocationPlugin;->detachActivity()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/lyokone/location/LocationPlugin;->detachActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/lyokone/location/MethodCallHandlerImpl;->stopListening()V

    .line 42
    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->methodCallHandler:Lcom/lyokone/location/MethodCallHandlerImpl;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/lyokone/location/StreamHandlerImpl;->stopListening()V

    .line 46
    iput-object v0, p0, Lcom/lyokone/location/LocationPlugin;->streamHandlerImpl:Lcom/lyokone/location/StreamHandlerImpl;

    :cond_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/lyokone/location/LocationPlugin;->attachToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
