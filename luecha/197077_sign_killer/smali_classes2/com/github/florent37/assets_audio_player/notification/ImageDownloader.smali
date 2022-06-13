.class public final Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ%\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;",
        "",
        "()V",
        "manifestNotificationPlaceHolder",
        "",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "context",
        "Landroid/content/Context;",
        "fileType",
        "filePath",
        "filePackage",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadBitmap",
        "imageMetas",
        "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;",
        "(Landroid/content/Context;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadHolderBitmapFromManifest",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "assets_audio_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;

.field public static final manifestNotificationPlaceHolder:Ljava/lang/String; = "assets.audio.player.notification.place.holder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;

    invoke-direct {v0}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;-><init>()V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;->INSTANCE:Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$getBitmap$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final loadBitmap(Landroid/content/Context;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;

    iget v1, v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;

    invoke-direct {v0, p0, p3}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;-><init>(Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, v6, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p2, :cond_3

    move-object p3, v7

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImageType()Ljava/lang/String;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImagePath()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 27
    :try_start_1
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImageType()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImagePackage()Ljava/lang/String;

    move-result-object v5

    .line 26
    iput v2, v6, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader$loadBitmap$1;->label:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;->getBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object p3

    .line 32
    :goto_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :cond_5
    return-object v7
.end method

.method public final loadHolderBitmapFromManifest(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "context.packageManager.g\u2026ageManager.GET_META_DATA)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "assets.audio.player.notification.place.holder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on AndroidManifest.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-object p2
.end method
