.class public final Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt;
.super Ljava/lang/Object;
.source "DialogCheckboxExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogCheckboxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogCheckboxExt.kt\ncom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt\n*L\n1#1,76:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aD\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0002`\u000b\u001a\u000c\u0010\u000c\u001a\u00020\r*\u00020\u0001H\u0007\u001a\u000c\u0010\u000e\u001a\u00020\u0007*\u00020\u0001H\u0007*&\u0010\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "checkBoxPrompt",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "res",
        "",
        "text",
        "",
        "isCheckedDefault",
        "",
        "onToggle",
        "Lkotlin/Function1;",
        "",
        "Lcom/afollestad/materialdialogs/checkbox/BooleanCallback;",
        "getCheckBoxPrompt",
        "Landroid/widget/CheckBox;",
        "isCheckPromptChecked",
        "BooleanCallback",
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
.method public static final checkBoxPrompt(Lcom/afollestad/materialdialogs/MaterialDialog;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/afollestad/materialdialogs/MaterialDialog;"
        }
    .end annotation

    const-string v0, "$this$checkBoxPrompt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "checkBoxPrompt"

    invoke-virtual {v0, v2, p2, v1}, Lcom/afollestad/materialdialogs/utils/MDUtil;->assertOneSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getButtonsLayout()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getCheckBoxPrompt()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 58
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveString$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 60
    new-instance v2, Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt$checkBoxPrompt$$inlined$run$lambda$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt$checkBoxPrompt$$inlined$run$lambda$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;IZLkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    sget-object v3, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v5

    sget p1, Lcom/afollestad/materialdialogs/R$attr;->md_color_content:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/afollestad/materialdialogs/utils/MDUtil;->maybeSetTextColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBodyFont()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 66
    sget p3, Lcom/afollestad/materialdialogs/R$attr;->md_color_widget:I

    aput p3, p2, v1

    sget p3, Lcom/afollestad/materialdialogs/R$attr;->md_color_widget_unchecked:I

    const/4 p4, 0x1

    aput p3, p2, p4

    const/4 p3, 0x0

    .line 67
    invoke-static {p0, p2, p3, p1, p3}, Lcom/afollestad/materialdialogs/utils/ColorsKt;->resolveColors$default(Lcom/afollestad/materialdialogs/MaterialDialog;[ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)[I

    move-result-object p1

    .line 69
    check-cast v0, Landroid/widget/CompoundButton;

    .line 70
    sget-object p2, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p3

    aget v1, p1, v1

    aget p1, p1, p4

    invoke-virtual {p2, p3, p1, v1}, Lcom/afollestad/materialdialogs/utils/MDUtil;->createColorSelector(Landroid/content/Context;II)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_2
    return-object p0
.end method

.method public static synthetic checkBoxPrompt$default(Lcom/afollestad/materialdialogs/MaterialDialog;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    .line 51
    check-cast p2, Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p3, 0x0

    .line 52
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt;->checkBoxPrompt(Lcom/afollestad/materialdialogs/MaterialDialog;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final getCheckBoxPrompt(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/CheckBox;
    .locals 1

    const-string v0, "$this$getCheckBoxPrompt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getButtonsLayout()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getCheckBoxPrompt()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/CheckBox;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The dialog does not have an attached buttons layout."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final isCheckPromptChecked(Lcom/afollestad/materialdialogs/MaterialDialog;)Z
    .locals 1

    const-string v0, "$this$isCheckPromptChecked"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt;->getCheckBoxPrompt(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method
