.class final Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChooserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Ljava/io/File;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileChooserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChooserAdapter.kt\ncom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n3271#2:256\n3688#2,2:257\n3271#2:260\n3688#2,2:261\n919#3:259\n*E\n*S KotlinDebug\n*F\n+ 1 FileChooserAdapter.kt\ncom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1\n*L\n145#1:256\n145#1,2:257\n149#1:260\n149#1,2:261\n146#1:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
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
    c = "com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1"
    f = "FileChooserAdapter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    invoke-direct {v0, v1, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;-><init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 141
    iget v0, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->$directory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/io/File;

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getOnlyFolders$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Z

    move-result v1

    const-string v2, "it"

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 257
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, p1, v5

    .line 145
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v7}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getFilter$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 258
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 259
    new-instance p1, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_6

    .line 260
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 261
    array-length v4, p1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    aget-object v6, p1, v5

    .line 149
    iget-object v7, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v7}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getFilter$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x1

    :goto_5
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 262
    :cond_8
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/jvm/functions/Function1;

    .line 150
    sget-object v2, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$4;->INSTANCE:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    aput-object v2, p1, v0

    sget-object v0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$5;->INSTANCE:Lcom/afollestad/materialdialogs/files/FileChooserAdapter$switchDirectory$1$result$1$5;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    aput-object v0, p1, v3

    invoke-static {p1}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :goto_6
    return-object p1

    .line 153
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
