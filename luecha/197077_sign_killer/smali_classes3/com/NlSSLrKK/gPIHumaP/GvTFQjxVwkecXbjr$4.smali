.class Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object v0, v0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const-string v0, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 588
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    return v0

    :cond_0
    return v1
.end method
