.class public final Lcom/example/flutterimagecompress/core/CompressFileHandler;
.super Lcom/example/flutterimagecompress/core/ResultHandler;
.source "CompressFileHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/core/CompressFileHandler;",
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
        "handleGetFile",
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

    .line 14
    invoke-direct {p0, p2}, Lcom/example/flutterimagecompress/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object p1, p0, Lcom/example/flutterimagecompress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    return-void
.end method

.method private static final handle$lambda-0(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v1, Lcom/example/flutterimagecompress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 21
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    .line 22
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v7, 0x4

    .line 23
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x5

    .line 24
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x6

    .line 25
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x7

    .line 26
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/16 v12, 0x8

    .line 27
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x9

    .line 28
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    sget-object v13, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    invoke-virtual {v13, v10}, Lcom/example/flutterimagecompress/format/FormatRegister;->findFormat(I)Lcom/example/flutterimagecompress/handle/FormatHandler;

    move-result-object v10

    const/4 v13, 0x0

    if-nez v10, :cond_0

    const-string v0, "No support format."

    .line 33
    invoke-static {v1, v0}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v1, v13}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v9, :cond_1

    .line 40
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v2

    .line 41
    sget-object v9, Lcom/example/flutterimagecompress/exif/Exif;->INSTANCE:Lcom/example/flutterimagecompress/exif/Exif;

    invoke-virtual {v9, v2}, Lcom/example/flutterimagecompress/exif/Exif;->getRotationDegrees([B)I

    move-result v2

    :cond_1
    const/16 v9, 0x5a

    if-eq v2, v9, :cond_2

    const/16 v9, 0x10e

    if-eq v2, v9, :cond_2

    move v9, v6

    move v6, v5

    goto :goto_0

    :cond_2
    move v9, v5

    :goto_0
    add-int v14, v7, v2

    .line 52
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    :try_start_0
    move-object v5, v15

    check-cast v5, Ljava/io/OutputStream;

    move-object v2, v10

    move-object/from16 v3, p1

    move v7, v9

    move v9, v14

    move v10, v11

    move v11, v12

    move v12, v0

    invoke-interface/range {v2 .. v12}, Lcom/example/flutterimagecompress/handle/FormatHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 55
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_1
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    sget-object v2, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_3
    invoke-virtual {v1, v13}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 60
    :goto_3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final handleGetFile$lambda-1(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, v1, Lcom/example/flutterimagecompress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    .line 71
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v7, 0x4

    .line 72
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    const/4 v7, 0x5

    .line 73
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x6

    .line 74
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v2

    .line 78
    sget-object v9, Lcom/example/flutterimagecompress/exif/Exif;->INSTANCE:Lcom/example/flutterimagecompress/exif/Exif;

    invoke-virtual {v9, v2}, Lcom/example/flutterimagecompress/exif/Exif;->getRotationDegrees([B)I

    move-result v2

    :cond_0
    const/4 v9, 0x7

    .line 84
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x8

    .line 85
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/16 v11, 0x9

    .line 86
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xa

    .line 87
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 89
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    invoke-virtual {v0, v9}, Lcom/example/flutterimagecompress/format/FormatRegister;->findFormat(I)Lcom/example/flutterimagecompress/handle/FormatHandler;

    move-result-object v0

    const/4 v14, 0x0

    if-nez v0, :cond_1

    const-string v0, "No support format."

    .line 92
    invoke-static {v1, v0}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v1, v14}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 v9, 0x5a

    if-eq v2, v9, :cond_2

    const/16 v9, 0x10e

    if-eq v2, v9, :cond_2

    move v9, v6

    move v6, v5

    goto :goto_0

    :cond_2
    move v9, v5

    :goto_0
    add-int v15, v7, v2

    .line 106
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v16, v2

    check-cast v16, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, v16

    move v7, v9

    move v9, v15

    .line 107
    :try_start_1
    invoke-interface/range {v2 .. v12}, Lcom/example/flutterimagecompress/handle/FormatHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 108
    invoke-virtual {v1, v13}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v14

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v16, v14

    .line 110
    :goto_1
    :try_start_2
    sget-object v2, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_4
    invoke-virtual {v1, v14}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v16, :cond_3

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-nez v16, :cond_5

    goto :goto_4

    .line 113
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :goto_4
    throw v0

    .line 67
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$10DLAIe-9l-ymy--q9wejb25oKg(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->handle$lambda-0(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$o5P4Agkaq-MTJWgjE0ux4K8-TC0(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->handleGetFile$lambda-1(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handle(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressFileHandler$10DLAIe-9l-ymy--q9wejb25oKg;

    invoke-direct {v1, p0, p1}, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressFileHandler$10DLAIe-9l-ymy--q9wejb25oKg;-><init>(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final handleGetFile(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressFileHandler$o5P4Agkaq-MTJWgjE0ux4K8-TC0;

    invoke-direct {v1, p0, p1}, Lcom/example/flutterimagecompress/core/-$$Lambda$CompressFileHandler$o5P4Agkaq-MTJWgjE0ux4K8-TC0;-><init>(Lcom/example/flutterimagecompress/core/CompressFileHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
