.class final Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogInputExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->input(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/CharSequence;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogInputExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogInputExt.kt\ncom/afollestad/materialdialogs/input/DialogInputExtKt$input$4\n*L\n1#1,171:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $allowEmpty:Z

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;

.field final synthetic $maxLength:Ljava/lang/Integer;

.field final synthetic $this_input:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic $waitForPositiveButton:Z


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;ZLjava/lang/Integer;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$this_input:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$allowEmpty:Z

    iput-object p3, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$maxLength:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$waitForPositiveButton:Z

    iput-object p5, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->invoke(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$allowEmpty:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$this_input:Lcom/afollestad/materialdialogs/MaterialDialog;

    sget-object v1, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$maxLength:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$this_input:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$allowEmpty:Z

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/input/InputUtilExtKt;->invalidateInputMaxLength(Lcom/afollestad/materialdialogs/MaterialDialog;Z)V

    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$waitForPositiveButton:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$callback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_3

    .line 128
    iget-object v1, p0, Lcom/afollestad/materialdialogs/input/DialogInputExtKt$input$4;->$this_input:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
