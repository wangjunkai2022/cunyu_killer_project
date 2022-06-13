.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "InAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    .line 838
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
