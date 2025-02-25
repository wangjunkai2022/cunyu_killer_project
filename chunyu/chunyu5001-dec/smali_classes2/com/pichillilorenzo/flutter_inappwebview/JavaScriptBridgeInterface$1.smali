.class Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->_hideContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

.field final synthetic val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$1;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$1;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$1;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    :cond_0
    return-void
.end method
