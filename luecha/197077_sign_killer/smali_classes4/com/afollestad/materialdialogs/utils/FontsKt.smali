.class public final Lcom/afollestad/materialdialogs/utils/FontsKt;
.super Ljava/lang/Object;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFonts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Fonts.kt\ncom/afollestad/materialdialogs/utils/FontsKt\n*L\n1#1,54:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u0002\u001a+\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u00072\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0001\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "safeGetFont",
        "Landroid/graphics/Typeface;",
        "context",
        "Landroid/content/Context;",
        "res",
        "",
        "font",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "attr",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Typeface;",
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
.method public static final font(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "$this$font"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    const-string v1, "font"

    invoke-virtual {v0, v1, p2, p1}, Lcom/afollestad/materialdialogs/utils/MDUtil;->assertOneSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/afollestad/materialdialogs/utils/FontsKt;->safeGetFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/afollestad/materialdialogs/utils/FontsKt;->safeGetFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static synthetic font$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Typeface;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 28
    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 29
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/afollestad/materialdialogs/utils/FontsKt;->font(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static final safeGetFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 0

    .line 48
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
