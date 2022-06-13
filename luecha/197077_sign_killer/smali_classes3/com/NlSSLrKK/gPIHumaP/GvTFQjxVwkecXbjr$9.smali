.class Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->dispose()V
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

    .line 1122
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1124
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->dispose()V

    .line 1125
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->destroy()V

    .line 1126
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-void
.end method
