.class Lio/flutter/view/AccessibilityBridge$4;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/AccessibilityBridge;

.field final synthetic val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$4;->val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    .line 425
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$500(Lio/flutter/view/AccessibilityBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 429
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->access$1176(Lio/flutter/view/AccessibilityBridge;I)I

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$1300(Lio/flutter/view/AccessibilityBridge;)V

    .line 432
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    not-int v1, v1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->access$1172(Lio/flutter/view/AccessibilityBridge;I)I

    .line 434
    :goto_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$1200(Lio/flutter/view/AccessibilityBridge;)V

    .line 436
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$4;->val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 438
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 437
    invoke-interface {v0, v1, p1}, Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;->onAccessibilityChanged(ZZ)V

    :cond_2
    return-void
.end method
