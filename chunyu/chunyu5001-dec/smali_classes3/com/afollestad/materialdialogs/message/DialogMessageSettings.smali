.class public final Lcom/afollestad/materialdialogs/message/DialogMessageSettings;
.super Ljava/lang/Object;
.source "DialogMessageSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J-\u0010\u000c\u001a\u00020\u00002%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J%\u0010\u0017\u001a\u00020\u00132\n\u0008\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b*\u0004\u0018\u00010\u001b2\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/message/DialogMessageSettings;",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "messageTextView",
        "Landroid/widget/TextView;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;)V",
        "didSetLineSpacing",
        "",
        "isHtml",
        "getMessageTextView",
        "()Landroid/widget/TextView;",
        "html",
        "onLinkClick",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "link",
        "",
        "lineSpacing",
        "multiplier",
        "",
        "setText",
        "res",
        "",
        "text",
        "",
        "setText$core",
        "(Ljava/lang/Integer;Ljava/lang/CharSequence;)V",
        "maybeWrapHtml",
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
.field private final dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private didSetLineSpacing:Z

.field private isHtml:Z

.field private final messageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic html$default(Lcom/afollestad/materialdialogs/message/DialogMessageSettings;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/message/DialogMessageSettings;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 43
    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->html(Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/message/DialogMessageSettings;

    move-result-object p0

    return-object p0
.end method

.method private final maybeWrapHtml(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final html(Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/message/DialogMessageSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/afollestad/materialdialogs/message/DialogMessageSettings;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->isHtml:Z

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;

    invoke-direct {v1, p1}, Lcom/afollestad/materialdialogs/internal/message/LinkTransformationMethod;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/text/method/TransformationMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object p0
.end method

.method public final lineSpacing(F)Lcom/afollestad/materialdialogs/message/DialogMessageSettings;
    .locals 2

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->didSetLineSpacing:Z

    .line 39
    iget-object v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object p0
.end method

.method public final setText$core(Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 8

    .line 56
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->didSetLineSpacing:Z

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    .line 59
    iget-object v1, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    sget v2, Lcom/afollestad/materialdialogs/R$attr;->md_line_spacing_body:I

    const v3, 0x3f8ccccd    # 1.1f

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveFloat(Landroid/content/Context;IF)F

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->lineSpacing(F)Lcom/afollestad/materialdialogs/message/DialogMessageSettings;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->messageTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->isHtml:Z

    invoke-direct {p0, p2, v1}, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->maybeWrapHtml(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/afollestad/materialdialogs/message/DialogMessageSettings;->isHtml:Z

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->resolveString$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
