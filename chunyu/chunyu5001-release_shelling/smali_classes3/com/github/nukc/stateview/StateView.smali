.class public final Lcom/github/nukc/stateview/StateView;
.super Landroid/view/View;
.source "StateView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/nukc/stateview/StateView$ViewType;,
        Lcom/github/nukc/stateview/StateView$OnRetryClickListener;,
        Lcom/github/nukc/stateview/StateView$OnInflateListener;,
        Lcom/github/nukc/stateview/StateView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateView.kt\ncom/github/nukc/stateview/StateView\n*L\n1#1,395:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 W2\u00020\u0001:\u0004WXYZB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010<\u001a\u00020\u00012\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0001H\u0002J\u0012\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0014J\u0012\u0010E\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0017J\u0010\u0010F\u001a\u00020B2\u0006\u0010G\u001a\u00020\u0001H\u0002J\u001a\u0010H\u001a\u00020\u00012\u0008\u0008\u0001\u0010I\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0002J\u0018\u0010J\u001a\u00020B2\u0006\u0010K\u001a\u00020\t2\u0006\u0010L\u001a\u00020\tH\u0014J\u0012\u0010M\u001a\u00020B2\u0008\u0010@\u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010N\u001a\u00020B2\u0006\u0010=\u001a\u00020\t2\u0008\u0010@\u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010O\u001a\u00020B2\u0008\u0010@\u001a\u0004\u0018\u00010\u00012\u0006\u0010P\u001a\u00020\tH\u0002J\u0010\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020\tH\u0016J\u0008\u0010Q\u001a\u00020BH\u0002J\u0006\u0010R\u001a\u00020BJ\u0006\u0010S\u001a\u00020\u0001J\u0006\u0010T\u001a\u00020\u0001J\u0006\u0010U\u001a\u00020\u0001J\u0010\u0010G\u001a\u00020\u00012\u0006\u0010=\u001a\u00020\tH\u0002J\u0010\u0010V\u001a\u00020B2\u0006\u0010@\u001a\u00020\u0001H\u0002R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u0019\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0016\"\u0004\u0008&\u0010\u0018R(\u0010\'\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0016\"\u0004\u00088\u0010\u0018R(\u00109\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001b\"\u0004\u0008;\u0010\u001d\u00a8\u0006["
    }
    d2 = {
        "Lcom/github/nukc/stateview/StateView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "addSet",
        "Landroidx/collection/ArraySet;",
        "value",
        "Lcom/github/nukc/stateview/AnimatorProvider;",
        "animatorProvider",
        "getAnimatorProvider",
        "()Lcom/github/nukc/stateview/AnimatorProvider;",
        "setAnimatorProvider",
        "(Lcom/github/nukc/stateview/AnimatorProvider;)V",
        "emptyResource",
        "getEmptyResource",
        "()I",
        "setEmptyResource",
        "(I)V",
        "emptyView",
        "getEmptyView",
        "()Landroid/view/View;",
        "setEmptyView",
        "(Landroid/view/View;)V",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getInflater",
        "()Landroid/view/LayoutInflater;",
        "setInflater",
        "(Landroid/view/LayoutInflater;)V",
        "loadingResource",
        "getLoadingResource",
        "setLoadingResource",
        "loadingView",
        "getLoadingView",
        "setLoadingView",
        "onInflateListener",
        "Lcom/github/nukc/stateview/StateView$OnInflateListener;",
        "getOnInflateListener",
        "()Lcom/github/nukc/stateview/StateView$OnInflateListener;",
        "setOnInflateListener",
        "(Lcom/github/nukc/stateview/StateView$OnInflateListener;)V",
        "onRetryClickListener",
        "Lcom/github/nukc/stateview/StateView$OnRetryClickListener;",
        "getOnRetryClickListener",
        "()Lcom/github/nukc/stateview/StateView$OnRetryClickListener;",
        "setOnRetryClickListener",
        "(Lcom/github/nukc/stateview/StateView$OnRetryClickListener;)V",
        "retryResource",
        "getRetryResource",
        "setRetryResource",
        "retryView",
        "getRetryView",
        "setRetryView",
        "addToParent",
        "viewType",
        "viewParent",
        "Landroid/view/ViewGroup;",
        "view",
        "dispatchDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "draw",
        "hideViews",
        "showView",
        "inflate",
        "layoutResource",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "reset",
        "setView",
        "setVisibility",
        "visibility",
        "setupRetryClickListener",
        "showContent",
        "showEmpty",
        "showLoading",
        "showRetry",
        "startAnimation",
        "Companion",
        "OnInflateListener",
        "OnRetryClickListener",
        "ViewType",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/nukc/stateview/StateView$Companion;

.field public static final EMPTY:I = 0x0

.field public static final LOADING:I = 0x2

.field public static final RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final addSet:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private animatorProvider:Lcom/github/nukc/stateview/AnimatorProvider;

.field private emptyResource:I

.field private emptyView:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private loadingResource:I

.field private loadingView:Landroid/view/View;

.field private onInflateListener:Lcom/github/nukc/stateview/StateView$OnInflateListener;

.field private onRetryClickListener:Lcom/github/nukc/stateview/StateView$OnRetryClickListener;

.field private retryResource:I

.field private retryView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/nukc/stateview/StateView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/nukc/stateview/StateView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/nukc/stateview/StateView;->Companion:Lcom/github/nukc/stateview/StateView$Companion;

    .line 336
    const-class v0, Lcom/github/nukc/stateview/StateView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateView::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/nukc/stateview/StateView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/github/nukc/stateview/StateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/github/nukc/stateview/StateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p3, Landroidx/collection/ArraySet;

    invoke-direct {p3}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/github/nukc/stateview/StateView;->addSet:Landroidx/collection/ArraySet;

    .line 73
    sget-object p3, Lcom/github/nukc/stateview/R$styleable;->StateView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/github/nukc/stateview/R$styleable;->StateView_emptyResource:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    .line 75
    sget p2, Lcom/github/nukc/stateview/R$styleable;->StateView_retryResource:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    .line 76
    sget p2, Lcom/github/nukc/stateview/R$styleable;->StateView_loadingResource:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    iget p1, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    if-nez p1, :cond_0

    .line 80
    sget p1, Lcom/github/nukc/stateview/R$layout;->base_empty:I

    iput p1, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    .line 82
    :cond_0
    iget p1, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    if-nez p1, :cond_1

    .line 83
    sget p1, Lcom/github/nukc/stateview/R$layout;->base_retry:I

    iput p1, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    .line 85
    :cond_1
    iget p1, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    if-nez p1, :cond_2

    .line 86
    sget p1, Lcom/github/nukc/stateview/R$layout;->base_loading:I

    iput p1, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    :cond_2
    const/16 p1, 0x8

    .line 89
    invoke-virtual {p0, p1}, Lcom/github/nukc/stateview/StateView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/github/nukc/stateview/StateView;->setWillNotDraw(Z)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/nukc/stateview/StateView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addToParent(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->addSet:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 263
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    .line 265
    invoke-virtual {p3, v2}, Landroid/view/View;->setClickable(Z)V

    const/16 v2, 0x8

    .line 267
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v2

    invoke-static {p3, v2}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    .line 269
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 270
    instance-of v2, p2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 271
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 272
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :goto_0
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 277
    :cond_2
    sget-object v2, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    invoke-virtual {v2}, Lcom/github/nukc/stateview/Injector;->getConstraintLayoutAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 279
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 281
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 282
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 283
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 284
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p3, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 279
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_5
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 289
    :cond_6
    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 291
    :goto_1
    iget-object v1, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 292
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 294
    :cond_7
    iget-object p2, p0, Lcom/github/nukc/stateview/StateView;->onInflateListener:Lcom/github/nukc/stateview/StateView$OnInflateListener;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1, p3}, Lcom/github/nukc/stateview/StateView$OnInflateListener;->onInflate(ILandroid/view/View;)V

    :cond_8
    return-object p3
.end method

.method private final hideViews(Landroid/view/View;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    if-ne v0, p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 169
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 173
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 177
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private final inflate(II)Landroid/view/View;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 247
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/github/nukc/stateview/StateView;->inflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "LayoutInflater.from(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "view"

    .line 251
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/github/nukc/stateview/StateView;->addToParent(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StateView must have a valid layoutResource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StateView must have a non-null ViewGroup viewParent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final inject(Landroid/app/Activity;)Lcom/github/nukc/stateview/StateView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/nukc/stateview/StateView;->Companion:Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {v0, p0}, Lcom/github/nukc/stateview/StateView$Companion;->inject(Landroid/app/Activity;)Lcom/github/nukc/stateview/StateView;

    move-result-object p0

    return-object p0
.end method

.method public static final inject(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/nukc/stateview/StateView;->Companion:Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {v0, p0}, Lcom/github/nukc/stateview/StateView$Companion;->inject(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p0

    return-object p0
.end method

.method public static final inject(Landroid/view/ViewGroup;)Lcom/github/nukc/stateview/StateView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/nukc/stateview/StateView;->Companion:Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {v0, p0}, Lcom/github/nukc/stateview/StateView$Companion;->inject(Landroid/view/ViewGroup;)Lcom/github/nukc/stateview/StateView;

    move-result-object p0

    return-object p0
.end method

.method private final reset(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private final setView(ILandroid/view/View;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 227
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 229
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 235
    iget-object p2, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    goto :goto_0

    .line 236
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 234
    :cond_2
    iget-object p2, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    goto :goto_0

    .line 233
    :cond_3
    iget-object p2, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    :goto_0
    if-eqz p2, :cond_4

    .line 238
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 241
    :cond_4
    iget-object p2, p0, Lcom/github/nukc/stateview/StateView;->addSet:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private final setVisibility(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->animatorProvider:Lcom/github/nukc/stateview/AnimatorProvider;

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/github/nukc/stateview/StateView;->startAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setupRetryClickListener()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;

    invoke-direct {v1, p0}, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;-><init>(Lcom/github/nukc/stateview/StateView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final showView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v2, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    :goto_0
    if-nez v2, :cond_9

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    .line 144
    :cond_3
    iget v2, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    goto :goto_1

    .line 143
    :cond_4
    iget v2, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    goto :goto_1

    .line 142
    :cond_5
    iget v2, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    .line 147
    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/github/nukc/stateview/StateView;->inflate(II)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {p0, v2}, Lcom/github/nukc/stateview/StateView;->setLoadingView(Landroid/view/View;)V

    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {p0, v2}, Lcom/github/nukc/stateview/StateView;->setRetryView(Landroid/view/View;)V

    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {p0, v2}, Lcom/github/nukc/stateview/StateView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    .line 153
    :cond_9
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->addSet:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {p0}, Lcom/github/nukc/stateview/StateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, v2}, Lcom/github/nukc/stateview/StateView;->addToParent(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    const/4 p1, 0x0

    .line 157
    invoke-direct {p0, v2, p1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 158
    invoke-direct {p0, v2}, Lcom/github/nukc/stateview/StateView;->hideViews(Landroid/view/View;)V

    return-object v2
.end method

.method private final startAnimation(Landroid/view/View;)V
    .locals 4

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/github/nukc/stateview/StateView;->animatorProvider:Lcom/github/nukc/stateview/AnimatorProvider;

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v3, p1}, Lcom/github/nukc/stateview/AnimatorProvider;->showAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v3, p1}, Lcom/github/nukc/stateview/AnimatorProvider;->hideAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    .line 186
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 189
    :cond_5
    new-instance v1, Lcom/github/nukc/stateview/StateView$startAnimation$1;

    invoke-direct {v1, v0, p1}, Lcom/github/nukc/stateview/StateView$startAnimation$1;-><init>(ZLandroid/view/View;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static final wrap(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/nukc/stateview/StateView;->Companion:Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {v0, p0}, Lcom/github/nukc/stateview/StateView$Companion;->wrap(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/nukc/stateview/StateView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/github/nukc/stateview/StateView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getAnimatorProvider()Lcom/github/nukc/stateview/AnimatorProvider;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->animatorProvider:Lcom/github/nukc/stateview/AnimatorProvider;

    return-object v0
.end method

.method public final getEmptyResource()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    return v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getLoadingResource()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    return v0
.end method

.method public final getLoadingView()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method public final getOnInflateListener()Lcom/github/nukc/stateview/StateView$OnInflateListener;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->onInflateListener:Lcom/github/nukc/stateview/StateView$OnInflateListener;

    return-object v0
.end method

.method public final getOnRetryClickListener()Lcom/github/nukc/stateview/StateView$OnRetryClickListener;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->onRetryClickListener:Lcom/github/nukc/stateview/StateView$OnRetryClickListener;

    return-object v0
.end method

.method public final getRetryResource()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    return v0
.end method

.method public final getRetryView()Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1, p1}, Lcom/github/nukc/stateview/StateView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAnimatorProvider(Lcom/github/nukc/stateview/AnimatorProvider;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->animatorProvider:Lcom/github/nukc/stateview/AnimatorProvider;

    .line 63
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/github/nukc/stateview/StateView;->reset(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/github/nukc/stateview/StateView;->reset(Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/github/nukc/stateview/StateView;->reset(Landroid/view/View;)V

    return-void
.end method

.method public final setEmptyResource(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/github/nukc/stateview/StateView;->emptyResource:I

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setView(ILandroid/view/View;)V

    .line 40
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    return-void
.end method

.method public final setInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public final setLoadingResource(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/github/nukc/stateview/StateView;->loadingResource:I

    return-void
.end method

.method public final setLoadingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setView(ILandroid/view/View;)V

    .line 51
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    return-void
.end method

.method public final setOnInflateListener(Lcom/github/nukc/stateview/StateView$OnInflateListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->onInflateListener:Lcom/github/nukc/stateview/StateView$OnInflateListener;

    return-void
.end method

.method public final setOnRetryClickListener(Lcom/github/nukc/stateview/StateView$OnRetryClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->onRetryClickListener:Lcom/github/nukc/stateview/StateView$OnRetryClickListener;

    return-void
.end method

.method public final setRetryResource(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/github/nukc/stateview/StateView;->retryResource:I

    return-void
.end method

.method public final setRetryView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setView(ILandroid/view/View;)V

    .line 45
    iput-object p1, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/github/nukc/stateview/StateView;->setupRetryClickListener()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->emptyView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 105
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->retryView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/github/nukc/stateview/StateView;->loadingView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/github/nukc/stateview/StateView;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public final showContent()V
    .locals 1

    const/16 v0, 0x8

    .line 120
    invoke-virtual {p0, v0}, Lcom/github/nukc/stateview/StateView;->setVisibility(I)V

    return-void
.end method

.method public final showEmpty()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lcom/github/nukc/stateview/StateView;->showView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final showLoading()Landroid/view/View;
    .locals 1

    const/4 v0, 0x2

    .line 127
    invoke-direct {p0, v0}, Lcom/github/nukc/stateview/StateView;->showView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final showRetry()Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, v0}, Lcom/github/nukc/stateview/StateView;->showView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
