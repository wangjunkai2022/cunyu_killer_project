.class final Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogFileChooserExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt;->fileChooser(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
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
.field final synthetic $adapter:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

.field final synthetic $selection:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_fileChooser:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$this_fileChooser:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$adapter:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    iput-object p3, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$selection:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$adapter:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->getSelectedFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$selection:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;->$this_fileChooser:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
