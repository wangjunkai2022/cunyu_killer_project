.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "FlutterWebViewFactory.java"


# instance fields
.field private final containerView:Landroid/view/View;

.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/view/View;)V
    .locals 1

    .line 20
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 21
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;->containerView:Landroid/view/View;

    .line 22
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 6

    .line 27
    move-object v4, p3

    check-cast v4, Ljava/util/HashMap;

    .line 28
    new-instance p3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;->containerView:Landroid/view/View;

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V

    return-object p3
.end method
