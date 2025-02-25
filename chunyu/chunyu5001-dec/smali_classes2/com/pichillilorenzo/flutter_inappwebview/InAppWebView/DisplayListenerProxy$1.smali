.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;
.super Ljava/lang/Object;
.source "DisplayListenerProxy.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;->onPostWebViewInitialization(Landroid/hardware/display/DisplayManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;

.field final synthetic val$displayManager:Landroid/hardware/display/DisplayManager;

.field final synthetic val$webViewListeners:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;Ljava/util/ArrayList;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$webViewListeners:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$webViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 62
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$webViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 79
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy$1;->val$webViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 69
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
