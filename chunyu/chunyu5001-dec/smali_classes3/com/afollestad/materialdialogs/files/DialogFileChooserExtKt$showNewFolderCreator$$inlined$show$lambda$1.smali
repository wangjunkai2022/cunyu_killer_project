.class final Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogFileChooserExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt;->showNewFolderCreator(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "Ljava/lang/CharSequence;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFileChooserExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFileChooserExt.kt\ncom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$dialog$1$1\n*L\n1#1,164:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "input",
        "",
        "invoke",
        "com/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$dialog$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $folderCreationLabel$inlined:Ljava/lang/Integer;

.field final synthetic $onCreation$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $parent$inlined:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/io/File;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->$folderCreationLabel$inlined:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->$parent$inlined:Ljava/io/File;

    iput-object p3, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->$onCreation$inlined:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->$parent$inlined:Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 143
    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;->$onCreation$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 142
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
