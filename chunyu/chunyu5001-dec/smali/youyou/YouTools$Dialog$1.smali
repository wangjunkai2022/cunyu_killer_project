.class Lyouyou/YouTools$Dialog$1;
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

    .line 80
    iput-object p1, p0, Lyouyou/YouTools$Dialog$1;->this$0:Lyouyou/YouTools$Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 86
    return-void
.end method
