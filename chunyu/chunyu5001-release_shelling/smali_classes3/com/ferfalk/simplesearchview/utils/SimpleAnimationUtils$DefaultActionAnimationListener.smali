.class Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SimpleAnimationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultActionAnimationListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;",
        "Landroid/animation/AnimatorListenerAdapter;",
        "view",
        "Landroid/view/View;",
        "listener",
        "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;",
        "(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V",
        "defaultOnAnimationCancel",
        "",
        "defaultOnAnimationEnd",
        "defaultOnAnimationStart",
        "onAnimationCancel",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationStart",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    return-void
.end method


# virtual methods
.method public final defaultOnAnimationCancel(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public defaultOnAnimationEnd(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public defaultOnAnimationStart(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;->onAnimationCancel(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->defaultOnAnimationCancel(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;->onAnimationEnd(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->defaultOnAnimationEnd(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;->onAnimationStart(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;->defaultOnAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method
