.class Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;->this$1:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;->this$1:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-static {p1}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->access$000(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;->this$1:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-static {p1}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->access$000(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
