.class Lxyz/ipig/native_dialog/PromptView$2;
.super Ljava/lang/Object;
.source "PromptView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/ipig/native_dialog/PromptView;->startBottomToTopAnim()V
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

    .line 331
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView$2;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 335
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView$2;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {v0}, Lxyz/ipig/native_dialog/PromptView;->access$400(Lxyz/ipig/native_dialog/PromptView;)F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lxyz/ipig/native_dialog/PromptView;->access$302(Lxyz/ipig/native_dialog/PromptView;F)F

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView$2;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-static {v0}, Lxyz/ipig/native_dialog/PromptView;->access$300(Lxyz/ipig/native_dialog/PromptView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADVIEW"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView$2;->this$0:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1}, Lxyz/ipig/native_dialog/PromptView;->invalidate()V

    return-void
.end method
