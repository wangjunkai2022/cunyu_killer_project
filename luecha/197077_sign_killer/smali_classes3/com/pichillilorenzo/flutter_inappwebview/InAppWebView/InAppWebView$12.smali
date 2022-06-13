.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field final synthetic val$itemId:I

.field final synthetic val$itemTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;ILjava/lang/String;)V
    .locals 0

    .line 1744
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->val$itemId:I

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->val$itemTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1747
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    .line 1749
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1750
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    :cond_0
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->val$itemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "androidId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "iosId"

    .line 1753
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->val$itemTitle:Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "onContextMenuActionItemClicked"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
