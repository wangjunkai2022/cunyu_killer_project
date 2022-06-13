.class Lxyz/ipig/native_dialog/PromptDialog$1;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/ipig/native_dialog/PromptDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/ipig/native_dialog/PromptDialog;


# direct methods
.method constructor <init>(Lxyz/ipig/native_dialog/PromptDialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-static {p1}, Lxyz/ipig/native_dialog/PromptDialog;->access$200(Lxyz/ipig/native_dialog/PromptDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-static {v0}, Lxyz/ipig/native_dialog/PromptDialog;->access$100(Lxyz/ipig/native_dialog/PromptDialog;)Lxyz/ipig/native_dialog/PromptView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->access$002(Lxyz/ipig/native_dialog/PromptDialog;Z)Z

    .line 168
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-static {p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->access$302(Lxyz/ipig/native_dialog/PromptDialog;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$1;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->access$002(Lxyz/ipig/native_dialog/PromptDialog;Z)Z

    return-void
.end method
