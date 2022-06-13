.class Lxyz/ipig/native_dialog/PromptDialog$2;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/ipig/native_dialog/PromptDialog;->showSuccessDelay(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/ipig/native_dialog/PromptDialog;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxyz/ipig/native_dialog/PromptDialog;Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog$2;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog$2;->this$0:Lxyz/ipig/native_dialog/PromptDialog;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/PromptDialog;->showSuccess(Ljava/lang/String;)V

    return-void
.end method
