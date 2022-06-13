.class public final Lcom/afollestad/materialdialogs/utils/DialogsKt;
.super Ljava/lang/Object;
.source "Dialogs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dialogs.kt\ncom/afollestad/materialdialogs/utils/DialogsKt\n*L\n1#1,113:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u001c\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u001a/\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0010\u000e\u001aQ\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0003\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0010\u0019\u001a\u000c\u0010\u001a\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "hideKeyboard",
        "",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "invalidateDividers",
        "showTop",
        "",
        "showBottom",
        "populateIcon",
        "imageView",
        "Landroid/widget/ImageView;",
        "iconRes",
        "",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/ImageView;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V",
        "populateText",
        "textView",
        "Landroid/widget/TextView;",
        "textRes",
        "text",
        "",
        "fallback",
        "typeface",
        "Landroid/graphics/Typeface;",
        "textColor",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;)V",
        "preShow",
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
.method public static final hideKeyboard(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    const-string v0, "$this$hideKeyboard"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 103
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final invalidateDividers(Lcom/afollestad/materialdialogs/MaterialDialog;ZZ)V
    .locals 1

    const-string v0, "$this$invalidateDividers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->invalidateDividers(ZZ)V

    return-void
.end method

.method public static final populateIcon(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/ImageView;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const-string v0, "$this$populateIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveDrawable$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x8

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final populateText(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;)V
    .locals 8

    const-string v0, "$this$populateText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveString$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    .line 93
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    :cond_1
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p6

    invoke-static/range {v0 .. v6}, Lcom/afollestad/materialdialogs/utils/MDUtil;->maybeSetTextColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 p0, 0x8

    .line 97
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static synthetic populateText$default(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    .line 82
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 85
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v2 .. v8}, Lcom/afollestad/materialdialogs/utils/DialogsKt;->populateText(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/graphics/Typeface;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final preShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 6

    const-string v0, "$this$preShow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getConfig()Ljava/util/Map;

    move-result-object v0

    const-string v1, "md.custom_view_no_vertical_padding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getPreShowListeners$core()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->invokeAll(Ljava/util/List;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 47
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getView()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getTitleLayout()Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;->shouldNotBeVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    move-result-object v0

    .line 51
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVertical$core()I

    move-result v4

    .line 52
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVertical$core()I

    move-result v5

    .line 50
    invoke-virtual {v0, v4, v5}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->modifyFirstAndLastPadding(II)V

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/afollestad/materialdialogs/checkbox/DialogCheckboxExtKt;->getCheckBoxPrompt(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/CheckBox;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    move-result-object p0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->modifyFirstAndLastPadding$default(Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;IIILjava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->haveMoreThanOneChild()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 59
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    move-result-object p0

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getFrameMarginVerticalLess$core()I

    move-result v3

    invoke-static {p0, v0, v3, v1, v2}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->modifyScrollViewPadding$default(Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;IIILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
