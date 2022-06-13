.class public final Lcom/afollestad/materialdialogs/utils/ColorsKt;
.super Ljava/lang/Object;
.source "Colors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a;\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0001\u00a2\u0006\u0002\u0010\n\u001a;\u0010\u000b\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2%\u0008\u0002\u0010\u0008\u001a\u001f\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000eH\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "adjustAlpha",
        "",
        "alpha",
        "",
        "resolveColor",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "res",
        "attr",
        "fallback",
        "Lkotlin/Function0;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)I",
        "resolveColors",
        "",
        "attrs",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "forAttr",
        "core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final adjustAlpha(IF)I
    .locals 2

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static final resolveColor(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$resolveColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColor(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)I

    move-result p0

    return p0
.end method

.method public static synthetic resolveColor$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 29
    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 30
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 31
    move-object p3, v0

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/utils/ColorsKt;->resolveColor(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)I

    move-result p0

    return p0
.end method

.method public static final resolveColors(Lcom/afollestad/materialdialogs/MaterialDialog;[ILkotlin/jvm/functions/Function1;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "[I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const-string v0, "$this$resolveColors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColors(Landroid/content/Context;[ILkotlin/jvm/functions/Function1;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolveColors$default(Lcom/afollestad/materialdialogs/MaterialDialog;[ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)[I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 37
    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/afollestad/materialdialogs/utils/ColorsKt;->resolveColors(Lcom/afollestad/materialdialogs/MaterialDialog;[ILkotlin/jvm/functions/Function1;)[I

    move-result-object p0

    return-object p0
.end method
