.class public final Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "DialogActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogActionButton.kt\ncom/afollestad/materialdialogs/internal/button/DialogActionButton\n+ 2 MDUtil.kt\ncom/afollestad/materialdialogs/utils/MDUtil\n*L\n1#1,113:1\n248#2,4:114\n*E\n*S KotlinDebug\n*F\n+ 1 DialogActionButton.kt\ncom/afollestad/materialdialogs/internal/button/DialogActionButton\n*L\n88#1,4:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J%\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0014J\u0010\u0010\u0015\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0008R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "disabledColor",
        "",
        "enabledColor",
        "enabledColorOverride",
        "Ljava/lang/Integer;",
        "setEnabled",
        "",
        "enabled",
        "",
        "update",
        "baseContext",
        "appContext",
        "stacked",
        "update$core",
        "updateTextColor",
        "color",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final CASING_UPPER:I = 0x1

.field public static final Companion:Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$Companion;


# instance fields
.field private disabledColor:I

.field private enabledColor:I

.field private enabledColorOverride:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->Companion:Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setClickable(Z)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setFocusable(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 44
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColorOverride:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColor:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->disabledColor:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setTextColor(I)V

    return-void
.end method

.method public final update$core(Landroid/content/Context;Landroid/content/Context;Z)V
    .locals 9

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    .line 67
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_button_casing:I

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, p2, v1, v2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setSupportAllCaps(Z)V

    .line 73
    invoke-static {p2}, Lcom/afollestad/materialdialogs/ThemeKt;->inferThemeIsLight(Landroid/content/Context;)Z

    move-result v0

    .line 74
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    const/4 v3, 0x0

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_color_button_text:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v2, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$update$1;

    invoke-direct {v2, p2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$update$1;-><init>(Landroid/content/Context;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColor:I

    if-eqz v0, :cond_1

    .line 78
    sget v0, Lcom/afollestad/materialdialogs/R$color;->md_disabled_text_light_theme:I

    goto :goto_1

    .line 79
    :cond_1
    sget v0, Lcom/afollestad/materialdialogs/R$color;->md_disabled_text_dark_theme:I

    .line 80
    :goto_1
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->disabledColor:I

    .line 81
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColorOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColor:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setTextColor(I)V

    .line 84
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    const/4 v3, 0x0

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_button_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveDrawable$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_3

    .line 86
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget-object v2, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    const/4 v4, 0x0

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_ripple_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v1, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$update$2;

    invoke-direct {v1, p2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$update$2;-><init>(Landroid/content/Context;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    move-object p2, v0

    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_4

    .line 95
    invoke-static {p0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->setGravityEndCompat(Landroid/widget/TextView;)V

    goto :goto_3

    :cond_4
    const/16 p1, 0x11

    .line 96
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setGravity(I)V

    .line 99
    :goto_3
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setEnabled(Z)V

    return-void
.end method

.method public final updateTextColor(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColor:I

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->enabledColorOverride:Ljava/lang/Integer;

    .line 105
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setEnabled(Z)V

    return-void
.end method
