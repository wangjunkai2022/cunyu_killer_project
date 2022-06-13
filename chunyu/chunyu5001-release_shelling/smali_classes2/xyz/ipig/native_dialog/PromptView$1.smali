.class Lxyz/ipig/native_dialog/PromptView$1;
.super Ljava/lang/Object;
.source "PromptView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/ipig/native_dialog/PromptView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/ipig/native_dialog/PromptView;


# direct methods
.method constructor <init>(Lxyz/ipig/native_dialog/PromptView;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView$1;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 252
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    .line 253
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView$1;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {v0}, Lxyz/ipig/native_dialog/PromptView;->access$200(Lxyz/ipig/native_dialog/PromptView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptView$1;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {v1}, Lxyz/ipig/native_dialog/PromptView;->access$000(Lxyz/ipig/native_dialog/PromptView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lxyz/ipig/native_dialog/PromptView$1;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {v2}, Lxyz/ipig/native_dialog/PromptView;->access$100(Lxyz/ipig/native_dialog/PromptView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 254
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView$1;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {p1}, Lxyz/ipig/native_dialog/PromptView;->access$200(Lxyz/ipig/native_dialog/PromptView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
