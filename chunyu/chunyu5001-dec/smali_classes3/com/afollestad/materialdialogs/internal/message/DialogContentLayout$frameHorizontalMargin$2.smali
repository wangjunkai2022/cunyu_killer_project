.class final Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout$frameHorizontalMargin$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogContentLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout$frameHorizontalMargin$2;->this$0:Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout$frameHorizontalMargin$2;->this$0:Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout$frameHorizontalMargin$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
