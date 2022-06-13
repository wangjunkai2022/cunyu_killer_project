.class public Lio/flutter/embedding/engine/FlutterEngineGroup;
.super Ljava/lang/Object;
.source "FlutterEngineGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    }
.end annotation


# instance fields
.field final activeEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/FlutterEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 59
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createAndRunDefaultEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    return-object p1
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    return-object p1
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 120
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, p2}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setInitialRoute(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    return-object p1
.end method

.method public createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 5

    .line 141
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypoint()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getInitialRoute()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypointArgs()Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_0

    .line 147
    invoke-static {}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->createDefault()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v1

    .line 150
    :cond_0
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 151
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 155
    :cond_1
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    const/4 v4, 0x0

    .line 158
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v3, v0, v1, v2, p1}, Lio/flutter/embedding/engine/FlutterEngine;->spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    .line 161
    :goto_0
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Lio/flutter/embedding/engine/FlutterEngineGroup$1;

    invoke-direct {p1, p0, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup$1;-><init>(Lio/flutter/embedding/engine/FlutterEngineGroup;Lio/flutter/embedding/engine/FlutterEngine;)V

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterEngine;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    return-object v0
.end method

.method createEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 182
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
