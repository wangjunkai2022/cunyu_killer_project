.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;
.super Landroid/webkit/WebView;
.source "InputAwareWebView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InputAwareWebView"


# instance fields
.field public containerView:Landroid/view/View;

.field private proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

.field private threadedInputConnectionProxyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method private isCalledFromListPopupWindowShow()Z
    .locals 5

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 237
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 238
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    .line 239
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private resetInputConnection()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "InputAwareWebView"

    const-string v1, "Can\'t reset the input connection to the container view because there is none."

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_1
    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    return-void
.end method

.method private setInputConnectionTarget(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "InputAwareWebView"

    const-string v0, "Can\'t set the input connection target because there is no containerView to use as a handler."

    .line 171
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 178
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->threadedInputConnectionProxyView:Landroid/view/View;

    .line 104
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->threadedInputConnectionProxyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "InputAwareWebView"

    const-string v1, "Can\'t create a proxy view because there\'s no container view. Text input may not work."

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 119
    :cond_1
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;-><init>(Landroid/view/View;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    .line 124
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    .line 125
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public clearFocus()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroid/webkit/WebView;->clearFocus()V

    .line 139
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->resetInputConnection()V

    return-void
.end method

.method dispose()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->resetInputConnection()V

    return-void
.end method

.method public lockInputConnection()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;->setLocked(Z)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->isCalledFromListPopupWindowShow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 2

    .line 48
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InputAwareWebView"

    const-string v1, "The containerView has changed while the proxyAdapterView exists."

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public unlockInputConnection()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->proxyAdapterView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ThreadedInputConnectionProxyAdapterView;->setLocked(Z)V

    return-void
.end method
