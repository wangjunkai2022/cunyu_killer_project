.class public final Lcom/lyokone/location/FlutterLocationService;
.super Landroid/app/Service;
.source "FlutterLocationService.kt"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lyokone/location/FlutterLocationService$Companion;,
        Lcom/lyokone/location/FlutterLocationService$LocalBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\u0018\u0000 =2\u00020\u00012\u00020\u0002:\u0002=>B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0018\u00010!2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u000bJ\u0006\u0010\'\u001a\u00020(J\u0006\u0010)\u001a\u00020(J\u0006\u0010*\u001a\u00020\u000bJ\u0014\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010/\u001a\u00020(H\u0016J\u0008\u00100\u001a\u00020(H\u0016J1\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u0002032\u0010\u00104\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\"\u0018\u0001052\u0008\u00106\u001a\u0004\u0018\u000107H\u0016\u00a2\u0006\u0002\u00108J\u0012\u00109\u001a\u00020\u000b2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u0010:\u001a\u00020(J\u0010\u0010;\u001a\u00020(2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010<\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00060\tR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0017\u00a8\u0006?"
    }
    d2 = {
        "Lcom/lyokone/location/FlutterLocationService;",
        "Landroid/app/Service;",
        "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "backgroundNotification",
        "Lcom/lyokone/location/BackgroundNotification;",
        "binder",
        "Lcom/lyokone/location/FlutterLocationService$LocalBinder;",
        "isForeground",
        "",
        "<set-?>",
        "Lcom/lyokone/location/FlutterLocation;",
        "location",
        "getLocation",
        "()Lcom/lyokone/location/FlutterLocation;",
        "locationActivityResultListener",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "getLocationActivityResultListener",
        "()Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "locationRequestPermissionsResultListener",
        "getLocationRequestPermissionsResultListener",
        "()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "getResult",
        "()Lio/flutter/plugin/common/MethodChannel$Result;",
        "setResult",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "serviceRequestPermissionsResultListener",
        "getServiceRequestPermissionsResultListener",
        "changeNotificationOptions",
        "",
        "",
        "",
        "options",
        "Lcom/lyokone/location/NotificationOptions;",
        "checkBackgroundPermissions",
        "disableBackgroundMode",
        "",
        "enableBackgroundMode",
        "isInForegroundMode",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)Z",
        "onUnbind",
        "requestBackgroundPermissions",
        "setActivity",
        "shouldShowRequestBackgroundPermissionRationale",
        "Companion",
        "LocalBinder",
        "location_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "flutter_location_channel_01"

.field public static final Companion:Lcom/lyokone/location/FlutterLocationService$Companion;

.field private static final ONGOING_NOTIFICATION_ID:I = 0x1269a

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x281

.field private static final TAG:Ljava/lang/String; = "FlutterLocationService"


# instance fields
.field private activity:Landroid/app/Activity;

.field private backgroundNotification:Lcom/lyokone/location/BackgroundNotification;

.field private final binder:Lcom/lyokone/location/FlutterLocationService$LocalBinder;

.field private isForeground:Z

.field private location:Lcom/lyokone/location/FlutterLocation;

.field private result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lyokone/location/FlutterLocationService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lyokone/location/FlutterLocationService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/lyokone/location/FlutterLocationService;->Companion:Lcom/lyokone/location/FlutterLocationService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 135
    new-instance v0, Lcom/lyokone/location/FlutterLocationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/lyokone/location/FlutterLocationService$LocalBinder;-><init>(Lcom/lyokone/location/FlutterLocationService;)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->binder:Lcom/lyokone/location/FlutterLocationService$LocalBinder;

    return-void
.end method

.method private final shouldShowRequestBackgroundPermissionRationale()Z
    .locals 2

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 282
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 283
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public final changeNotificationOptions(Lcom/lyokone/location/NotificationOptions;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lyokone/location/NotificationOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->backgroundNotification:Lcom/lyokone/location/BackgroundNotification;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    invoke-virtual {v0, p1, v1}, Lcom/lyokone/location/BackgroundNotification;->updateOptions(Lcom/lyokone/location/NotificationOptions;Z)V

    .line 247
    :goto_0
    iget-boolean p1, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/Pair;

    const/4 v0, 0x0

    const-string v1, "channelId"

    const-string v2, "flutter_location_channel_01"

    .line 248
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const v1, 0x1269a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final checkBackgroundPermissions()Z
    .locals 3

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_3

    .line 196
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_0
    check-cast v0, Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 199
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 200
    :cond_2
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->checkPermissions()Z

    move-result v1

    :goto_1
    return v1
.end method

.method public final disableBackgroundMode()V
    .locals 2

    const-string v0, "FlutterLocationService"

    const-string v1, "Stop service in foreground."

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0}, Lcom/lyokone/location/FlutterLocationService;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    return-void
.end method

.method public final enableBackgroundMode()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    const-string v1, "FlutterLocationService"

    if-eqz v0, :cond_0

    const-string v0, "Service already in foreground mode."

    .line 226
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Start service in foreground mode."

    .line 228
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->backgroundNotification:Lcom/lyokone/location/BackgroundNotification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lyokone/location/BackgroundNotification;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1269a

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/lyokone/location/FlutterLocationService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    :goto_0
    return-void
.end method

.method public final getLocation()Lcom/lyokone/location/FlutterLocation;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    return-object v0
.end method

.method public final getLocationActivityResultListener()Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    return-object v0
.end method

.method public final getLocationRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    return-object v0
.end method

.method public final getResult()Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object v0
.end method

.method public final getServiceRequestPermissionsResultListener()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
    .locals 1

    .line 157
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    return-object v0
.end method

.method public final isInForegroundMode()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/lyokone/location/FlutterLocationService;->isForeground:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "FlutterLocationService"

    const-string v0, "Binding to location service."

    .line 176
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocationService;->binder:Lcom/lyokone/location/FlutterLocationService$LocalBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FlutterLocationService"

    const-string v1, "Creating service."

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lyokone/location/FlutterLocation;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    .line 168
    new-instance v0, Lcom/lyokone/location/BackgroundNotification;

    .line 169
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flutter_location_channel_01"

    const v3, 0x1269a

    .line 168
    invoke-direct {v0, v1, v2, v3}, Lcom/lyokone/location/BackgroundNotification;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->backgroundNotification:Lcom/lyokone/location/BackgroundNotification;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FlutterLocationService"

    const-string v1, "Destroying service."

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    .line 189
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->backgroundNotification:Lcom/lyokone/location/BackgroundNotification;

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_5

    const/16 v0, 0x281

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p1, p2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 260
    aget-object p1, p2, v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    aget-object p2, p2, p1

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 261
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p2, p3, v1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    aget p2, p3, p1

    if-nez p2, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocationService;->enableBackgroundMode()V

    .line 264
    iget-object p2, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 265
    :goto_0
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_2

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocationService;->shouldShowRequestBackgroundPermissionRationale()Z

    move-result p1

    if-nez p1, :cond_3

    .line 268
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "PERMISSION_DENIED_NEVER_ASK"

    const-string p3, "Background location permission denied forever - please open app settings"

    invoke-interface {p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 271
    :cond_3
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "PERMISSION_DENIED"

    const-string p3, "Background location permission denied"

    invoke-interface {p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    :goto_1
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_5
    :goto_2
    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "FlutterLocationService"

    const-string v1, "Unbinding from location service."

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final requestBackgroundPermissions()V
    .locals 3

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 208
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 211
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x281

    .line 209
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 208
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_3

    .line 213
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object v2, v0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/lyokone/location/FlutterLocation;->requestPermissions()V

    .line 218
    :goto_2
    iput-object v1, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    :goto_3
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 254
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocationService;->activity:Landroid/app/Activity;

    .line 255
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService;->location:Lcom/lyokone/location/FlutterLocation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lyokone/location/FlutterLocation;->setActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public final setResult(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocationService;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method
