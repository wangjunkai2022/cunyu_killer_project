.class public Lio/flutter/view/AccessibilityBridge;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityBridge$SemanticsNode;,
        Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;,
        Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;,
        Lio/flutter/view/AccessibilityBridge$StringAttribute;,
        Lio/flutter/view/AccessibilityBridge$StringAttributeType;,
        Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;,
        Lio/flutter/view/AccessibilityBridge$TextDirection;,
        Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;,
        Lio/flutter/view/AccessibilityBridge$Flag;,
        Lio/flutter/view/AccessibilityBridge$Action;,
        Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_ON_SCREEN:I = 0x1020036

.field private static FIRST_RESOURCE_ID:I = 0x0

.field private static final FOCUSABLE_FLAGS:I

.field private static final MIN_ENGINE_GENERATED_NODE_ID:I = 0x10000

.field private static final ROOT_NODE_ID:I = 0x0

.field private static final SCROLLABLE_ACTIONS:I

.field private static final SCROLL_EXTENT_FOR_INFINITY:F = 100000.0f

.field private static final SCROLL_POSITION_CAP_FOR_INFINITY:F = 70000.0f

.field private static final TAG:Ljava/lang/String; = "AccessibilityBridge"


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private accessibilityFeatureFlags:I

.field private accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

.field private final accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

.field private final animationScaleObserver:Landroid/database/ContentObserver;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final customAccessibilityActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

.field private embeddedInputFocusedNodeId:Ljava/lang/Integer;

.field private final flutterNavigationStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterSemanticsTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private isReleased:Z

.field private lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private lastLeftFrameInset:Ljava/lang/Integer;

.field private onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private final platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

.field private previousRouteId:I

.field private final rootAccessibilityView:Landroid/view/View;

.field private final touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    .line 94
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    const v0, 0xff00001

    .line 124
    sput v0, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 7

    .line 389
    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 3

    .line 405
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    .line 251
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    .line 261
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 264
    new-instance v1, Lio/flutter/view/AccessibilityBridge$1;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$1;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    .line 322
    new-instance v1, Lio/flutter/view/AccessibilityBridge$2;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$2;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 354
    new-instance v1, Lio/flutter/view/AccessibilityBridge$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lio/flutter/view/AccessibilityBridge$3;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/os/Handler;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    .line 406
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 407
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 408
    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 409
    iput-object p4, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    .line 410
    iput-object p5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 411
    iput-object p6, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 415
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 416
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 420
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 421
    new-instance p1, Lio/flutter/view/AccessibilityBridge$4;

    invoke-direct {p1, p0, p3}, Lio/flutter/view/AccessibilityBridge$4;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 442
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 443
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    .line 442
    invoke-interface {p1, p2}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 444
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 447
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 452
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    .line 453
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "transition_animation_scale"

    .line 454
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 455
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    :cond_1
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lio/flutter/view/AccessibilityBridge;)Landroid/content/ContentResolver;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1172(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1

    .line 77
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return p1
.end method

.method static synthetic access$1176(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1

    .line 77
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return p1
.end method

.method static synthetic access$1200(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->sendLatestAccessibilityFlagsToFlutter()V

    return-void
.end method

.method static synthetic access$1300(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    return-void
.end method

.method static synthetic access$200(Lio/flutter/view/AccessibilityBridge;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityBridge;II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityBridge;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    return p0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    return-object p0
.end method

.method static synthetic access$6600(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object p0
.end method

.method static synthetic access$7000()I
    .locals 1

    .line 77
    sget v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    return v0
.end method

.method static synthetic access$7100()I
    .locals 1

    .line 77
    sget v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    return v0
.end method

.method static synthetic access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-object p0
.end method

.method static synthetic access$900(Lio/flutter/view/AccessibilityBridge;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    const/16 v0, 0x10

    .line 1767
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1768
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1769
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1772
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1773
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1781
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1783
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1784
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v1, v0, :cond_4

    if-lt v2, v0, :cond_4

    .line 1786
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 1792
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 1793
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    return-object p1
.end method

.method private doesLayoutInDisplayCutoutModeRequireLeftInset()Z
    .locals 3

    .line 1913
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1914
    invoke-static {v0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1915
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1920
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 929
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 931
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 932
    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 2

    .line 1411
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    if-nez v0, :cond_0

    .line 1413
    new-instance v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;-><init>()V

    .line 1414
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1415
    sget v1, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3402(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1416
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2

    .line 1390
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v0, :cond_0

    .line 1392
    new-instance v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-direct {v0, p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    .line 1393
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1394
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2

    .line 1376
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object v0
.end method

.method private handleTouchExploration(FF)V
    .locals 3

    .line 1484
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1488
    :cond_0
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, v1, p1

    const/4 p1, 0x3

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p1

    .line 1489
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_1

    .line 1493
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    const/16 v0, 0x80

    .line 1492
    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1495
    :cond_1
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p2, :cond_2

    .line 1496
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    const/16 v0, 0x100

    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1498
    :cond_2
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_3
    return-void
.end method

.method static synthetic lambda$shouldSetCollectionInfo$0(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$shouldSetCollectionInfo$1(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1

    .line 518
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p0

    return p0
.end method

.method private obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1898
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 1899
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1900
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private onTouchExplorationExit()V
    .locals 2

    .line 1468
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 1469
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    const/4 v0, 0x0

    .line 1470
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_0
    return-void
.end method

.method private onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 3

    .line 1842
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 1854
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 1855
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setAccessibilityPaneTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1858
    :cond_1
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1859
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method private performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z
    .locals 4

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1185
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1187
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 1190
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    .line 1191
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    .line 1192
    invoke-direct {p0, p1, v0, p4, p3}, Lio/flutter/view/AccessibilityBridge;->predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V

    .line 1194
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 1195
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    if-eq v2, v1, :cond_2

    .line 1196
    :cond_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 1199
    :goto_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    const/16 v3, 0x2000

    .line 1198
    invoke-direct {p0, v2, v3}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1202
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1204
    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_3

    const/16 p1, 0x10

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    if-eqz p4, :cond_5

    .line 1223
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1224
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1225
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1224
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_5
    if-nez p4, :cond_8

    .line 1228
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1229
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1230
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1229
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_6
    if-eqz p4, :cond_7

    .line 1210
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1211
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1212
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1211
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_7
    if-nez p4, :cond_8

    .line 1215
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1216
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1217
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1216
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 1320
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 1323
    :goto_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p2, v1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1326
    invoke-static {p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V
    .locals 3

    .line 1244
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 1300
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1302
    :cond_2
    invoke-static {p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_5

    .line 1277
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_5

    const-string p2, "(?!^)(\\n)"

    .line 1279
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1280
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1281
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1282
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1284
    :cond_4
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_5
    if-nez p3, :cond_c

    .line 1286
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\n)"

    .line 1288
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1289
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1290
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1291
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1293
    :cond_6
    invoke-static {p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_9

    .line 1257
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_9

    const-string p2, "\\p{L}(\\b)"

    .line 1258
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1259
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1261
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 1262
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1263
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    .line 1265
    :cond_8
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_9
    if-nez p3, :cond_c

    .line 1267
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\b)\\p{L}"

    .line 1269
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1270
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1271
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1272
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 1250
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_b

    .line 1251
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_b
    if-nez p3, :cond_c

    .line 1252
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    .line 1253
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2120(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    :cond_c
    :goto_0
    if-nez p4, :cond_d

    .line 1307
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    :cond_d
    :goto_1
    return-void
.end method

.method private sendAccessibilityEvent(II)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1809
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1820
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1827
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private sendLatestAccessibilityFlagsToFlutter()V
    .locals 2

    .line 501
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityFeatures(I)V

    return-void
.end method

.method private sendWindowContentChangeEvent(I)V
    .locals 2

    const/16 v0, 0x800

    .line 1882
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1883
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1884
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1886
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private setAccessibilityPaneTitle(Ljava/lang/String;)V
    .locals 1

    .line 1867
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 2

    .line 514
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    new-instance v1, Lio/flutter/view/-$$Lambda$AccessibilityBridge$JBDpWWlF54eN0gel8Jn1hY7yOmE;

    invoke-direct {v1, p1}, Lio/flutter/view/-$$Lambda$AccessibilityBridge$JBDpWWlF54eN0gel8Jn1hY7yOmE;-><init>(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 515
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    sget-object v0, Lio/flutter/view/-$$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY;->INSTANCE:Lio/flutter/view/-$$Lambda$AccessibilityBridge$_xgAbWhyKyeHrMGUVUYzbSFEeBY;

    .line 517
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 6

    const/4 v0, 0x0

    .line 1946
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1948
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1950
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1952
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1951
    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 1955
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1956
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1955
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1958
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1961
    :cond_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1963
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1962
    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1964
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1966
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1965
    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    .line 1968
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1973
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_2

    .line 1975
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    .line 1974
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1977
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1980
    :cond_2
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_3

    .line 1981
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1984
    :cond_3
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_4

    .line 1985
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_4
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 561
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 565
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    return-object p1

    .line 571
    :cond_2
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 584
    :cond_3
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 585
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 586
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v4

    .line 587
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 588
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object p1

    .line 589
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {v0, v4, v1, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 593
    :cond_4
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 594
    invoke-virtual {p0, v4, p1}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 596
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, ""

    const/16 v7, 0x12

    if-lt v5, v7, :cond_5

    .line 597
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 599
    :cond_5
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v5, "android.view.View"

    .line 600
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 602
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 603
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v8, 0x1

    if-eqz v5, :cond_7

    .line 604
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_6

    move v5, v8

    goto :goto_0

    :cond_6
    move v5, v2

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 607
    :cond_7
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v5, :cond_9

    .line 608
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_8

    move v5, v8

    goto :goto_1

    :cond_8
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 611
    :cond_9
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    const/16 v9, 0x15

    if-eqz v5, :cond_12

    .line 612
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 613
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "android.widget.EditText"

    .line 614
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 616
    :cond_a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_c

    .line 617
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    xor-int/2addr v5, v8

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 618
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-eq v5, v1, :cond_b

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-eq v5, v1, :cond_b

    .line 620
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    .line 619
    invoke-virtual {v4, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 625
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_c

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v5, :cond_c

    .line 627
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_c

    .line 628
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 634
    :cond_c
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    const/16 v10, 0x100

    if-eqz v5, :cond_d

    .line 635
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    move v5, v8

    goto :goto_2

    :cond_d
    move v5, v2

    .line 638
    :goto_2
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    const/16 v12, 0x200

    if-eqz v11, :cond_e

    .line 639
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x1

    .line 642
    :cond_e
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 643
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x2

    .line 646
    :cond_f
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 647
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x2

    .line 650
    :cond_10
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 651
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_12

    .line 652
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ltz v5, :cond_12

    .line 655
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    move v5, v2

    goto :goto_3

    :cond_11
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 656
    :goto_3
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    .line 658
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    sub-int/2addr v5, v10

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    add-int/2addr v5, v10

    .line 657
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 664
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_16

    .line 665
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/high16 v5, 0x20000

    .line 666
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 668
    :cond_13
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v5, 0x4000

    .line 669
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 671
    :cond_14
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 672
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 674
    :cond_15
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x8000

    .line 675
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 680
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_17

    .line 681
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, 0x200000

    .line 682
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 686
    :cond_17
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const-string v0, "android.widget.Button"

    .line 687
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 689
    :cond_19
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "android.widget.ImageView"

    .line 690
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 694
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_1b

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 695
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 696
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const/high16 v0, 0x100000

    .line 697
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 700
    :cond_1b
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 704
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_4

    .line 709
    :cond_1c
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 712
    :goto_4
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eq v0, v1, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v0, v5, :cond_1d

    .line 714
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 717
    :cond_1d
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v0

    .line 718
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 719
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v5

    .line 720
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 721
    iget v11, v5, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v10, v11, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 722
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 724
    :cond_1e
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 726
    :goto_5
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 727
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 728
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 729
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 730
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_6

    :cond_1f
    move v0, v2

    goto :goto_7

    :cond_20
    :goto_6
    move v0, v8

    .line 729
    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 732
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 733
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v0, v9, :cond_21

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 734
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 736
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v10

    invoke-static {v10}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2900(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 734
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 737
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    .line 739
    :cond_21
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 740
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 743
    :cond_22
    :goto_8
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x20

    if-lt v0, v9, :cond_23

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 745
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 747
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v10

    invoke-static {v10}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2900(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 745
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 748
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_9

    .line 750
    :cond_23
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 751
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 754
    :cond_24
    :goto_9
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    const/16 v5, 0x2000

    const/16 v10, 0x1000

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 755
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 756
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 757
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 758
    :cond_25
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 774
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 775
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 776
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_a

    .line 789
    :cond_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_27

    .line 790
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 793
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 792
    invoke-static {v0, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 791
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_27
    const-string v0, "android.widget.ScrollView"

    .line 798
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 777
    :cond_28
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-le v0, v11, :cond_29

    .line 778
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 782
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 780
    invoke-static {v2, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 779
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_29
    const-string v0, "android.widget.HorizontalScrollView"

    .line 786
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 805
    :cond_2a
    :goto_b
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 806
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 807
    :cond_2b
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 809
    :cond_2c
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 810
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 811
    :cond_2d
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 814
    :cond_2e
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const-string v0, "android.widget.SeekBar"

    .line 817
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 818
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 819
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 821
    :cond_30
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 822
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 825
    :cond_31
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_32

    .line 827
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 832
    :cond_32
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/16 v5, 0x1c

    if-eqz v0, :cond_33

    .line 833
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 834
    :cond_33
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 835
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 836
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v5, :cond_35

    .line 837
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_35

    if-eqz v0, :cond_34

    goto :goto_c

    :cond_34
    move-object v0, v6

    .line 841
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    if-eqz v0, :cond_36

    .line 845
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 849
    :cond_36
    :goto_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_37

    .line 850
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 851
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 855
    :cond_37
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    .line 856
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v6

    if-nez v0, :cond_38

    if-eqz v6, :cond_39

    :cond_38
    move v2, v8

    .line 860
    :cond_39
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v0, :cond_3b

    .line 862
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 863
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.widget.RadioButton"

    .line 864
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_3a
    const-string v0, "android.widget.CheckBox"

    .line 866
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_3b
    if-eqz v6, :cond_3c

    .line 869
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.Switch"

    .line 870
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 872
    :cond_3c
    :goto_e
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 875
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3d

    .line 876
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 880
    :cond_3d
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_3e

    .line 881
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne v0, p1, :cond_3e

    const/16 p1, 0x80

    .line 882
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_f

    :cond_3e
    const/16 p1, 0x40

    .line 884
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 888
    :goto_f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_3f

    .line 889
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 890
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 891
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 892
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3400(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v5

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3500(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 891
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_10

    .line 897
    :cond_3f
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 898
    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_11

    .line 901
    :cond_40
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    if-eq v2, v1, :cond_41

    .line 902
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 903
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v2

    .line 912
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 913
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_11

    .line 917
    :cond_41
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_11

    :cond_42
    return-object v4
.end method

.method public externalViewRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2786
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2790
    :cond_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {p2, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 2794
    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_5

    const/16 p3, 0x80

    if-eq p2, p3, :cond_4

    const p3, 0x8000

    if-eq p2, p3, :cond_3

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 2803
    :cond_2
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 2804
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    goto :goto_0

    .line 2799
    :cond_3
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 2800
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    .line 2796
    :cond_4
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    .line 2807
    :cond_5
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 2808
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1350
    :cond_0
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p1, :cond_1

    .line 1351
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1353
    :cond_1
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 1354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1360
    :cond_2
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p1, :cond_3

    .line 1361
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1363
    :cond_3
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 1364
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHoveredObjectId()I
    .locals 1

    .line 240
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 523
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1432
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1435
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1440
    :cond_1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, v2, v3

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1443
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1444
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1445
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 1444
    invoke-virtual {v1, v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1448
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 1449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 1451
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 1452
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    goto :goto_1

    .line 1454
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected accessibility hover event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flutter"

    invoke-static {v0, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1450
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/flutter/view/AccessibilityBridge;->handleTouchExploration(FF)V

    :goto_1
    return v4
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 955
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 956
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p3, 0x80

    if-ne p2, p3, :cond_0

    .line 959
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    :cond_0
    return p1

    .line 963
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x4

    const/16 v5, 0x12

    const/4 v6, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 1162
    sget p3, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    sub-int/2addr p2, p3

    .line 1163
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    if-eqz p2, :cond_14

    .line 1165
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1166
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1165
    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v6

    .line 1089
    :sswitch_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1155
    :sswitch_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_3

    return v3

    .line 1158
    :cond_3
    invoke-direct {p0, v2, p1, p3}, Lio/flutter/view/AccessibilityBridge;->performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 1147
    :sswitch_2
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1099
    :sswitch_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_4

    return v3

    .line 1102
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    if-eqz p3, :cond_5

    .line 1105
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1107
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v6

    :cond_5
    const-string v4, "extent"

    const-string v5, "base"

    if-eqz v3, :cond_6

    .line 1111
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1109
    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1112
    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1117
    :cond_6
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    :goto_0
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1125
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1126
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1127
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    return v6

    .line 1137
    :sswitch_4
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1142
    :sswitch_5
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1132
    :sswitch_6
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1004
    :sswitch_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1005
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 1006
    :cond_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1008
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 1009
    :cond_8
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1010
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1013
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1014
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_1
    return v6

    :cond_9
    return v3

    .line 986
    :sswitch_8
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 987
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 988
    :cond_a
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 990
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 991
    :cond_b
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 992
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 993
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 995
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 996
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_2
    return v6

    :cond_c
    return v3

    .line 1027
    :sswitch_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_d

    return v3

    .line 1030
    :cond_d
    invoke-direct {p0, v2, p1, p3, v3}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 1039
    :sswitch_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_e

    return v3

    .line 1042
    :cond_e
    invoke-direct {p0, v2, p1, p3, v6}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 1049
    :sswitch_b
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p2, :cond_f

    .line 1050
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-ne p2, p1, :cond_f

    .line 1051
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1053
    :cond_f
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    .line 1054
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_10

    .line 1055
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1057
    :cond_10
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1059
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return v6

    .line 1065
    :sswitch_c
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez p2, :cond_11

    .line 1069
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 1073
    :cond_11
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1075
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    const p2, 0x8000

    .line 1077
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1079
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-nez p2, :cond_12

    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1080
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1082
    :cond_12
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    :cond_13
    return v6

    .line 981
    :sswitch_d
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 973
    :sswitch_e
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    :cond_14
    return v3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_e
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_b
        0x100 -> :sswitch_a
        0x200 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_6
        0x8000 -> :sswitch_5
        0x10000 -> :sswitch_4
        0x20000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 470
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->detachAccessibilityBridge()V

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 472
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 473
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 474
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 477
    :cond_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 478
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 2001
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2002
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 2004
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/high16 v1, 0x10000

    .line 2003
    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    :cond_0
    const/4 v0, 0x0

    .line 2007
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2008
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v0, 0x0

    .line 2009
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    return-void
.end method

.method public setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-void
.end method

.method updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 4

    .line 1512
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1514
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    .line 1515
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4402(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1516
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 1517
    :cond_0
    aget-object v1, p2, v1

    :goto_1
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3502(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1518
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 1519
    :cond_1
    aget-object v2, p2, v1

    :goto_2
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2902(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1537
    invoke-direct {p0, v1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v1

    .line 1538
    invoke-static {v1, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    .line 1539
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v1, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1542
    :cond_1
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v1, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1543
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1545
    :cond_2
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1546
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    :cond_3
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1549
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1550
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1551
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1553
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1558
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1559
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p2

    .line 1560
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 1563
    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1567
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_7

    .line 1573
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_5

    .line 1574
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->doesLayoutInDisplayCutoutModeRequireLeftInset()Z

    move-result v4

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    .line 1578
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1580
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1581
    invoke-static {p2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4702(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z

    .line 1582
    invoke-static {p2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z

    .line 1584
    :cond_6
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    .line 1585
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1589
    :cond_7
    invoke-static {p2, v3, p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FLjava/util/Set;Z)V

    .line 1590
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)V

    .line 1598
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1599
    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object v4, v5

    goto :goto_2

    :cond_a
    if-nez v4, :cond_b

    .line 1605
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 1606
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_b
    if-eqz v4, :cond_d

    .line 1617
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    iget v5, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    if-ne p2, v5, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq p2, v5, :cond_d

    .line 1618
    :cond_c
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 1619
    invoke-direct {p0, v4}, Lio/flutter/view/AccessibilityBridge;->onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1621
    :cond_d
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1622
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1623
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1626
    :cond_e
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1627
    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 1628
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1629
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1630
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1631
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1632
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1638
    :cond_10
    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    .line 1640
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1641
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 1643
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v0, 0x1000

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1647
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v0

    .line 1648
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v4

    .line 1649
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    const v6, 0x4788b800    # 70000.0f

    const v7, 0x47c35000    # 100000.0f

    if-eqz v5, :cond_13

    cmpl-float v4, v0, v6

    if-lez v4, :cond_12

    move v0, v6

    :cond_12
    move v4, v7

    .line 1655
    :cond_13
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_15

    add-float/2addr v4, v7

    const v5, -0x38774800    # -70000.0f

    cmpg-float v6, v0, v5

    if-gez v6, :cond_14

    move v0, v5

    :cond_14
    add-float/2addr v0, v7

    goto :goto_6

    .line 1662
    :cond_15
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 1663
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    sub-float/2addr v0, v5

    .line 1666
    :goto_6
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_7

    .line 1669
    :cond_16
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    float-to-int v0, v0

    .line 1670
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    float-to-int v0, v4

    .line 1671
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_8

    :cond_18
    :goto_7
    float-to-int v0, v0

    .line 1667
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    float-to-int v0, v4

    .line 1668
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1673
    :cond_19
    :goto_8
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 1675
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1676
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1679
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :cond_1a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1680
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v5, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    if-nez v5, :cond_1a

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1701
    :cond_1b
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1703
    :cond_1c
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1705
    :cond_1d
    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 1706
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    .line 1708
    :cond_1e
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_1f

    .line 1709
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_1f

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1710
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-nez p3, :cond_1f

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1711
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 1713
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/4 v0, 0x4

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1714
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1720
    :cond_1f
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_21

    .line 1721
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_21

    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_20

    .line 1723
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eq p3, v0, :cond_21

    .line 1724
    :cond_20
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1726
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v0, 0x8

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1725
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_a

    .line 1727
    :cond_21
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez p3, :cond_22

    .line 1731
    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1734
    :cond_22
    :goto_a
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_11

    .line 1735
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_11

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1736
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_11

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1737
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_23

    .line 1743
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_11

    .line 1744
    :cond_23
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_24

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    goto :goto_b

    :cond_24
    move-object p3, v0

    .line 1745
    :goto_b
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    .line 1746
    :cond_25
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-direct {p0, v4, p3, v0}, Lio/flutter/view/AccessibilityBridge;->createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    if-eqz p3, :cond_26

    .line 1748
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1751
    :cond_26
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-ne p3, v4, :cond_27

    .line 1752
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-eq p3, v4, :cond_11

    .line 1755
    :cond_27
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v4, 0x2000

    .line 1754
    invoke-direct {p0, p3, v4}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1756
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1757
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1758
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1759
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1760
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_5

    :cond_28
    return-void
.end method
