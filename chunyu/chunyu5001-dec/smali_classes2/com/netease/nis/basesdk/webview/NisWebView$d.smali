.class Lcom/netease/nis/basesdk/webview/NisWebView$d;
.super Landroid/webkit/WebViewClient;
.source "NisWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/basesdk/webview/NisWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/basesdk/webview/NisWebView;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/webview/NisWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$d;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$d;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->c(Lcom/netease/nis/basesdk/webview/NisWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$d;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->d(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$d;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->d(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_1
    return-void
.end method
