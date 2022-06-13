.class public abstract Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;
.super Landroid/view/ViewGroup;
.source "BaseSubLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\'\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0004J\u0008\u0010\u001a\u001a\u00020\u000eH\u0002R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "getDialog",
        "()Lcom/afollestad/materialdialogs/MaterialDialog;",
        "setDialog",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;)V",
        "dividerHeight",
        "",
        "getDividerHeight",
        "()I",
        "dividerPaint",
        "Landroid/graphics/Paint;",
        "value",
        "",
        "drawDivider",
        "getDrawDivider",
        "()Z",
        "setDrawDivider",
        "(Z)V",
        "getDividerColor",
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
.field public dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final dividerHeight:I

.field private final dividerPaint:Landroid/graphics/Paint;

.field private drawDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dividerPaint:Landroid/graphics/Paint;

    .line 38
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget v1, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, p0, v1}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dividerHeight:I

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->setWillNotDraw(Z)V

    .line 50
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 34
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getDividerColor()I
    .locals 7

    .line 61
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v1, :cond_0

    const-string v2, "dialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dialog.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final dividerPaint()Landroid/graphics/Paint;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dividerPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->getDividerColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getDialog()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v0, :cond_0

    const-string v1, "dialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getDividerHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dividerHeight:I

    return v0
.end method

.method public final getDrawDivider()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->drawDivider:Z

    return v0
.end method

.method public final setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public final setDrawDivider(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->drawDivider:Z

    .line 44
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->invalidate()V

    return-void
.end method
