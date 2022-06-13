.class public Lio/flutter/embedding/engine/dart/DartExecutor;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;,
        Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DartExecutor"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private isApplicationRunning:Z

.field private final isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

.field private isolateServiceId:Ljava/lang/String;

.field private isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    .line 49
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/dart/DartExecutor$1;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    .line 61
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 62
    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    .line 63
    new-instance p2, Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-direct {p2, p1}, Lio/flutter/embedding/engine/dart/DartMessenger;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 64
    iget-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    const-string v1, "flutter/isolate"

    invoke-virtual {p2, v1, v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    .line 65
    new-instance p2, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger;Lio/flutter/embedding/engine/dart/DartExecutor$1;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 68
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/dart/DartExecutor;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lio/flutter/embedding/engine/dart/DartExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/dart/DartExecutor;)Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    return-object p0
.end method


# virtual methods
.method public disableBufferingIncomingMessages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->disableBufferingIncomingMessages()V

    return-void
.end method

.method public enableBufferingIncomingMessages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages()V

    return-void
.end method

.method public executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V
    .locals 8

    .line 169
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    const-string p1, "Attempted to run a DartExecutor that is already running."

    .line 170
    invoke-static {v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DartExecutor#executeDartCallback"

    .line 174
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :try_start_0
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->pathToBundle:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v4, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v5, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    iget-object v6, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->androidAssetManager:Landroid/content/res/AssetManager;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 188
    throw p1
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    return-void
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    const-string p1, "Attempted to run a DartExecutor that is already running."

    .line 140
    invoke-static {v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DartExecutor#executeDartEntrypoint"

    .line 144
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart entrypoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->pathToBundle:Ljava/lang/String;

    iget-object v4, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object v5, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    iget-object v6, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 158
    throw p1
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-object v0
.end method

.method public getIsolateServiceId()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingChannelResponseCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->getPendingChannelResponseCount()I

    move-result v0

    return v0
.end method

.method public isExecutingDart()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    return v0
.end method

.method public synthetic makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 1

    invoke-static {p0}, Lio/flutter/plugin/common/BinaryMessenger$-CC;->$default$makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v0

    return-object v0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object p1

    return-object p1
.end method

.method public notifyLowMemoryWarning()V
    .locals 1

    .line 318
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    :cond_0
    return-void
.end method

.method public onAttachedToJNI()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    .line 86
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    return-void
.end method

.method public onDetachedFromJNI()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    .line 101
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public setIsolateServiceIdListener(Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;)V
    .locals 1

    .line 301
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    .line 302
    iget-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;->onIsolateServiceIdAvailable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    return-void
.end method
