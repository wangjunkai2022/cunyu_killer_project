.class public Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
.super Ljava/lang/Object;
.source "FlutterEngineGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngineGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dartEntrypoint:Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

.field private dartEntrypointArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDartEntrypoint()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    .locals 1

    .line 206
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->dartEntrypoint:Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    return-object v0
.end method

.method public getDartEntrypointArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->dartEntrypointArgs:Ljava/util/List;

    return-object v0
.end method

.method public getInitialRoute()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->initialRoute:Ljava/lang/String;

    return-object v0
.end method

.method public setDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    .locals 0

    .line 230
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->dartEntrypoint:Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    return-object p0
.end method

.method public setDartEntrypointArgs(Ljava/util/List;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/FlutterEngineGroup$Options;"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->dartEntrypointArgs:Ljava/util/List;

    return-object p0
.end method

.method public setInitialRoute(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    .locals 0

    .line 241
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->initialRoute:Ljava/lang/String;

    return-object p0
.end method
