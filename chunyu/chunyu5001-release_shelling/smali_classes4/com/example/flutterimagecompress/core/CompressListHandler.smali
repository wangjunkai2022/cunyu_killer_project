.class public final Lcom/example/flutterimagecompress/core/CompressListHandler;
.super Lcom/example/flutterimagecompress/core/ResultHandler;
.source "CompressListHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/core/CompressListHandler;",
        "Lcom/example/flutterimagecompress/core/ResultHandler;",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "handle",
        "",
        "context",
        "Landroid/content/Context;",
        "flutter_image_compress_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final call:Lio/flutter/plugin/common/MethodCall;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/example/flutterimagecompress/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object p1, p0, Lcom/example/flutterimagecompress/core/CompressListHandler;->call:Lio/flutter/plugin/common/MethodCall;

    return-void
.end method

.method private static final handle$lambda-0(Lcom/example/flutterimagecompress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/example/flutterimagecompress/core/CompressListHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [B

    const/4 v2, 0x1

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v4, 0x4

    .line 22
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x5

    .line 23
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x6

    .line 24
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x7

    .line 25
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/16 v8, 0x8

    .line 26
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v6, :cond_0

    .line 28
    sget-object v0, Lcom/example/flutterimagecompress/exif/Exif;->INSTANCE:Lcom/example/flutterimagecompress/exif/Exif;

    invoke-virtual {v0, v5}, Lcom/example/flutterimagecompress/exif/Exif;->getRotationDegrees([B)I

    move-result v1

    :cond_0
    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq v1, v0, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v2

    move v2, v3

    .line 36
    :goto_0
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    invoke-virtual {v0, v7}, Lcom/example/flutterimagecompress/format/FormatRegister;->findFormat(I)Lcom/example/flutterimagecompress/handle/FormatHandler;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_2

    const-string p1, "No support format."

    .line 39
    invoke-static {p0, p1}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/example/flutterimagecompress/core/CompressListHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_2
    add-int v10, v4, v1

    .line 46
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    :try_start_0
    move-object v6, v1

    check-cast v6, Ljava/io/OutputStream;

    move-object v4, p1

    move v7, v2

    invoke-interface/range {v3 .. v12}, Lcom/example/flutterimagecompress/handle/FormatHandler;->handleByteArray(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V

    .line 49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/example/flutterimagecompress/core/CompressListHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/example/flutterimagecompress/exception/CompressError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    sget-object v2, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_3
    invoke-virtual {p0, v0}, Lcom/example/flutterimagecompress/core/CompressListHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lcom/example/flutterimagecompress/exception/CompressError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    sget-object v2, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/example/flutterimagecompress/exception/CompressError;->printStackTrace()V

    .line 53
    :cond_4
    invoke-virtual {p0, v0}, Lcom/example/flutterimagecompress/core/CompressListHandler;->reply(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 58
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$SNcdcU1Kp7VVsc9jcwr0kyjvMRc(Lcom/example/flutterimagecompress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/flutterimagecompress/core/CompressListHandler;->handle$lambda-0(Lcom/example/flutterimagecompress/core/CompressListHandler;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handle(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressListHandler$SNcdcU1Kp7VVsc9jcwr0kyjvMRc;

    invoke-direct {v1, p0, p1}, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressListHandler$SNcdcU1Kp7VVsc9jcwr0kyjvMRc;-><init>(Lcom/example/flutterimagecompress/core/CompressListHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
