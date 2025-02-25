.class public Lio/flutter/embedding/engine/systemchannels/NavigationChannel;
.super Ljava/lang/Object;
.source "NavigationChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field private final defaultHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/NavigationChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->defaultHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 22
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    sget-object v1, Lio/flutter/plugin/common/JSONMethodCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMethodCodec;

    const-string v2, "flutter/navigation"

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 23
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->defaultHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method public popRoute()V
    .locals 3

    const-string v0, "NavigationChannel"

    const-string v1, "Sending message to pop route."

    .line 47
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "popRoute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pushRoute(Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message to push route \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationChannel"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "pushRoute"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitialRoute(Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message to set initial route to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationChannel"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "setInitialRoute"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method
