.class Lcom/lyokone/location/StreamHandlerImpl;
.super Ljava/lang/Object;
.source "StreamHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# static fields
.field private static final STREAM_CHANNEL_NAME:Ljava/lang/String; = "lyokone/locationstream"

.field private static final TAG:Ljava/lang/String; = "StreamHandlerImpl"


# instance fields
.field private channel:Lio/flutter/plugin/common/EventChannel;

.field private location:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v0, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iget-object v0, v0, Lcom/lyokone/location/FlutterLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 66
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    iput-object p2, p1, Lcom/lyokone/location/FlutterLocation;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 51
    iget-object p1, p1, Lcom/lyokone/location/FlutterLocation;->activity:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "NO_ACTIVITY"

    .line 52
    invoke-interface {p2, v0, p1, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocation;->checkPermissions()Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocation;->requestPermissions()V

    return-void

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {p1}, Lcom/lyokone/location/FlutterLocation;->startRequestingLocation()V

    return-void
.end method

.method setLocation(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->location:Lcom/lyokone/location/FlutterLocation;

    return-void
.end method

.method startListening(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/lyokone/location/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_0

    const-string v0, "StreamHandlerImpl"

    const-string v1, "Setting a method call handler before the last was disposed."

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/lyokone/location/StreamHandlerImpl;->stopListening()V

    .line 31
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "lyokone/locationstream"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lyokone/location/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    .line 32
    iget-object p1, p0, Lcom/lyokone/location/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method stopListening()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/lyokone/location/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_0

    const-string v0, "StreamHandlerImpl"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 45
    iput-object v1, p0, Lcom/lyokone/location/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    return-void
.end method
