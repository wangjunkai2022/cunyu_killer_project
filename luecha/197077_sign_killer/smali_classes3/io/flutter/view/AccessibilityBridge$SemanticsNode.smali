.class Lio/flutter/view/AccessibilityBridge$SemanticsNode;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemanticsNode"
.end annotation


# instance fields
.field final accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

.field private actions:I

.field private bottom:F

.field private childrenInHitTestOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private childrenInTraversalOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private currentValueLength:I

.field private customAccessibilityActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private decreasedValue:Ljava/lang/String;

.field private decreasedValueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private globalGeometryDirty:Z

.field private globalRect:Landroid/graphics/Rect;

.field private globalTransform:[F

.field private hadPreviousConfig:Z

.field private hint:Ljava/lang/String;

.field private hintAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private increasedValue:Ljava/lang/String;

.field private increasedValueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private inverseTransform:[F

.field private inverseTransformDirty:Z

.field private label:Ljava/lang/String;

.field private labelAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private left:F

.field private maxValueLength:I

.field private onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

.field private onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

.field private parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private platformViewId:I

.field private previousActions:I

.field private previousFlags:I

.field private previousLabel:Ljava/lang/String;

.field private previousNodeId:I

.field private previousScrollExtentMax:F

.field private previousScrollExtentMin:F

.field private previousScrollPosition:F

.field private previousTextSelectionBase:I

.field private previousTextSelectionExtent:I

.field private previousValue:Ljava/lang/String;

.field private right:F

.field private scrollChildren:I

.field private scrollExtentMax:F

.field private scrollExtentMin:F

.field private scrollIndex:I

.field private scrollPosition:F

.field private textDirection:Lio/flutter/view/AccessibilityBridge$TextDirection;

.field private textSelectionBase:I

.field private textSelectionExtent:I

.field private tooltip:Ljava/lang/String;

.field private top:F

.field private transform:[F

.field private value:Ljava/lang/String;

.field private valueAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1

    .line 2283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2205
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    .line 2247
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    const/4 v0, 0x0

    .line 2252
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    .line 2270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    .line 2271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    const/4 v0, 0x1

    .line 2276
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2279
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    .line 2284
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    return p0
.end method

.method static synthetic access$002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0

    .line 2196
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    return p1
.end method

.method static synthetic access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I

    return p0
.end method

.method static synthetic access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z
    .locals 0

    .line 2196
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I

    return p0
.end method

.method static synthetic access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getGlobalRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->isFocusable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    return p0
.end method

.method static synthetic access$2002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0

    .line 2196
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    return p1
.end method

.method static synthetic access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return p0
.end method

.method static synthetic access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 0

    .line 2196
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return p1
.end method

.method static synthetic access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 1

    .line 2196
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return v0
.end method

.method static synthetic access$2120(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I
    .locals 1

    .line 2196
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    return v0
.end method

.method static synthetic access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I

    return p0
.end method

.method static synthetic access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2196
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I

    return p0
.end method

.method static synthetic access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object p0
.end method

.method static synthetic access$2602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0

    .line 2196
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object p1
.end method

.method static synthetic access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    return p0
.end method

.method static synthetic access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    return-object p0
.end method

.method static synthetic access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    return-object p0
.end method

.method static synthetic access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValueLabelHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2196
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValueAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValueAttributes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2196
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateWith(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$4600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    .line 2196
    iget-boolean p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    return p0
.end method

.method static synthetic access$4702(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z
    .locals 0

    .line 2196
    iput-boolean p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    return p1
.end method

.method static synthetic access$4802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z
    .locals 0

    .line 2196
    iput-boolean p1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    return p1
.end method

.method static synthetic access$4900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FLjava/util/Set;Z)V
    .locals 0

    .line 2196
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateRecursively([FLjava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$5000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)V
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->collectRoutes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    return p0
.end method

.method static synthetic access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    return p0
.end method

.method static synthetic access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    return p0
.end method

.method static synthetic access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I

    return p0
.end method

.method static synthetic access$5700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didChangeLabel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 0

    .line 2196
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionBase:I

    return p0
.end method

.method static synthetic access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I
    .locals 0

    .line 2196
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionExtent:I

    return p0
.end method

.method static synthetic access$6400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 2196
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getRouteName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private collectRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)V"
        }
    .end annotation

    .line 2603
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2606
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2607
    invoke-direct {v1, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->collectRoutes(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createSpannableString(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2743
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 2745
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;

    .line 2746
    sget-object v1, Lio/flutter/view/AccessibilityBridge$5;->$SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType:[I

    iget-object v2, p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;->type:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    invoke-virtual {v2}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2755
    :cond_1
    move-object v1, p2

    check-cast v1, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;

    .line 2756
    iget-object v1, v1, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;->locale:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 2757
    new-instance v2, Landroid/text/style/LocaleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 2758
    iget v1, p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;->start:I

    iget p2, p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;->end:I

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 2749
    :cond_2
    new-instance v1, Landroid/text/style/TtsSpan$Builder;

    const-string v2, "android.type.verbatim"

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 2750
    iget v2, p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;->start:I

    iget p2, p2, Lio/flutter/view/AccessibilityBridge$StringAttribute;->end:I

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private didChangeLabel()Z
    .locals 3

    .line 2338
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 2341
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private didScroll()Z
    .locals 2

    .line 2332
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    .line 2333
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ensureInverseTransform()V
    .locals 3

    .line 2542
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2545
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2546
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    if-nez v1, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 2547
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    .line 2549
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2550
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    return-void
.end method

.method private getAncestor(Lio/flutter/util/Predicate;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/util/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;"
        }
    .end annotation

    .line 2292
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :goto_0
    if-eqz v0, :cond_1

    .line 2294
    invoke-interface {p1, v0}, Lio/flutter/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2297
    :cond_0
    iget-object v0, v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGlobalRect()Landroid/graphics/Rect;
    .locals 1

    .line 2558
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getRouteName()Ljava/lang/String;
    .locals 3

    .line 2614
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    return-object v0

    .line 2619
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2620
    invoke-direct {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getRouteName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2621
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$StringAttribute;",
            ">;"
        }
    .end annotation

    .line 2501
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2505
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2507
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 2508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 2509
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->values()[Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aget-object v6, v6, v7

    .line 2510
    sget-object v7, Lio/flutter/view/AccessibilityBridge$5;->$SwitchMap$io$flutter$view$AccessibilityBridge$StringAttributeType:[I

    invoke-virtual {v6}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 2524
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 2525
    aget-object v7, p2, v7

    .line 2526
    new-instance v8, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;

    invoke-direct {v8, v1}, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;-><init>(Lio/flutter/view/AccessibilityBridge$1;)V

    .line 2527
    iput v4, v8, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;->start:I

    .line 2528
    iput v5, v8, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;->end:I

    .line 2529
    iput-object v6, v8, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;->type:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    const-string v4, "UTF-8"

    .line 2530
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;->locale:Ljava/lang/String;

    .line 2531
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2514
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2515
    new-instance v7, Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;

    invoke-direct {v7, v1}, Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;-><init>(Lio/flutter/view/AccessibilityBridge$1;)V

    .line 2516
    iput v4, v7, Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;->start:I

    .line 2517
    iput v5, v7, Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;->end:I

    .line 2518
    iput-object v6, v7, Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;->type:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    .line 2519
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getValueLabelHint()Ljava/lang/CharSequence;
    .locals 10

    .line 2714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-ge v0, v5, :cond_0

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 2715
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    aput-object v5, v0, v3

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    aput-object v5, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 2717
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    .line 2719
    invoke-direct {p0, v5, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->createSpannableString(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->labelAttributes:Ljava/util/List;

    .line 2720
    invoke-direct {p0, v5, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->createSpannableString(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hintAttributes:Ljava/util/List;

    .line 2721
    invoke-direct {p0, v5, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->createSpannableString(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v5

    aput-object v5, v0, v1

    :goto_0
    const/4 v5, 0x0

    .line 2725
    array-length v6, v0

    move-object v7, v5

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v8, v0, v5

    if-eqz v8, :cond_3

    .line 2726
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    if-eqz v7, :cond_2

    .line 2727
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    new-array v9, v2, [Ljava/lang/CharSequence;

    aput-object v7, v9, v4

    const-string v7, ", "

    aput-object v7, v9, v3

    aput-object v8, v9, v1

    .line 2730
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    :goto_2
    move-object v7, v8

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v7
.end method

.method private hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1

    .line 2317
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousActions:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 1

    .line 2328
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousFlags:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1

    .line 2309
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    .locals 1

    .line 2321
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hitTest([F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 10

    const/4 v0, 0x3

    .line 2562
    aget v0, p1, v0

    const/4 v1, 0x0

    .line 2563
    aget v1, p1, v1

    div-float/2addr v1, v0

    const/4 v2, 0x1

    .line 2564
    aget v2, p1, v2

    div-float/2addr v2, v0

    .line 2565
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    cmpg-float v0, v1, v0

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2567
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2568
    sget-object v4, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {v2, v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 2571
    :cond_2
    invoke-direct {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->ensureInverseTransform()V

    const/4 v5, 0x0

    .line 2572
    iget-object v6, v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransform:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2573
    invoke-direct {v2, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 2578
    :cond_3
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v3, p0

    :cond_4
    :goto_1
    return-object v3
.end method

.method private isFocusable()Z
    .locals 4

    .line 2586
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2589
    :cond_0
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2595
    :cond_1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    invoke-static {}, Lio/flutter/view/AccessibilityBridge;->access$7000()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:I

    .line 2596
    invoke-static {}, Lio/flutter/view/AccessibilityBridge;->access$7100()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2597
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2598
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2599
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private max(FFFF)F
    .locals 0

    .line 2709
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private min(FFFF)F
    .locals 0

    .line 2705
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private static nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            "Lio/flutter/util/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2199
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getAncestor(Lio/flutter/util/Predicate;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private transformPoint([F[F[F)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    .line 2696
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 p2, 0x3

    .line 2697
    aget p3, p1, p2

    const/4 v0, 0x0

    .line 2698
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 2699
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 2700
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 p3, 0x0

    .line 2701
    aput p3, p1, p2

    return-void
.end method

.method private updateRecursively([FLjava/util/Set;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Set<",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;Z)V"
        }
    .end annotation

    .line 2630
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2632
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    if-eqz p3, :cond_3

    .line 2637
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    if-nez v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2638
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    .line 2640
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array p1, p1, [F

    .line 2651
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    const/4 v6, 0x0

    aput v5, v0, v6

    .line 2652
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    aput v5, v0, v1

    .line 2653
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {p0, v2, v5, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 2655
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    aput v5, v0, v6

    .line 2656
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    aput v5, v0, v1

    .line 2657
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {p0, v3, v5, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 2659
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    aput v5, v0, v6

    .line 2660
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    aput v5, v0, v1

    .line 2661
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {p0, v4, v5, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 2663
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    aput v5, v0, v6

    .line 2664
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    aput v5, v0, v1

    .line 2665
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {p0, p1, v5, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transformPoint([F[F[F)V

    .line 2667
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    .line 2669
    :cond_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalRect:Landroid/graphics/Rect;

    aget v5, v2, v6

    aget v7, v3, v6

    aget v8, v4, v6

    aget v9, p1, v6

    .line 2670
    invoke-direct {p0, v5, v7, v8, v9}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->min(FFFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aget v7, v2, v1

    aget v8, v3, v1

    aget v9, v4, v1

    aget v10, p1, v1

    .line 2671
    invoke-direct {p0, v7, v8, v9, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->min(FFFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aget v8, v2, v6

    aget v9, v3, v6

    aget v10, v4, v6

    aget v11, p1, v6

    .line 2672
    invoke-direct {p0, v8, v9, v10, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->max(FFFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aget v2, v2, v1

    aget v3, v3, v1

    aget v4, v4, v1

    aget p1, p1, v1

    .line 2673
    invoke-direct {p0, v2, v3, v4, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->max(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2669
    invoke-virtual {v0, v5, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2675
    iput-boolean v6, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    :cond_3
    const/4 p1, -0x1

    .line 2688
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2689
    iput p1, v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I

    .line 2690
    iget p1, v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I

    .line 2691
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalTransform:[F

    invoke-direct {v1, v2, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateRecursively([FLjava/util/Set;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateWith(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x1

    .line 2389
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z

    .line 2390
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;

    .line 2391
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousLabel:Ljava/lang/String;

    .line 2392
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousFlags:I

    .line 2393
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousActions:I

    .line 2394
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionBase:I

    .line 2395
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionExtent:I

    .line 2396
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollPosition:F

    .line 2397
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollExtentMax:F

    .line 2398
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousScrollExtentMin:F

    .line 2400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->flags:I

    .line 2401
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->actions:I

    .line 2402
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I

    .line 2403
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I

    .line 2404
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I

    .line 2405
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I

    .line 2406
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I

    .line 2407
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I

    .line 2408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I

    .line 2409
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F

    .line 2410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F

    .line 2411
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F

    .line 2413
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 2414
    :cond_0
    aget-object v1, p2, v1

    :goto_0
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;

    .line 2416
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->labelAttributes:Ljava/util/List;

    .line 2418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_1

    .line 2419
    :cond_1
    aget-object v1, p2, v1

    :goto_1
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;

    .line 2421
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;

    .line 2423
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move-object v1, v3

    goto :goto_2

    .line 2424
    :cond_2
    aget-object v1, p2, v1

    :goto_2
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValue:Ljava/lang/String;

    .line 2426
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValueAttributes:Ljava/util/List;

    .line 2428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move-object v1, v3

    goto :goto_3

    .line 2429
    :cond_3
    aget-object v1, p2, v1

    :goto_3
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValue:Ljava/lang/String;

    .line 2431
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValueAttributes:Ljava/util/List;

    .line 2433
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move-object v1, v3

    goto :goto_4

    .line 2434
    :cond_4
    aget-object v1, p2, v1

    :goto_4
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hint:Ljava/lang/String;

    .line 2436
    invoke-direct {p0, p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getStringAttributesFromBuffer(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hintAttributes:Ljava/util/List;

    .line 2438
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-ne p3, v2, :cond_5

    move-object p2, v3

    goto :goto_5

    .line 2439
    :cond_5
    aget-object p2, p2, p3

    :goto_5
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;

    .line 2441
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$TextDirection;->fromInt(I)Lio/flutter/view/AccessibilityBridge$TextDirection;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textDirection:Lio/flutter/view/AccessibilityBridge$TextDirection;

    .line 2443
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->left:F

    .line 2444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->top:F

    .line 2445
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->right:F

    .line 2446
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->bottom:F

    .line 2448
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    const/16 p3, 0x10

    if-nez p2, :cond_6

    new-array p2, p3, [F

    .line 2449
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    :cond_6
    const/4 p2, 0x0

    move v1, p2

    :goto_6
    if-ge v1, p3, :cond_7

    .line 2452
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->transform:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2454
    :cond_7
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z

    .line 2455
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z

    .line 2457
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    .line 2458
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2459
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, p2

    :goto_7
    if-ge v0, p3, :cond_8

    .line 2461
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge;->access$6600(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v1

    .line 2462
    iput-object p0, v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2463
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    move v0, p2

    :goto_8
    if-ge v0, p3, :cond_9

    .line 2466
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge;->access$6600(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v1

    .line 2467
    iput-object p0, v1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2468
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2471
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-nez p3, :cond_a

    .line 2473
    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    goto :goto_b

    .line 2475
    :cond_a
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    goto :goto_9

    .line 2477
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_9
    if-ge p2, p3, :cond_e

    .line 2480
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 2481
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->access$6700(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    .line 2482
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4400(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v1

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v1, v2, :cond_c

    .line 2483
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    goto :goto_a

    .line 2484
    :cond_c
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4400(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v1

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v1, v2, :cond_d

    .line 2485
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    goto :goto_a

    .line 2492
    :cond_d
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    :goto_a
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_e
    :goto_b
    return-void
.end method
