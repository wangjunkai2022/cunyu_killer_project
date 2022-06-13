.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$7;
.super Ljava/lang/Object;
.source "InAppWebViewChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->createConfirmDialog(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$7;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$7;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$7;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
