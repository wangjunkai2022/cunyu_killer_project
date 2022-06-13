.class final Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$2;
.super Ljava/lang/Object;
.source "DialogBehavior.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/ModalDialog;->onPostShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $positiveBtn:Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$2;->$positiveBtn:Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$2;->$positiveBtn:Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->requestFocus()Z

    return-void
.end method
