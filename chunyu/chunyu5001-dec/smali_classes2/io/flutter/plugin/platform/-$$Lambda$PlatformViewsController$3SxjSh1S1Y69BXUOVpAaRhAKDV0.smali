.class public final synthetic Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$3SxjSh1S1Y69BXUOVpAaRhAKDV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/platform/PlatformViewsController;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$3SxjSh1S1Y69BXUOVpAaRhAKDV0;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$3SxjSh1S1Y69BXUOVpAaRhAKDV0;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->lambda$onEndFrame$1$PlatformViewsController()V

    return-void
.end method
