.class public Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;
.super Ljava/lang/Object;
.source "FlutterKeyboardVisibilityPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private isVisible:Z

.field private mainView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 28
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "flutter_keyboard_visibility"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method private listenForKeyboard(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1020002

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private unregisterListener()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 39
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->listenForKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 24
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->init(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->unregisterListener()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->unregisterListener()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->unregisterListener()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->mainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3feb333333333333L    # 0.85

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-boolean v1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->isVisible:Z

    if-eq v0, v1, :cond_1

    .line 78
    iput-boolean v0, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->isVisible:Z

    .line 79
    iget-object v0, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_1

    .line 80
    iget-boolean v1, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 59
    iput-object p2, p0, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 49
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jrai/flutter_keyboard_visibility/FlutterKeyboardVisibilityPlugin;->listenForKeyboard(Landroid/app/Activity;)V

    return-void
.end method
