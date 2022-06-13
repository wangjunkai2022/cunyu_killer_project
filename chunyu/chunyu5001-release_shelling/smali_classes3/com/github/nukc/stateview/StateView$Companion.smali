.class public final Lcom/github/nukc/stateview/StateView$Companion;
.super Ljava/lang/Object;
.source "StateView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/nukc/stateview/StateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/nukc/stateview/StateView$Companion;",
        "",
        "()V",
        "EMPTY",
        "",
        "LOADING",
        "RETRY",
        "TAG",
        "",
        "getTAG$kotlin_release",
        "()Ljava/lang/String;",
        "inject",
        "Lcom/github/nukc/stateview/StateView;",
        "activity",
        "Landroid/app/Activity;",
        "view",
        "Landroid/view/View;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "wrap",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/github/nukc/stateview/StateView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG$kotlin_release()Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {}, Lcom/github/nukc/stateview/StateView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final inject(Landroid/app/Activity;)Lcom/github/nukc/stateview/StateView;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    move-object v0, p0

    check-cast v0, Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "activity.window"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "activity.window.decorVie\u2026ew>(android.R.id.content)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/github/nukc/stateview/StateView$Companion;->inject(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    return-object p1
.end method

.method public final inject(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/nukc/stateview/StateView$Companion;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lcom/github/nukc/stateview/StateView$Companion;->inject(Landroid/view/ViewGroup;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    goto :goto_0

    .line 347
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/github/nukc/stateview/StateView$Companion;

    invoke-virtual {v0, p1}, Lcom/github/nukc/stateview/StateView$Companion;->wrap(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final inject(Landroid/view/ViewGroup;)Lcom/github/nukc/stateview/StateView;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_2

    .line 354
    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild;

    if-nez v0, :cond_2

    .line 355
    :cond_0
    instance-of v0, p1, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    new-instance v0, Lcom/github/nukc/stateview/StateView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "viewGroup.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/nukc/stateview/StateView;-><init>(Landroid/content/Context;)V

    .line 365
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0

    .line 356
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 357
    move-object v0, p0

    check-cast v0, Lcom/github/nukc/stateview/StateView$Companion;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/github/nukc/stateview/StateView$Companion;->wrap(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    goto :goto_1

    .line 359
    :cond_3
    sget-object v0, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    invoke-virtual {v0, p1}, Lcom/github/nukc/stateview/Injector;->wrapChild(Landroid/view/ViewGroup;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final wrap(Landroid/view/View;)Lcom/github/nukc/stateview/StateView;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 372
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 373
    sget-object v1, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    invoke-virtual {v1}, Lcom/github/nukc/stateview/Injector;->getConstraintLayoutAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 374
    sget-object v1, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0, p1}, Lcom/github/nukc/stateview/Injector;->matchViewIfParentIsConstraintLayout(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 377
    sget-object v1, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, p1}, Lcom/github/nukc/stateview/Injector;->matchViewIfParentIsRelativeLayout(Landroid/widget/RelativeLayout;Landroid/view/View;)Lcom/github/nukc/stateview/StateView;

    move-result-object p1

    return-object p1

    .line 381
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 383
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    .line 384
    invoke-virtual {v1, p1, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 385
    new-instance v2, Lcom/github/nukc/stateview/StateView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/github/nukc/stateview/StateView;-><init>(Landroid/content/Context;)V

    .line 386
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 387
    sget-object v0, Lcom/github/nukc/stateview/Injector;->INSTANCE:Lcom/github/nukc/stateview/Injector;

    invoke-virtual {v0, v2, p1}, Lcom/github/nukc/stateview/Injector;->setStateListAnimator(Lcom/github/nukc/stateview/StateView;Landroid/view/View;)V

    return-object v2

    .line 390
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "view.getParent() must be ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
