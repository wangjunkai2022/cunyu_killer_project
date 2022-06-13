.class public final synthetic Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

.field private final synthetic f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController$1;Lio/flutter/plugin/platform/VirtualDisplayController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

    iput-object p2, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

    iput-object p3, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

    iget-object v1, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

    iget-object v2, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$bdnc4neMmhpmGIyPjs4h1H2nJGc;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/platform/PlatformViewsController$1;->lambda$resizePlatformView$1$PlatformViewsController$1(Lio/flutter/plugin/platform/VirtualDisplayController;Ljava/lang/Runnable;)V

    return-void
.end method
