.class public final Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;
.super Ljava/lang/Object;
.source "SimpleAnimationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;,
        Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002#$B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J&\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0015\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001\u00a2\u0006\u0002\u0008\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001\u00a2\u0006\u0002\u0008\u001bJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\"\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J,\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J2\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\"\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J,\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J2\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J,\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J4\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006%"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;",
        "",
        "()V",
        "ANIMATION_DURATION_DEFAULT",
        "",
        "defaultInterpolator",
        "Landroid/view/animation/Interpolator;",
        "getDefaultInterpolator$simplesearchview_release$annotations",
        "getDefaultInterpolator$simplesearchview_release",
        "()Landroid/view/animation/Interpolator;",
        "distance",
        "",
        "first",
        "Landroid/graphics/Point;",
        "second",
        "fadeIn",
        "Landroid/animation/Animator;",
        "view",
        "Landroid/view/View;",
        "listener",
        "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;",
        "duration",
        "fadeOut",
        "getDefaultCenter",
        "getDefaultCenter$simplesearchview_release",
        "getRevealRadius",
        "center",
        "getRevealRadius$simplesearchview_release",
        "hide",
        "hideOrFadeOut",
        "reveal",
        "revealOrFadeIn",
        "verticalSlideView",
        "fromHeight",
        "toHeight",
        "AnimationListener",
        "DefaultActionAnimationListener",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION_DEFAULT:I = 0xfa

.field public static final INSTANCE:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;

    invoke-direct {v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;-><init>()V

    sput-object v0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->INSTANCE:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final distance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v4, p0

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-double p0, p0

    sub-double/2addr v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final fadeIn(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeIn(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    .line 254
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$fadeIn$1;

    invoke-direct {v1, p0, p2, p0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$fadeIn$1;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "anim"

    .line 261
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    invoke-static {}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public static final fadeIn(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 244
    invoke-static {p0, v0, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/16 p1, 0xfa

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 249
    check-cast p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeOut(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeOut(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    .line 274
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$fadeOut$1;

    invoke-direct {v1, p0, p2, p0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$fadeOut$1;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "anim"

    .line 281
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    invoke-static {}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public static final fadeOut(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 268
    invoke-static {p0, v0, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/16 p1, 0xfa

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 273
    check-cast p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultCenter$simplesearchview_release(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static final getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;
    .locals 1

    .line 309
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static synthetic getDefaultInterpolator$simplesearchview_release$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getRevealRadius$simplesearchview_release(Landroid/graphics/Point;Landroid/view/View;)I
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "center"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 223
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 229
    invoke-static {p0, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    float-to-double p0, v0

    .line 234
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static final hide(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 174
    invoke-static {p0, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, v0, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;ILandroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    invoke-static {p0, p1, v0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1, p2, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 200
    invoke-static {p0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultCenter$simplesearchview_release(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p3

    .line 203
    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-static {p3, p0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getRevealRadius$simplesearchview_release(Landroid/graphics/Point;Landroid/view/View;)I

    move-result p3

    int-to-float p3, p3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p3

    .line 204
    new-instance v0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$hide$1;

    invoke-direct {v0, p0, p2, p0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$hide$1;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "anim"

    .line 209
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-virtual {p3, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 210
    invoke-static {}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method public static final hide(Landroid/view/View;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 186
    invoke-static {p0, v0, v1, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 180
    invoke-static {p0, v0, p1, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hide(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 192
    invoke-static {p0, v0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;ILandroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hide(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, p1, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final hideOrFadeOut(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 85
    invoke-static {p0, v0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hideOrFadeOut$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p1, 0xfa

    :cond_0
    and-int/lit8 p5, p4, 0x4

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 60
    move-object p2, v0

    check-cast p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    move-object p3, v0

    check-cast p3, Landroid/graphics/Point;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 111
    invoke-static {p0, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;ILandroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, p1, v0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, p2, v0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 137
    invoke-static {p0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultCenter$simplesearchview_release(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p3

    .line 140
    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {p3, p0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getRevealRadius$simplesearchview_release(Landroid/graphics/Point;Landroid/view/View;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p0, v0, v1, v2, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p3

    .line 141
    new-instance v0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1;

    invoke-direct {v0, p0, p2, p0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "anim"

    .line 146
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-virtual {p3, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 147
    invoke-static {}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method public static final reveal(Landroid/view/View;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 123
    invoke-static {p0, v0, v1, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, v0, p1, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final reveal(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 129
    invoke-static {p0, v0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;ILandroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->fadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1, p1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, p1, v1}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final revealOrFadeIn(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 53
    invoke-static {p0, v0, p1, p2}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic revealOrFadeIn$default(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p1, 0xfa

    :cond_0
    and-int/lit8 p5, p4, 0x4

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 28
    move-object p2, v0

    check-cast p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    move-object p3, v0

    check-cast p3, Landroid/graphics/Point;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final verticalSlideView(Landroid/view/View;II)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView$default(Landroid/view/View;IILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final verticalSlideView(Landroid/view/View;III)Landroid/animation/Animator;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView$default(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final verticalSlideView(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 296
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 297
    new-instance p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$verticalSlideView$1;

    invoke-direct {p2, p0}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$verticalSlideView$1;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    new-instance p2, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;

    invoke-direct {p2, p0, p4}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "anim"

    .line 302
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    invoke-static {}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->getDefaultInterpolator$simplesearchview_release()Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 304
    check-cast p1, Landroid/animation/Animator;

    return-object p1
.end method

.method public static final verticalSlideView(Landroid/view/View;IILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    .line 289
    invoke-static {p0, p1, p2, v0, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic verticalSlideView$default(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 294
    check-cast p4, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic verticalSlideView$default(Landroid/view/View;IILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 288
    check-cast p3, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView(Landroid/view/View;IILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
