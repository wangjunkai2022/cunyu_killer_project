.class public final Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;
.super Ljava/lang/Object;
.source "LinkTransformationMethod.kt"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B(\u0012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J0\u0010\u000f\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R)\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;",
        "Landroid/text/method/TransformationMethod;",
        "onLinkClick",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "link",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getTransformation",
        "",
        "source",
        "view",
        "Landroid/view/View;",
        "onFocusChanged",
        "sourceText",
        "focused",
        "",
        "direction",
        "",
        "previouslyFocusedRect",
        "Landroid/graphics/Rect;",
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
.field private final onLinkClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onLinkClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;->onLinkClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-object p1

    .line 36
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/text/Spannable;

    .line 40
    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p2

    const-class v0, Landroid/text/style/URLSpan;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    .line 41
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 42
    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 43
    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "span"

    .line 44
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 47
    new-instance v2, Lcom/afollestad/materialdialogs/internal/message/CustomUrlSpan;

    const-string v6, "url"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;->onLinkClick:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v5, v6}, Lcom/afollestad/materialdialogs/internal/message/CustomUrlSpan;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const/16 v5, 0x21

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 39
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sourceText"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "previouslyFocusedRect"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
