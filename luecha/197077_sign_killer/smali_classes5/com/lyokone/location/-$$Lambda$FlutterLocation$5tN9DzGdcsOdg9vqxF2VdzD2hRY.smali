.class public final synthetic Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/lyokone/location/FlutterLocation;

.field private final synthetic f$1:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/lyokone/location/FlutterLocation;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;->f$0:Lcom/lyokone/location/FlutterLocation;

    iput-object p2, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;->f$1:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;->f$0:Lcom/lyokone/location/FlutterLocation;

    iget-object v1, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY;->f$1:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v0, v1, p1}, Lcom/lyokone/location/FlutterLocation;->lambda$requestService$1$FlutterLocation(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V

    return-void
.end method
