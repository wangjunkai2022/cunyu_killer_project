.class Lcom/netease/nis/basesdk/webview/NisWebView$c;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$c;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$c;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0, p3}, Lcom/netease/nis/basesdk/webview/NisWebView;->a(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$c;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->b(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$c;->a:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v0}, Lcom/netease/nis/basesdk/webview/NisWebView;->b(Lcom/netease/nis/basesdk/webview/NisWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method
