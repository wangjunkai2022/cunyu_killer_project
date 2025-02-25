.class Lyouyou/YouTools$Dialog$2;
.super Ljava/lang/Object;
.source "YouTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyouyou/YouTools$Dialog;->goToPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyouyou/YouTools$Dialog;


# direct methods
.method constructor <init>(Lyouyou/YouTools$Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lyouyou/YouTools$Dialog;

    .line 70
    iput-object p1, p0, Lyouyou/YouTools$Dialog$2;->this$0:Lyouyou/YouTools$Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 76
    iget-object v0, p0, Lyouyou/YouTools$Dialog$2;->this$0:Lyouyou/YouTools$Dialog;

    iget-object v0, v0, Lyouyou/YouTools$Dialog;->url:Ljava/lang/String;

    iget-object v1, p0, Lyouyou/YouTools$Dialog$2;->this$0:Lyouyou/YouTools$Dialog;

    iget-object v1, v1, Lyouyou/YouTools$Dialog;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lyouyou/YouTools;->access$000(Ljava/lang/String;Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 78
    return-void
.end method
