.class public final Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayoutKt;
.super Ljava/lang/Object;
.source "DialogActionButtonLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogActionButtonLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogActionButtonLayout.kt\ncom/afollestad/materialdialogs/internal/button/DialogActionButtonLayoutKt\n*L\n1#1,288:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\u0003"
    }
    d2 = {
        "shouldBeVisible",
        "",
        "Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;",
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
.method public static final shouldBeVisible(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getCheckBoxPrompt()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/afollestad/materialdialogs/utils/ViewsKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
