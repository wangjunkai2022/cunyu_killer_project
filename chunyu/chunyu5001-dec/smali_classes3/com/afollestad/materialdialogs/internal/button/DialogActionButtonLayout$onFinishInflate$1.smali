.class final Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$onFinishInflate$1;
.super Ljava/lang/Object;
.source "DialogActionButtonLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $which:Lcom/afollestad/materialdialogs/WhichButton;

.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;Lcom/afollestad/materialdialogs/WhichButton;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$onFinishInflate$1;->this$0:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$onFinishInflate$1;->$which:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$onFinishInflate$1;->this$0:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getDialog()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$onFinishInflate$1;->$which:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->onActionButtonClicked$core(Lcom/afollestad/materialdialogs/WhichButton;)V

    return-void
.end method
