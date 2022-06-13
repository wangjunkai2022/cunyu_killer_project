.class public Lxyz/ipig/native_dialog/NativeDialogPlugin;
.super Ljava/lang/Object;
.source "NativeDialogPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static _activity:Landroid/app/Activity;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private promptDialog:Lxyz/ipig/native_dialog/PromptDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lxyz/ipig/native_dialog/PromptDialog;

    sget-object v1, Lxyz/ipig/native_dialog/NativeDialogPlugin;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lxyz/ipig/native_dialog/PromptDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    :cond_0
    const-string v0, "1"

    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 108
    iget-object p1, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-virtual {p1}, Lxyz/ipig/native_dialog/PromptDialog;->dismissImmediately()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p3, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lxyz/ipig/native_dialog/PromptDialog;->showLoading(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 54
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    const-string v1, "native_dialog"

    invoke-direct {v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 55
    new-instance p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;

    invoke-direct {p0}, Lxyz/ipig/native_dialog/NativeDialogPlugin;-><init>()V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 60
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lxyz/ipig/native_dialog/NativeDialogPlugin;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 40
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    const-string v1, "native_dialog"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 41
    iget-object p1, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

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
    .locals 1

    .line 163
    iget-object p1, p0, Lxyz/ipig/native_dialog/NativeDialogPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 81
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 82
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "getPlatformVersion"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
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

    :cond_0
    const-string v1, "loadingDialog"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "version"

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    .line 89
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-direct {p0, v0, v1, p1}, Lxyz/ipig/native_dialog/NativeDialogPlugin;->loadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "loadDialog success"

    .line 92
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    return-void
.end method
