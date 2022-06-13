.class public Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;
.super Ljava/lang/Object;
.source "FlutterWindowManagerPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method private registerWith(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 37
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter_windowmanager"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    new-instance v0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->registerWith(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method private validLayoutParam(I)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/16 v1, 0x13

    const/16 v2, 0x1b

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    return v3

    .line 88
    :sswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    .line 92
    :sswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    return v0

    .line 99
    :sswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    return v0

    .line 90
    :sswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p1, v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    return v0

    .line 82
    :sswitch_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    return v0

    .line 101
    :sswitch_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_5

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    return v0

    .line 94
    :sswitch_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_6

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    return v0

    .line 84
    :sswitch_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge p1, v1, :cond_7

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    return v0

    .line 96
    :sswitch_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge p1, v1, :cond_8

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    return v0

    .line 80
    :sswitch_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge p1, v1, :cond_9

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    return v0

    .line 86
    :sswitch_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_a

    goto :goto_a

    :cond_a
    move v0, v3

    :cond_b
    :goto_a
    :sswitch_b
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_b
        0x10 -> :sswitch_b
        0x20 -> :sswitch_b
        0x40 -> :sswitch_8
        0x80 -> :sswitch_b
        0x100 -> :sswitch_b
        0x200 -> :sswitch_b
        0x400 -> :sswitch_b
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_b
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_b
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_b
        0x1000000 -> :sswitch_b
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private validLayoutParams(Lio/flutter/plugin/common/MethodChannel$Result;I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    shl-int v2, v3, v1

    and-int v4, p2, v2

    if-ne v4, v3, :cond_0

    .line 111
    invoke-direct {p0, v2}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->validLayoutParam(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterWindowManagerPlugin: invalid flag specification: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "FlutterWindowManagerPlugin"

    invoke-interface {p1, v2, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 149
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->registerWith(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    const-string v0, "flags"

    .line 123
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "FlutterWindowManagerPlugin"

    const-string v3, "FlutterWindowManagerPlugin: ignored flag state change, current activity is null"

    .line 126
    invoke-interface {p2, v2, v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-direct {p0, p2, v0}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->validLayoutParams(Lio/flutter/plugin/common/MethodChannel$Result;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4b0d3d9a

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x2d11cfc6

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "clearFlags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "addFlags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    .line 143
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 139
    :cond_5
    iget-object p1, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 140
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 135
    :cond_6
    iget-object p1, p0, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lio/adaptant/labs/flutter_windowmanager/FlutterWindowManagerPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
