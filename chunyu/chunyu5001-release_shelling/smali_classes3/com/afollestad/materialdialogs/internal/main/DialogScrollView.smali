.class public final Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;
.super Landroid/widget/ScrollView;
.source "DialogScrollView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0014J(\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H\u0014R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;",
        "Landroid/widget/ScrollView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "isScrollable",
        "",
        "()Z",
        "rootView",
        "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "getRootView",
        "()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "setRootView",
        "(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;)V",
        "invalidateDividers",
        "",
        "invalidateOverScroll",
        "onAttachedToWindow",
        "onScrollChanged",
        "left",
        "",
        "top",
        "oldl",
        "oldt",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private rootView:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 35
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$invalidateOverScroll(Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->invalidateOverScroll()V

    return-void
.end method

.method private final invalidateOverScroll()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private final isScrollable()Z
    .locals 3

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final getRootView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->rootView:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    return-object v0
.end method

.method public final invalidateDividers()V
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "view"

    .line 67
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 68
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->rootView:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->getScrollY()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    .line 68
    :cond_2
    invoke-virtual {v3, v4, v1}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->invalidateDividers(ZZ)V

    :cond_3
    return-void

    .line 63
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->rootView:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1, v1}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->invalidateDividers(ZZ)V

    :cond_5
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 45
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget-object v1, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$onAttachedToWindow$1;->INSTANCE:Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$onAttachedToWindow$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0, v1}, Lcom/afollestad/materialdialogs/utils/MDUtil;->waitForWidth(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 58
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->invalidateDividers()V

    return-void
.end method

.method public final setRootView(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->rootView:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    return-void
.end method
