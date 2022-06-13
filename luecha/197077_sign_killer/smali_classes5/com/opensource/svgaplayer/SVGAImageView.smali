.class public Lcom/opensource/svgaplayer/SVGAImageView;
.super Landroid/widget/ImageView;
.source "SVGAImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAImageView$FillMode;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAImageView.kt\ncom/opensource/svgaplayer/SVGAImageView\n*L\n1#1,329:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001:\u0003_`aB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u00105\u001a\u000206J\u0016\u00107\u001a\u0002082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00000:H\u0002J\u0008\u0010;\u001a\u00020<H\u0002J\n\u0010=\u001a\u0004\u0018\u00010>H\u0002J\u0010\u0010?\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0012\u0010@\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0012\u0010C\u001a\u0002062\u0008\u0010D\u001a\u0004\u0018\u00010*H\u0002J\u0008\u0010E\u001a\u000206H\u0014J\u0012\u0010F\u001a\u00020\u00122\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0017J\u0010\u0010I\u001a\u0002062\u0006\u0010J\u001a\u00020\nH\u0002J\u0006\u0010K\u001a\u000206J\u001a\u0010L\u001a\u0002062\u0008\u0010M\u001a\u0004\u0018\u00010N2\u0006\u0010O\u001a\u00020\u0012H\u0002J\u000e\u0010P\u001a\u0002062\u0006\u0010Q\u001a\u000203J\u0010\u0010R\u001a\u0002062\u0008\u0010S\u001a\u0004\u0018\u00010TJ\u001a\u0010R\u001a\u0002062\u0008\u0010S\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010VJ\u0008\u0010W\u001a\u000206H\u0002J\u0006\u0010X\u001a\u000206J\u0010\u0010X\u001a\u0002062\u0006\u0010S\u001a\u00020TH\u0002J\u001a\u0010X\u001a\u0002062\u0008\u0010M\u001a\u0004\u0018\u00010N2\u0008\u0008\u0002\u0010O\u001a\u00020\u0012J\u0016\u0010Y\u001a\u0002062\u0006\u0010Z\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u0012J\u0016\u0010\\\u001a\u0002062\u0006\u0010]\u001a\u00020<2\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010^\u001a\u000206J\u000e\u0010^\u001a\u0002062\u0006\u00105\u001a\u00020\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0014R\u001a\u0010$\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "Landroid/widget/ImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "TAG",
        "",
        "callback",
        "Lcom/opensource/svgaplayer/SVGACallback;",
        "getCallback",
        "()Lcom/opensource/svgaplayer/SVGACallback;",
        "setCallback",
        "(Lcom/opensource/svgaplayer/SVGACallback;)V",
        "clearsAfterDetached",
        "",
        "getClearsAfterDetached",
        "()Z",
        "setClearsAfterDetached",
        "(Z)V",
        "clearsAfterStop",
        "clearsAfterStop$annotations",
        "()V",
        "getClearsAfterStop",
        "setClearsAfterStop",
        "fillMode",
        "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;",
        "getFillMode",
        "()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;",
        "setFillMode",
        "(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V",
        "<set-?>",
        "isAnimating",
        "loops",
        "getLoops",
        "()I",
        "setLoops",
        "(I)V",
        "mAnimator",
        "Landroid/animation/ValueAnimator;",
        "mAnimatorListener",
        "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;",
        "mAnimatorUpdateListener",
        "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;",
        "mAntiAlias",
        "mAutoPlay",
        "mEndFrame",
        "mItemClickAreaListener",
        "Lcom/opensource/svgaplayer/SVGAClickAreaListener;",
        "mStartFrame",
        "clear",
        "",
        "createParseCompletion",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "ref",
        "Ljava/lang/ref/WeakReference;",
        "generateScale",
        "",
        "getSVGADrawable",
        "Lcom/opensource/svgaplayer/SVGADrawable;",
        "loadAttrs",
        "onAnimationEnd",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimatorUpdate",
        "animator",
        "onDetachedFromWindow",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "parserSource",
        "source",
        "pauseAnimation",
        "play",
        "range",
        "Lcom/opensource/svgaplayer/utils/SVGARange;",
        "reverse",
        "setOnAnimKeyClickListener",
        "clickListener",
        "setVideoItem",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "dynamicItem",
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "setupDrawable",
        "startAnimation",
        "stepToFrame",
        "frame",
        "andPlay",
        "stepToPercentage",
        "percentage",
        "stopAnimation",
        "AnimatorListener",
        "AnimatorUpdateListener",
        "FillMode",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lcom/opensource/svgaplayer/SVGACallback;

.field private clearsAfterDetached:Z

.field private clearsAfterStop:Z

.field private fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

.field private isAnimating:Z

.field private loops:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

.field private final mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

.field private mAntiAlias:Z

.field private mAutoPlay:Z

.field private mEndFrame:I

.field private mItemClickAreaListener:Lcom/opensource/svgaplayer/SVGAClickAreaListener;

.field private mStartFrame:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "SVGAImageView"

    .line 27
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 53
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 54
    new-instance p3, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    invoke-direct {p3, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    .line 55
    new-instance p3, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    invoke-direct {p3, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    .line 60
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p3, v0, :cond_0

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p0, p1, p3}, Lcom/opensource/svgaplayer/SVGAImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMAntiAlias$p(Lcom/opensource/svgaplayer/SVGAImageView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    return p0
.end method

.method public static final synthetic access$getMAutoPlay$p(Lcom/opensource/svgaplayer/SVGAImageView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    return p0
.end method

.method public static final synthetic access$getSVGADrawable(Lcom/opensource/svgaplayer/SVGAImageView;)Lcom/opensource/svgaplayer/SVGADrawable;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return p0
.end method

.method public static final synthetic access$onAnimationEnd(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/Animator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public static final synthetic access$onAnimatorUpdate(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimatorUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return-void
.end method

.method public static final synthetic access$setMAntiAlias$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    return-void
.end method

.method public static final synthetic access$setMAutoPlay$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method public static synthetic clearsAfterStop$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "It is recommended to use clearAfterDetached, or manually call to SVGAVideoEntity#clear.If you just consider cleaning up the canvas after playing, you can use FillMode#Clear."
    .end annotation

    return-void
.end method

.method private final createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;)",
            "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v0, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-object v0
.end method

.method private final generateScale()D
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_0
    const-string v2, "android.animation.ValueAnimator"

    .line 167
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "getDurationScale"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 168
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_3

    new-array v5, v4, [Ljava/lang/Object;

    .line 169
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    float-to-double v5, v3

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    if-nez v3, :cond_1

    :try_start_1
    const-string v3, "setDurationScale"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    .line 171
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v7, v7, [Ljava/lang/Object;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :try_start_2
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    const-string v4, "The animation duration scale has been reset to 1.0x, because you closed it on developer options."

    invoke-virtual {v2, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-wide v5

    :catch_0
    move-exception v2

    move-wide v0, v5

    goto :goto_0

    :cond_1
    move-wide v0, v5

    goto :goto_1

    .line 169
    :cond_2
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-wide v0

    :catch_1
    move-exception v2

    .line 180
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-wide v0
.end method

.method private final getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/opensource/svgaplayer/SVGADrawable;

    return-object v0
.end method

.method private final loadAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_loopCount:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    .line 69
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterStop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 70
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterDetached:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    .line 71
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_antiAlias:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 72
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 73
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_fillMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_0

    :pswitch_2
    const-string v1, "0"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 86
    :cond_0
    :goto_0
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_source:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->parserSource(Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    .line 194
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 195
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 197
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    goto :goto_0

    .line 199
    :cond_2
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 209
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/opensource/svgaplayer/SVGACallback;->onFinished()V

    :cond_4
    return-void
.end method

.method private final onAnimatorUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 186
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 188
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 189
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result v0

    invoke-interface {p1, v0, v1, v2}, Lcom/opensource/svgaplayer/SVGACallback;->onStep(ID)V

    :cond_1
    return-void

    .line 187
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final parserSource(Ljava/lang/String;)V
    .locals 7

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "http://"

    .line 95
    invoke-static {p1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https://"

    invoke-static {p1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    :goto_1
    return-void
.end method

.method private final play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .locals 6

    .line 133
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    const-string v2, "================ start animation ================"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setupDrawable()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLocation()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    .line 137
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLocation()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLength()I

    move-result p1

    goto :goto_2

    :cond_2
    const p1, 0x7fffffff

    :goto_2
    add-int/2addr v4, p1

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 139
    iget v2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    aput v2, p1, v1

    iget v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    aput v1, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string v1, "animator"

    .line 140
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    iget v2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    const/16 v2, 0x3e8

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFPS()I

    move-result v0

    div-int/2addr v2, v0

    mul-int/2addr v1, v2

    int-to-double v0, v1

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->generateScale()D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    if-gtz v0, :cond_3

    const v0, 0x1869f

    goto :goto_3

    :cond_3
    sub-int/2addr v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 143
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_4

    .line 146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_4

    .line 148
    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    :goto_4
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_5
    return-void
.end method

.method private final setupDrawable()V
    .locals 3

    .line 154
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    const-string v2, "scaleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private final startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$1;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic startAnimation$default(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/utils/SVGARange;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startAnimation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final clear()V
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getCallback()Lcom/opensource/svgaplayer/SVGACallback;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object v0
.end method

.method public final getClearsAfterDetached()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    return v0
.end method

.method public final getClearsAfterStop()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return v0
.end method

.method public final getFillMode()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-object v0
.end method

.method public final getLoops()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return v0
.end method

.method public final isAnimating()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 294
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 295
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    if-eqz p1, :cond_4

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getMClickMap$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x3

    aget v1, v1, v5

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mItemClickAreaListener:Lcom/opensource/svgaplayer/SVGAClickAreaListener;

    if-eqz v1, :cond_1

    .line 284
    invoke-interface {v1, v2}, Lcom/opensource/svgaplayer/SVGAClickAreaListener;->onClick(Ljava/lang/String;)V

    return v4

    .line 290
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 280
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 278
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final pauseAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 221
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/opensource/svgaplayer/SVGACallback;->onPause()V

    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-void
.end method

.method public final setClearsAfterDetached(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    return-void
.end method

.method public final setClearsAfterStop(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return-void
.end method

.method public final setFillMode(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-void
.end method

.method public final setLoops(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return-void
.end method

.method public final setOnAnimKeyClickListener(Lcom/opensource/svgaplayer/SVGAClickAreaListener;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mItemClickAreaListener:Lcom/opensource/svgaplayer/SVGAClickAreaListener;

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    .line 237
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 244
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    const/4 p1, 0x1

    .line 245
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 246
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public final startAnimation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final stepToFrame(IZ)V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->pauseAnimation()V

    .line 252
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 256
    iget-object p2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    .line 257
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method

.method public final stepToPercentage(DZ)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int p1, v1

    .line 265
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p2

    if-lt p1, p2, :cond_1

    if-lez p1, :cond_1

    .line 266
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 268
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToFrame(IZ)V

    :cond_2
    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    return-void
.end method

.method public final stopAnimation(Z)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->stop()V

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    :cond_4
    return-void
.end method
