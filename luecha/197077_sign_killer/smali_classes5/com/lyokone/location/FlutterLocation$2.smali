.class Lcom/lyokone/location/FlutterLocation$2;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FlutterLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lyokone/location/FlutterLocation;->createLocationCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method constructor <init>(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 7

    .line 225
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 226
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "verticalAccuracy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "headingAccuracy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "elapsedRealtimeUncertaintyNanos"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v3, "provider"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "satellites"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "satelliteNumber"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    const-string v4, "isMock"

    if-lt v1, v3, :cond_3

    .line 246
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "elapsedRealtimeNanos"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 249
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x0

    .line 252
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    invoke-static {v1}, Lcom/lyokone/location/FlutterLocation;->access$000(Lcom/lyokone/location/FlutterLocation;)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "altitude"

    if-eqz v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_5

    goto :goto_1

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    invoke-static {v1}, Lcom/lyokone/location/FlutterLocation;->access$000(Lcom/lyokone/location/FlutterLocation;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 257
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "speed"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    .line 264
    invoke-virtual {p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "speed_accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_8

    .line 270
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/lyokone/location/FlutterLocation;->getLocationResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 273
    :cond_8
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz p1, :cond_9

    .line 274
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_3

    .line 276
    :cond_9
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz p1, :cond_a

    .line 277
    iget-object p1, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v0, p0, Lcom/lyokone/location/FlutterLocation$2;->this$0:Lcom/lyokone/location/FlutterLocation;

    iget-object v0, v0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    :cond_a
    :goto_3
    return-void
.end method
