.class Lxyz/ipig/native_dialog/PromptDialog$4;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/ipig/native_dialog/PromptDialog;->showCustomerLoadingWithDelay(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/ipig/native_dialog/PromptDialog;

.field final synthetic val$logo_loading:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxyz/ipig/native_dialog/PromptDialog;ILjava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    iput p2, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->val$logo_loading:I

    iput-object p3, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 471
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    iget v1, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->val$logo_loading:I

    iget-object v2, p0, Lxyz/ipig/native_dialog/PromptDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lxyz/ipig/native_dialog/PromptDialog;->showCustomLoading(ILjava/lang/String;)V

    return-void
.end method
