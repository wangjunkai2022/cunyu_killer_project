.class public Lcom/wx/gesture_recognition/GestureRecognitionPlugin;
.super Ljava/lang/Object;
.source "GestureRecognitionPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onAttachedToEngine(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 31
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "gesture_recognition"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    sput-object v0, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 32
    sget-object p1, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v0, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;

    invoke-direct {v0}, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;-><init>()V

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;

    invoke-direct {v0}, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;-><init>()V

    .line 20
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;->onAttachedToEngine(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;->onAttachedToEngine(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 38
    sget-object p1, Lcom/wx/gesture_recognition/GestureRecognitionPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 43
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "getPlatformVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
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

    .line 46
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method
