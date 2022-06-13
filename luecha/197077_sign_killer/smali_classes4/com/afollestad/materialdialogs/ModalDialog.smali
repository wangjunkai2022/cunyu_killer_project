.class public final Lcom/afollestad/materialdialogs/ModalDialog;
.super Ljava/lang/Object;
.source "DialogBehavior.kt"

# interfaces
.implements Lcom/afollestad/materialdialogs/DialogBehavior;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogBehavior.kt\ncom/afollestad/materialdialogs/ModalDialog\n*L\n1#1,175:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0017J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J/\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0002\u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/ModalDialog;",
        "Lcom/afollestad/materialdialogs/DialogBehavior;",
        "()V",
        "createView",
        "Landroid/view/ViewGroup;",
        "creatingContext",
        "Landroid/content/Context;",
        "dialogWindow",
        "Landroid/view/Window;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "getDialogLayout",
        "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "root",
        "getThemeRes",
        "",
        "isDark",
        "",
        "onDismiss",
        "onPostShow",
        "",
        "onPreShow",
        "setBackgroundColor",
        "view",
        "color",
        "cornerRadius",
        "",
        "setWindowConstraints",
        "context",
        "window",
        "maxWidth",
        "(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V",
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
.field public static final INSTANCE:Lcom/afollestad/materialdialogs/ModalDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/afollestad/materialdialogs/ModalDialog;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/ModalDialog;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/ModalDialog;->INSTANCE:Lcom/afollestad/materialdialogs/ModalDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;Landroid/view/Window;Landroid/view/LayoutInflater;Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/ViewGroup;
    .locals 1

    const-string v0, "creatingContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dialogWindow"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layoutInflater"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dialog"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget p1, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_base:I

    const/4 p2, 0x0

    const/4 p4, 0x0

    .line 98
    invoke-virtual {p3, p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDialogLayout(Landroid/view/ViewGroup;)Lcom/afollestad/materialdialogs/internal/main/DialogLayout;
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    check-cast p1, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    return-object p1
.end method

.method public getThemeRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    sget p1, Lcom/afollestad/materialdialogs/R$style;->MD_Dark:I

    goto :goto_0

    .line 87
    :cond_0
    sget p1, Lcom/afollestad/materialdialogs/R$style;->MD_Light:I

    :goto_0
    return p1
.end method

.method public onDismiss()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->NEGATIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->getActionButton(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object v0

    .line 163
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance p1, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$1;

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$1;-><init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->getActionButton(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;)Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object p1

    .line 168
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$2;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/ModalDialog$onPostShow$2;-><init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPreShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;IF)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 147
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->setCornerRadii([F)V

    .line 153
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 154
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWindowConstraints(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x10

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 121
    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 123
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/utils/MDUtil;->getWidthAndHeight(Landroid/view/WindowManager;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 126
    sget v2, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_vertical_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 127
    invoke-virtual {p3, v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->setMaxHeight(I)V

    .line 129
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 130
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 133
    sget v0, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_horizontal_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    if-eqz p4, :cond_2

    .line 136
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    sget p4, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_max_width:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 137
    :goto_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method
