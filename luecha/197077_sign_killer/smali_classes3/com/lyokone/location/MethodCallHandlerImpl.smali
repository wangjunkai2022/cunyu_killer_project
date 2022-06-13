.class final Lcom/lyokone/location/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "lyokone/location"

.field private static final TAG:Ljava/lang/String; = "MethodCallHandlerImpl"


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private location:Lcom/lyokone/location/FlutterLocation;

.field private locationService:Lcom/lyokone/location/FlutterLocationService;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableBackgroundMode(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "enable"

    .line 165
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 166
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->checkBackgroundPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocationService;->enableBackgroundMode()V

    const/4 p1, 0x1

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocationService;->disableBackgroundMode()V

    .line 175
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1, p2}, Lcom/lyokone/location/FlutterLocationService;->setResult(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 180
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocationService;->requestBackgroundPermissions()V

    goto :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocationService;->disableBackgroundMode()V

    .line 184
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private isBackgroundModeEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocationService;->isInForegroundMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onChangeNotificationOptions(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "channelName"

    .line 194
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Location background service"

    :goto_0
    move-object v3, v1

    const-string v1, "title"

    .line 199
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Location background service running"

    :goto_1
    move-object v4, v1

    const-string v1, "iconName"

    .line 204
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "navigation_empty_icon"

    :goto_2
    move-object v5, v1

    const-string v1, "subtitle"

    .line 209
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "description"

    .line 210
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "onTapBringToFront"

    .line 211
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_3
    const-string v2, "color"

    .line 216
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 219
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v8, p1

    goto :goto_3

    :cond_4
    move-object v8, v0

    .line 222
    :goto_3
    new-instance p1, Lcom/lyokone/location/NotificationOptions;

    .line 229
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/lyokone/location/NotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 230
    iget-object v1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    invoke-virtual {v1, p1}, Lcom/lyokone/location/FlutterLocationService;->changeNotificationOptions(Lcom/lyokone/location/NotificationOptions;)Ljava/util/Map;

    move-result-object p1

    .line 231
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An unexpected error happened during notification options change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CHANGE_NOTIFICATION_OPTIONS_ERROR"

    .line 233
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private onChangeSettings(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iget-object v0, v0, Lcom/lyokone/location/FlutterLocation;->mapFlutterAccuracy:Landroid/util/SparseArray;

    const-string v1, "accuracy"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    new-instance v1, Ljava/lang/Long;

    const-string v2, "interval"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 103
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/Float;

    const-string v4, "distanceFilter"

    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Float;-><init>(D)V

    .line 106
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/lyokone/location/FlutterLocation;->changeSettings(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Float;)V

    const/4 p1, 0x1

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An unexcepted error happened during location settings change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CHANGE_SETTINGS_ERROR"

    .line 111
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onGetLocation(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iput-object p1, v0, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 118
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->checkPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocation;->requestPermissions()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocation;->startRequestingLocation()V

    :goto_0
    return-void
.end method

.method private onHasPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 127
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->checkPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iput-object p1, v0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 153
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->requestPermissions()V

    return-void
.end method

.method private onServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->checkServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    const-string v1, "SERVICE_STATUS_ERROR"

    const-string v2, "Location service status couldn\'t be determined"

    .line 142
    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 38
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "changeSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "serviceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "changeNotificationOptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "hasPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "requestService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "getLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "enableBackgroundMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "isBackgroundModeEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 64
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onChangeNotificationOptions(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 61
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->enableBackgroundMode(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 58
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->isBackgroundModeEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 55
    :pswitch_3
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1, p2}, Lcom/lyokone/location/FlutterLocation;->requestService(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 52
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 49
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 46
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onHasPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 43
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onGetLocation(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 40
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/lyokone/location/MethodCallHandlerImpl;->onChangeSettings(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39fbb8fa -> :sswitch_8
        -0x2b2eb3ac -> :sswitch_7
        -0x12d622d5 -> :sswitch_6
        0x7a13d26 -> :sswitch_5
        0xa3e3c09 -> :sswitch_4
        0x1c38fd63 -> :sswitch_3
        0x268e56cc -> :sswitch_2
        0x2c7fedbe -> :sswitch_1
        0x447d83f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setLocation(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    return-void
.end method

.method setLocationService(Lcom/lyokone/location/FlutterLocationService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->locationService:Lcom/lyokone/location/FlutterLocationService;

    return-void
.end method

.method startListening(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Setting a method call handler before the last was disposed."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/lyokone/location/MethodCallHandlerImpl;->stopListening()V

    .line 82
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "lyokone/location"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 83
    iget-object p1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method stopListening()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 96
    iput-object v1, p0, Lcom/lyokone/location/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
