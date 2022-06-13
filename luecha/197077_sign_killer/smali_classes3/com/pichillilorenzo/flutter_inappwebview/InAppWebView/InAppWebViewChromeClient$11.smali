.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$11;
.super Ljava/lang/Object;
.source "InAppWebViewChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->createPromptDialog(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$11;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$11;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$11;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 492
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
