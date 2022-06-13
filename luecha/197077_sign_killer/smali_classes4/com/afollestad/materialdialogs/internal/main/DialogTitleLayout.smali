.class public final Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;
.super Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;
.source "DialogTitleLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u001aH\u0014J0\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008H\u0014J\u0018\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0008H\u0014J\u0006\u0010(\u001a\u00020 R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;",
        "Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "frameMarginHorizontal",
        "",
        "frameMarginVertical",
        "iconMargin",
        "iconSize",
        "iconView",
        "Landroid/widget/ImageView;",
        "getIconView$core",
        "()Landroid/widget/ImageView;",
        "setIconView$core",
        "(Landroid/widget/ImageView;)V",
        "titleMarginBottom",
        "titleView",
        "Landroid/widget/TextView;",
        "getTitleView$core",
        "()Landroid/widget/TextView;",
        "setTitleView$core",
        "(Landroid/widget/TextView;)V",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onFinishInflate",
        "onLayout",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "shouldNotBeVisible",
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
.field private final frameMarginHorizontal:I

.field private final frameMarginVertical:I

.field private final iconMargin:I

.field private final iconSize:I

.field public iconView:Landroid/widget/ImageView;

.field private final titleMarginBottom:I

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin_vertical:I

    invoke-virtual {p1, p0, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginVertical:I

    .line 49
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_title_layout_margin_bottom:I

    invoke-virtual {p1, p0, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleMarginBottom:I

    .line 50
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin_horizontal:I

    invoke-virtual {p1, p0, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginHorizontal:I

    .line 52
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_icon_margin:I

    invoke-virtual {p1, p0, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconMargin:I

    .line 53
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_icon_size:I

    invoke-virtual {p1, p0, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->dimenPx(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconSize:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 45
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getIconView$core()Landroid/widget/ImageView;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "iconView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTitleView$core()Landroid/widget/TextView;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "titleView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getDrawDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getDividerHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    .line 159
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    .line 160
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    .line 161
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->dividerPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    .line 156
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/afollestad/materialdialogs/internal/main/BaseSubLayout;->onFinishInflate()V

    .line 60
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_icon_title:I

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.md_icon_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_text_title:I

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.md_text_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 105
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->shouldNotBeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginVertical:I

    .line 108
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleMarginBottom:I

    sub-int/2addr p2, p3

    sub-int p1, p2, p1

    .line 110
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    .line 112
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    const-string p3, "titleView"

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p4, p2, p1

    add-int/2addr p1, p2

    .line 115
    sget-object p5, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p5, v0}, Lcom/afollestad/materialdialogs/utils/MDUtil;->additionalPaddingForFont(Landroid/widget/TextView;)I

    move-result p5

    add-int/2addr p1, p5

    .line 119
    invoke-static {p0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isRtl(Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->getMeasuredWidth()I

    move-result p5

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginHorizontal:I

    sub-int/2addr p5, v0

    .line 121
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p5, v0

    goto :goto_0

    .line 123
    :cond_4
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginHorizontal:I

    .line 124
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez p5, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, v0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    const-string v2, "iconView"

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 128
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v3, p2, v1

    add-int/2addr p2, v1

    .line 135
    invoke-static {p0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 137
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p5, v0

    .line 138
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconMargin:I

    sub-int v1, v0, v1

    .line 139
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v4, :cond_9

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    goto :goto_1

    .line 142
    :cond_a
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez p5, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, v0

    .line 143
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconMargin:I

    add-int/2addr v1, p5

    .line 144
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v4, :cond_c

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    move v6, v4

    move v4, v1

    move v1, v6

    .line 146
    :goto_1
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v5, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v5, v0, v3, p5, p2}, Landroid/widget/ImageView;->layout(IIII)V

    move p5, v1

    move v0, v4

    .line 149
    :cond_e
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez p2, :cond_f

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2, v0, p4, p5, p1}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 70
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->shouldNotBeVisible()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->setMeasuredDimension(II)V

    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 76
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginHorizontal:I

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    .line 78
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    const-string v2, "iconView"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    :cond_2
    iget v3, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconSize:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 81
    iget v5, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconSize:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 79
    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 83
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconMargin:I

    add-int/2addr v1, v3

    sub-int/2addr p2, v1

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    const-string v3, "titleView"

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/high16 v4, -0x80000000

    .line 87
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 88
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 86
    invoke-virtual {v1, p2, v4}, Landroid/widget/TextView;->measure(II)V

    .line 91
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez p2, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez p2, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 92
    :cond_8
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez p2, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 93
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->frameMarginVertical:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleMarginBottom:I

    add-int/2addr p2, v0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setIconView$core(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTitleView$core(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method public final shouldNotBeVisible()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "iconView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isNotVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "titleView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isNotVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
