.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$5;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->searchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return v1
.end method
