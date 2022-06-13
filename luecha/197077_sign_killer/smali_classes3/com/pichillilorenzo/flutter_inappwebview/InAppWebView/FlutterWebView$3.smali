.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;
.super Landroid/webkit/WebViewClient;
.source "FlutterWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 540
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->dispose()V

    .line 541
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->destroy()V

    .line 542
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-void
.end method
