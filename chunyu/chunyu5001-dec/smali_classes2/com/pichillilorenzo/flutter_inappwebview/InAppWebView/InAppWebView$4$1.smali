.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 861
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "true"

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 869
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 865
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 866
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    :cond_2
    :goto_1
    return-void
.end method
