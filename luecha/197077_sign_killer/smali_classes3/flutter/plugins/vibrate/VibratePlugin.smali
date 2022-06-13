.class public Lflutter/plugins/vibrate/VibratePlugin;
.super Ljava/lang/Object;
.source "VibratePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# instance fields
.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 15
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "vibrator"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 18
    new-instance v1, Lflutter/plugins/vibrate/VibrateMethodCallHandler;

    invoke-direct {v1, v0}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;-><init>(Landroid/os/Vibrator;)V

    .line 20
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "vibrate"

    invoke-direct {v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lflutter/plugins/vibrate/VibratePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 21
    iget-object p1, p0, Lflutter/plugins/vibrate/VibratePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lflutter/plugins/vibrate/VibratePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 27
    iput-object v0, p0, Lflutter/plugins/vibrate/VibratePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
