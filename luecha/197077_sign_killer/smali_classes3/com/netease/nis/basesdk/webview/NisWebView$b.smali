.class Lcom/netease/nis/basesdk/webview/NisWebView$b;
.super Ljava/lang/Object;
.source "NisWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/webview/NisWebView;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Landroid/webkit/ValueCallback;

.field final synthetic c:Lcom/netease/nis/basesdk/webview/NisWebView;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/StringBuilder;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->c:Lcom/netease/nis/basesdk/webview/NisWebView;

    iput-object p2, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->b:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->c:Lcom/netease/nis/basesdk/webview/NisWebView;

    iget-object v1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->b:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->c:Lcom/netease/nis/basesdk/webview/NisWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:onJsPrompt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->b:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$b;->c:Lcom/netease/nis/basesdk/webview/NisWebView;

    invoke-static {v1}, Lcom/netease/nis/basesdk/webview/NisWebView;->a(Lcom/netease/nis/basesdk/webview/NisWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
