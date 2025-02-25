.class final Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImageDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;->getBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.github.florent37.assets_audio_player.notification.ImageDownloader$getBitmap$2"
    f = "ImageDownloader.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $filePackage:Ljava/lang/String;

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $fileType:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$fileType:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$fileType:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$3:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$fileType:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->$context:Landroid/content/Context;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;->label:I

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    new-instance v5, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/Continuation;

    :try_start_0
    const-string v7, "asset"

    .line 60
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x1388

    if-eqz v7, :cond_3

    .line 61
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object p1

    const-string v7, "instance().flutterLoader()"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "file:///android_asset/"

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {p1, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1, v3, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    :goto_0
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 70
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 73
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 74
    new-instance v1, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$1;

    invoke-direct {v1, v6, v3}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_3
    const-string v1, "network"

    .line 92
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 93
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v8}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 96
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 97
    new-instance v1, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$2;

    invoke-direct {v1, v4, v6, v3}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 129
    :cond_4
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v8}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 133
    new-instance v1, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$3;

    invoke-direct {v1, v4, v6, v3}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2$1$3;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 57
    :goto_1
    invoke-virtual {v5}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_5

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    return-object p1
.end method
