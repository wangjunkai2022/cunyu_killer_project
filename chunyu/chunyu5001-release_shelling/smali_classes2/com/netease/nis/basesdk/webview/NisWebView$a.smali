.class Lcom/netease/nis/basesdk/webview/NisWebView$a;
.super Ljava/lang/Object;
.source "NisWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/webview/NisWebView;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/netease/nis/basesdk/webview/NisWebView;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/webview/NisWebView;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->b:Lcom/netease/nis/basesdk/webview/NisWebView;

    iput-object p2, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->a:Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->b:Lcom/netease/nis/basesdk/webview/NisWebView;

    iget-object v1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->b:Lcom/netease/nis/basesdk/webview/NisWebView;

    iget-object v1, p0, Lcom/netease/nis/basesdk/webview/NisWebView$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
