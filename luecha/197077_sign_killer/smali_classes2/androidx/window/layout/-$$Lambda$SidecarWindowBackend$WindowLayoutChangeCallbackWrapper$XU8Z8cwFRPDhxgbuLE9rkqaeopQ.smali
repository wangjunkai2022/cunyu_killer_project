.class public final synthetic Landroidx/window/layout/-$$Lambda$SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$XU8Z8cwFRPDhxgbuLE9rkqaeopQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

.field private final synthetic f$1:Landroidx/window/layout/WindowLayoutInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/-$$Lambda$SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$XU8Z8cwFRPDhxgbuLE9rkqaeopQ;->f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iput-object p2, p0, Landroidx/window/layout/-$$Lambda$SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$XU8Z8cwFRPDhxgbuLE9rkqaeopQ;->f$1:Landroidx/window/layout/WindowLayoutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/-$$Lambda$SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$XU8Z8cwFRPDhxgbuLE9rkqaeopQ;->f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v1, p0, Landroidx/window/layout/-$$Lambda$SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$XU8Z8cwFRPDhxgbuLE9rkqaeopQ;->f$1:Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v0, v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lambda$XU8Z8cwFRPDhxgbuLE9rkqaeopQ(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
