.class public Lcom/lyokone/location/FlutterLocation;
.super Ljava/lang/Object;
.source "FlutterLocation.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# static fields
.field private static final GPS_ENABLE_REQUEST:I = 0x1001

.field private static final REQUEST_CHECK_SETTINGS:I = 0x1

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final TAG:Ljava/lang/String; = "FlutterLocation"


# instance fields
.field public activity:Landroid/app/Activity;

.field private distanceFilter:F

.field public events:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private fastestUpdateIntervalMilliseconds:J

.field public getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private locationAccuracy:Ljava/lang/Integer;

.field private final locationManager:Landroid/location/LocationManager;

.field public mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLastMslAltitude:Ljava/lang/Double;

.field public mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private mMessageListener:Landroid/location/OnNmeaMessageListener;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field public mapFlutterAccuracy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestServiceResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field public result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private updateIntervalMilliseconds:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 64
    iput-wide v0, p0, Lcom/lyokone/location/FlutterLocation;->updateIntervalMilliseconds:J

    .line 65
    iget-wide v0, p0, Lcom/lyokone/location/FlutterLocation;->updateIntervalMilliseconds:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lyokone/location/FlutterLocation;->fastestUpdateIntervalMilliseconds:J

    const/16 v0, 0x64

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->locationAccuracy:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/lyokone/location/FlutterLocation;->distanceFilter:F

    .line 82
    new-instance v0, Lcom/lyokone/location/FlutterLocation$1;

    invoke-direct {v0, p0}, Lcom/lyokone/location/FlutterLocation$1;-><init>(Lcom/lyokone/location/FlutterLocation;)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mapFlutterAccuracy:Landroid/util/SparseArray;

    .line 94
    iput-object p2, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    const-string p2, "location"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/lyokone/location/FlutterLocation;)Ljava/lang/Double;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/lyokone/location/FlutterLocation;->mLastMslAltitude:Ljava/lang/Double;

    return-object p0
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 320
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 322
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method private createLocationCallback()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 222
    :cond_0
    new-instance v0, Lcom/lyokone/location/FlutterLocation$2;

    invoke-direct {v0, p0}, Lcom/lyokone/location/FlutterLocation$2;-><init>(Lcom/lyokone/location/FlutterLocation;)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 284
    new-instance v0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw;

    invoke-direct {v0, p0}, Lcom/lyokone/location/-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw;-><init>(Lcom/lyokone/location/FlutterLocation;)V

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mMessageListener:Landroid/location/OnNmeaMessageListener;

    :cond_1
    return-void
.end method

.method private createLocationRequest()V
    .locals 3

    .line 305
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 307
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-wide v1, p0, Lcom/lyokone/location/FlutterLocation;->updateIntervalMilliseconds:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 308
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-wide v1, p0, Lcom/lyokone/location/FlutterLocation;->fastestUpdateIntervalMilliseconds:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 309
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->locationAccuracy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 310
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget v1, p0, Lcom/lyokone/location/FlutterLocation;->distanceFilter:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    iput-object v1, p0, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    iput-object v1, p0, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    :cond_1
    return-void
.end method


# virtual methods
.method public changeSettings(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Float;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->locationAccuracy:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lyokone/location/FlutterLocation;->updateIntervalMilliseconds:J

    .line 194
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lyokone/location/FlutterLocation;->fastestUpdateIntervalMilliseconds:J

    .line 195
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/lyokone/location/FlutterLocation;->distanceFilter:F

    .line 197
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->createLocationCallback()V

    .line 198
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->createLocationRequest()V

    .line 199
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->buildLocationSettingsRequest()V

    .line 200
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->startRequestingLocation()V

    return-void
.end method

.method public checkPermissions()Z
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 333
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    const-string v2, "MISSING_ACTIVITY"

    const-string v3, "You should not checkPermissions activation outside of an activity."

    invoke-interface {v0, v2, v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method

.method public checkServiceEnabled()Z
    .locals 3

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$createLocationCallback$0$FlutterLocation(Ljava/lang/String;J)V
    .locals 0

    const-string p2, "$"

    .line 285
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ","

    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 287
    aget-object p2, p1, p2

    const-string p3, "$GPGGA"

    .line 291
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    array-length p2, p1

    const/16 p3, 0x9

    if-le p2, p3, :cond_0

    .line 292
    aget-object p2, p1, p3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 293
    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mLastMslAltitude:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public synthetic lambda$requestService$1$FlutterLocation(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V
    .locals 4

    .line 390
    instance-of v0, p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    const-string v1, "SERVICE_STATUS_ERROR"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 391
    check-cast p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 392
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 p2, 0x2136

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SERVICE_STATUS_DISABLED"

    const-string v0, "Failed to get location. Location services disabled"

    .line 405
    invoke-interface {p1, p2, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    const/16 v3, 0x1001

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Could not resolve location request"

    .line 400
    invoke-interface {p1, v1, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p2, "Unexpected error type received"

    .line 412
    invoke-interface {p1, v1, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startRequestingLocation$2$FlutterLocation(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 3

    .line 424
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 425
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mMessageListener:Landroid/location/OnNmeaMessageListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz p1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 430
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method public synthetic lambda$startRequestingLocation$3$FlutterLocation(Ljava/lang/Exception;)V
    .locals 3

    .line 433
    instance-of v0, p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_0

    .line 434
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 435
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FlutterLocation"

    const-string v0, "PendingIntent unable to execute request."

    .line 442
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 447
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2136

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 449
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    .line 450
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mMessageListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 452
    :cond_1
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 453
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 452
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UNEXPECTED_ERROR"

    invoke-direct {p0, v0, p1, v2}, Lcom/lyokone/location/FlutterLocation;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/16 v3, 0x1001

    if-eq p1, v3, :cond_0

    return v1

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->requestServiceResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-ne p2, p3, :cond_2

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 171
    :goto_0
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->requestServiceResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return v2

    .line 174
    :cond_3
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_4

    return v1

    :cond_4
    if-ne p2, p3, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->startRequestingLocation()V

    return v2

    :cond_5
    const-string p2, "SERVICE_STATUS_DISABLED"

    const-string p3, "Failed to get location. Location services disabled"

    .line 182
    invoke-interface {p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/lyokone/location/FlutterLocation;->onRequestPermissionsResultHandler(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResultHandler(I[Ljava/lang/String;[I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x22

    if-ne p1, v1, :cond_5

    .line 126
    array-length p1, p2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    aget-object p1, p2, v0

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 128
    aget p1, p3, v0

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz p1, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->startRequestingLocation()V

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->shouldShowRequestPermissionRationale()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "PERMISSION_DENIED_NEVER_ASK"

    const-string p3, "Location permission denied forever - please open app settings"

    .line 139
    invoke-direct {p0, p1, p3, p2}, Lcom/lyokone/location/FlutterLocation;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 143
    iput-object p2, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    :cond_3
    const-string p1, "PERMISSION_DENIED"

    const-string p3, "Location permission denied"

    .line 146
    invoke-direct {p0, p1, p3, p2}, Lcom/lyokone/location/FlutterLocation;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 149
    iput-object p2, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    :cond_4
    :goto_0
    return v1

    :cond_5
    return v0
.end method

.method public requestPermissions()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->checkPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    const-string v2, "MISSING_ACTIVITY"

    const-string v3, "You should not requestPermissions activation outside of an activity."

    invoke-interface {v0, v2, v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method

.method public requestService(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/lyokone/location/FlutterLocation;->checkServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->requestServiceResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 388
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;

    invoke-direct {v2, p0, p1}, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;-><init>(Lcom/lyokone/location/FlutterLocation;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_0
    const-string v0, "SERVICE_STATUS_ERROR"

    const-string v2, "Location service status couldn\'t be determined"

    .line 383
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "MISSING_ACTIVITY"

    const-string v2, "You should not requestService activation outside of an activity."

    .line 374
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    .line 100
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 104
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->createLocationCallback()V

    .line 105
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->createLocationRequest()V

    .line 106
    invoke-direct {p0}, Lcom/lyokone/location/FlutterLocation;->buildLocationSettingsRequest()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 112
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mMessageListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 115
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation;->mMessageListener:Landroid/location/OnNmeaMessageListener;

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldShowRequestPermissionRationale()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 355
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startRequestingLocation()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/lyokone/location/-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY;

    invoke-direct {v2, p0}, Lcom/lyokone/location/-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY;-><init>(Lcom/lyokone/location/FlutterLocation;)V

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/lyokone/location/-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI;

    invoke-direct {v2, p0}, Lcom/lyokone/location/-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI;-><init>(Lcom/lyokone/location/FlutterLocation;)V

    .line 432
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    const-string v2, "MISSING_ACTIVITY"

    const-string v3, "You should not requestLocation activation outside of an activity."

    invoke-interface {v0, v2, v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method
