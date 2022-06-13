.class public final Lcom/afollestad/materialdialogs/input/DialogInputExtKt;
.super Ljava/lang/Object;
.source "DialogInputExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogInputExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogInputExt.kt\ncom/afollestad/materialdialogs/input/DialogInputExtKt\n*L\n1#1,171:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0007\u001a\u008d\u0001\u0010\u0005\u001a\u00020\u0002*\u00020\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102 \u0008\u0002\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0002`\u0015H\u0007\u00a2\u0006\u0002\u0010\u0016\u001a\u000c\u0010\u0017\u001a\u00020\u0004*\u00020\u0002H\u0002\u001a-\u0010\u0018\u001a\u00020\u0014*\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0002\u0010\u0019\u001a-\u0010\u001a\u001a\u00020\u0014*\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0002\u0010\u001b*2\u0010\u001c\"\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u00a8\u0006\u0005"
    }
    d2 = {
        "getInputField",
        "Landroid/widget/EditText;",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "getInputLayout",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "input",
        "hint",
        "",
        "hintRes",
        "",
        "prefill",
        "",
        "prefillRes",
        "inputType",
        "maxLength",
        "waitForPositiveButton",
        "",
        "allowEmpty",
        "callback",
        "Lkotlin/Function2;",
        "",
        "Lcom/afollestad/materialdialogs/input/InputCallback;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;",
        "lookupInputLayout",
        "prefillInput",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;Ljava/lang/Integer;Z)V",
        "styleInput",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;I)V",
        "InputCallback"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final getInputField(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/EditText;
    .locals 1

    const-string v0, "$this$getInputField"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputLayout(Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You have not setup this dialog as an input dialog."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final getInputLayout(Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    const-string v0, "$this$getInputLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getConfig()Ljava/util/Map;

    move-result-object v0

    const-string v1, "[custom_view_input_layout]"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->lookupInputLayout(Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getConfig()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public static final input(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "-",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/afollestad/materialdialogs/MaterialDialog;"
        }
    .end annotation

    move-object v9, p0

    move/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "$this$input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget v0, Lcom/afollestad/materialdialogs/input/R$layout;->md_dialog_stub_input:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 99
    new-instance v0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$1;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->onPreShow(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 100
    invoke-static {p0}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->hasActionButtons(Lcom/afollestad/materialdialogs/MaterialDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x104000a

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_0
    if-eqz v11, :cond_1

    if-eqz p7, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$2;

    invoke-direct {v0, p0, v11}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$2;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function2;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_1
    move-object v0, p3

    move-object/from16 v1, p4

    .line 109
    invoke-static {p0, p3, v1, v10}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->prefillInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;Ljava/lang/Integer;Z)V

    move-object v0, p1

    move-object v1, p2

    move/from16 v2, p5

    .line 110
    invoke-static {p0, p1, p2, v2}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->styleInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;I)V

    if-eqz p6, :cond_2

    .line 113
    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputLayout(Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 115
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 117
    invoke-static {p0, v10}, Lcom/afollestad/materialdialogs/input/InputUtilExtKt;->invalidateInputMaxLength(Lcom/afollestad/materialdialogs/MaterialDialog;Z)V

    .line 120
    :cond_2
    sget-object v6, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputField(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/EditText;

    move-result-object v7

    new-instance v8, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;ZLjava/lang/Integer;ZLkotlin/jvm/functions/Function2;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v7, v8}, Lcom/afollestad/materialdialogs/utils/MDUtil;->textChanged(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-object v9
.end method

.method public static synthetic input$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 89
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 90
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 91
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 93
    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 96
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    goto :goto_8

    :cond_8
    move-object/from16 v0, p9

    :goto_8
    move-object p1, v1

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move-object/from16 p6, v8

    move/from16 p7, v7

    move/from16 p8, v9

    move-object/from16 p9, v0

    invoke-static/range {p0 .. p9}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->input(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final lookupInputLayout(Lcom/afollestad/materialdialogs/MaterialDialog;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/afollestad/materialdialogs/input/R$id;->md_input_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p0, :cond_1

    return-object p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You have not setup this dialog as an input dialog."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static final prefillInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;Ljava/lang/Integer;Z)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputField(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string p2, "if (prefillRes != null) \u2026tring(prefillRes) else \"\""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 144
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_3

    .line 145
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance p2, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$prefillInput$1;

    invoke-direct {p2, v1, p1}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$prefillInput$1;-><init>(Landroid/widget/EditText;Ljava/lang/CharSequence;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p2}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->onShow(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 149
    :cond_3
    sget-object p2, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    if-nez p3, :cond_6

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 148
    :cond_6
    :goto_4
    invoke-static {p0, p2, v0}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    return-void
.end method

.method private static final styleInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    invoke-static {p0}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputField(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 162
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 164
    sget-object p1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    move-object p2, v1

    check-cast p2, Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p3

    .line 166
    sget v0, Lcom/afollestad/materialdialogs/input/R$attr;->md_color_content:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    sget v2, Lcom/afollestad/materialdialogs/input/R$attr;->md_color_hint:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 164
    invoke-virtual {p1, p2, p3, v0, v2}, Lcom/afollestad/materialdialogs/utils/MDUtil;->maybeSetTextColor(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBodyFont()Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
