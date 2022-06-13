.class public final Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingleChoiceDialogAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "itemView",
        "Landroid/view/View;",
        "adapter",
        "Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;",
        "(Landroid/view/View;Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;)V",
        "controlView",
        "Landroidx/appcompat/widget/AppCompatRadioButton;",
        "getControlView",
        "()Landroidx/appcompat/widget/AppCompatRadioButton;",
        "value",
        "",
        "isEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "titleView",
        "Landroid/widget/TextView;",
        "getTitleView",
        "()Landroid/widget/TextView;",
        "onClick",
        "",
        "view",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final adapter:Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;

.field private final controlView:Landroidx/appcompat/widget/AppCompatRadioButton;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->adapter:Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;

    .line 45
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p2, Lcom/afollestad/materialdialogs/R$id;->md_control:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.md_control)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->controlView:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 49
    sget p2, Lcom/afollestad/materialdialogs/R$id;->md_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.md_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getControlView()Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->controlView:Landroidx/appcompat/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->adapter:Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceDialogAdapter;->itemClicked$core(I)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->controlView:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/list/SingleChoiceViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
