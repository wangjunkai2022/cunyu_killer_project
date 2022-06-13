.class Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlutterWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;


# direct methods
.method private constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;-><init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 86
    new-instance p1, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;

    invoke-direct {p1, p0}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient$1;-><init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;)V

    .line 108
    new-instance p2, Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$FlutterWebChromeClient;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-static {p3}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->access$000(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 112
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 113
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method
