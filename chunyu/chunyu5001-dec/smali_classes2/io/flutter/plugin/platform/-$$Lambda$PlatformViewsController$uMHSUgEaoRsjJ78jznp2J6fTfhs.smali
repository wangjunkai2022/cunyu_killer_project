.class public final synthetic Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$uMHSUgEaoRsjJ78jznp2J6fTfhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$uMHSUgEaoRsjJ78jznp2J6fTfhs;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iput p2, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$uMHSUgEaoRsjJ78jznp2J6fTfhs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$uMHSUgEaoRsjJ78jznp2J6fTfhs;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget v1, p0, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$uMHSUgEaoRsjJ78jznp2J6fTfhs;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->lambda$initializePlatformViewIfNeeded$0$PlatformViewsController(ILandroid/view/View;Z)V

    return-void
.end method
