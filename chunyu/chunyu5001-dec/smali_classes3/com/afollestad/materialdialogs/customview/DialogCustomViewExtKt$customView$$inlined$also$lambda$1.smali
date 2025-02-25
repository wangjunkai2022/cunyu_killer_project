.class final Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$$inlined$also$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogCustomViewExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZ)Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/view/View;",
        "invoke",
        "com/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $dialogWrapContent$inlined:Z

.field final synthetic $this_customView$inlined:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$$inlined$also$lambda$1;->$this_customView$inlined:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$$inlined$also$lambda$1;->$dialogWrapContent$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$$inlined$also$lambda$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt$customView$$inlined$also$lambda$1;->$this_customView$inlined:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->maxWidth$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
