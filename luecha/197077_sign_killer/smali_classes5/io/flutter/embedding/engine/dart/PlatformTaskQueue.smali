.class public Lio/flutter/embedding/engine/dart/PlatformTaskQueue;
.super Ljava/lang/Object;
.source "PlatformTaskQueue.java"

# interfaces
.implements Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
