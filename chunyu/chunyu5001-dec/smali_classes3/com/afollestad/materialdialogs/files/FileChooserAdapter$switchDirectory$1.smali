.class final Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChooserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->switchDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileChooserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChooserAdapter.kt\ncom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1\n*L\n1#1,255:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1"
    f = "FileChooserAdapter.kt"
    i = {
        0x0
    }
    l = {
        0x8d
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $directory:Ljava/io/File;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    invoke-direct {v0, v1, v2, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;-><init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 133
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getOnlyFolders$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->setSelectedFile(Ljava/io/File;)V

    .line 135
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getDialog$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    sget-object v3, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {v1, v3, v2}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    invoke-static {v1, v3}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$setCurrentFolder$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Ljava/io/File;)V

    .line 139
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getDialog$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    iget-object v4, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getDialog$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dialog.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->friendlyName(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 141
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;

    invoke-direct {v3, p0, v4}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;-><init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 132
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    .line 157
    invoke-static {v0}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getEmptyView$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/files/util/ViewExtKt;->setVisible(Landroid/view/View;Z)V

    .line 156
    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$setContents$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Ljava/util/List;)V

    .line 159
    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->notifyDataSetChanged()V

    .line 160
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
