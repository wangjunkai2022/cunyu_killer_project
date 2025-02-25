.class Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->createAnimatorUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable$1;->this$0:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable$1;->this$0:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;->setLevel(I)Z

    return-void
.end method
