.class public final Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;
.super Ljava/lang/Object;
.source "FlutterImageEditorPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlutterImageEditorPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlutterImageEditorPlugin.kt\ntop/kikt/flutter_image_editor/FlutterImageEditorPlugin\n+ 2 FlutterImageEditorPlugin.kt\ntop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion\n*L\n1#1,221:1\n37#2,4:222\n*S KotlinDebug\n*F\n+ 1 FlutterImageEditorPlugin.kt\ntop/kikt/flutter_image_editor/FlutterImageEditorPlugin\n*L\n55#1:222,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J4\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J \u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0012\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u000c\u0010#\u001a\u00020\u001e*\u00020\tH\u0002J\u000c\u0010$\u001a\u00020\u0011*\u00020\tH\u0002J\u000e\u0010%\u001a\u0004\u0018\u00010&*\u00020\tH\u0002J\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(*\u00020\t2\u0006\u0010*\u001a\u00020\u001eH\u0002J\u000e\u0010+\u001a\u0004\u0018\u00010\u0013*\u00020\tH\u0002J\u000e\u0010,\u001a\u0004\u0018\u00010\u0013*\u00020\tH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "()V",
        "applicationContext",
        "Landroid/content/Context;",
        "handle",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "resultHandler",
        "Ltop/kikt/flutter_image_editor/core/ResultHandler;",
        "outputMemory",
        "",
        "imageHandler",
        "Ltop/kikt/flutter_image_editor/core/ImageHandler;",
        "formatOption",
        "Ltop/kikt/flutter_image_editor/option/FormatOption;",
        "targetPath",
        "",
        "handleMerge",
        "memory",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "wrapperBitmapWrapper",
        "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "exifInterface",
        "Landroidx/exifinterface/media/ExifInterface;",
        "getBitmap",
        "getFormatOption",
        "getMemory",
        "",
        "getOptions",
        "",
        "Ltop/kikt/flutter_image_editor/option/Option;",
        "bitmapWrapper",
        "getSrc",
        "getTarget",
        "Companion",
        "image_editor_release"
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
.field public static final Companion:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;

.field private static final channelName:Ljava/lang/String; = "top.kikt/flutter_image_editor"

.field private static final threadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->Companion:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getThreadPool$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 28
    sget-object v0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$handle(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->handle(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    return-void
.end method

.method public static final synthetic access$handleMerge(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->handleMerge(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    return-void
.end method

.method private final getBitmap(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;
    .locals 4

    .line 140
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getSrc(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitmap"

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 144
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->wrapperBitmapWrapper(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getMemory(Lio/flutter/plugin/common/MethodCall;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 150
    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 152
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->wrapperBitmapWrapper(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    move-result-object p1

    return-object p1

    .line 155
    :cond_1
    new-instance p1, Ltop/kikt/flutter_image_editor/error/BitmapDecodeException;

    invoke-direct {p1}, Ltop/kikt/flutter_image_editor/error/BitmapDecodeException;-><init>()V

    throw p1
.end method

.method private final getFormatOption(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/option/FormatOption;
    .locals 1

    .line 196
    sget-object v0, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->INSTANCE:Ltop/kikt/flutter_image_editor/util/ConvertUtils;

    invoke-virtual {v0, p1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getFormatOption(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/option/FormatOption;

    move-result-object p1

    return-object p1
.end method

.method private final getMemory(Lio/flutter/plugin/common/MethodCall;)[B
    .locals 1

    const-string v0, "image"

    .line 136
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method private final getOptions(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/BitmapWrapper;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodCall;",
            "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;",
            ")",
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/Option;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    .line 131
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "this.argument<List<Any>>(\"options\")!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 132
    sget-object v0, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->INSTANCE:Ltop/kikt/flutter_image_editor/util/ConvertUtils;

    invoke-virtual {v0, p1, p2}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->convertMapOption(Ljava/util/List;Ltop/kikt/flutter_image_editor/core/BitmapWrapper;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getSrc(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    .line 123
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final getTarget(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;
    .locals 1

    const-string v0, "target"

    .line 127
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final handle(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V
    .locals 7

    .line 215
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getBitmap(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    move-result-object v0

    .line 216
    new-instance v2, Ltop/kikt/flutter_image_editor/core/ImageHandler;

    invoke-virtual {v0}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/core/ImageHandler;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    invoke-direct {p0, p1, v0}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getOptions(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/BitmapWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handle(Ljava/util/List;)V

    .line 218
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getFormatOption(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/option/FormatOption;

    move-result-object v3

    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->getTarget(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->handle(Ltop/kikt/flutter_image_editor/core/ImageHandler;Ltop/kikt/flutter_image_editor/option/FormatOption;ZLtop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;)V

    return-void
.end method

.method private final handle(Ltop/kikt/flutter_image_editor/core/ImageHandler;Ltop/kikt/flutter_image_editor/option/FormatOption;ZLtop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 202
    invoke-virtual {p1, p2}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->outputByteArray(Ltop/kikt/flutter_image_editor/option/FormatOption;)[B

    move-result-object p1

    .line 203
    invoke-virtual {p4, p1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    const/4 p1, 0x0

    .line 206
    invoke-virtual {p4, p1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1, p5, p2}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->outputToFile(Ljava/lang/String;Ltop/kikt/flutter_image_editor/option/FormatOption;)V

    .line 209
    invoke-virtual {p4, p5}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic handle$default(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Ltop/kikt/flutter_image_editor/core/ImageHandler;Ltop/kikt/flutter_image_editor/option/FormatOption;ZLtop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 200
    invoke-direct/range {v0 .. v5}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->handle(Ltop/kikt/flutter_image_editor/core/ImageHandler;Ltop/kikt/flutter_image_editor/option/FormatOption;ZLtop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;)V

    return-void
.end method

.method private final handleMerge(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V
    .locals 7

    const-string v0, "option"

    .line 102
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/Map;

    .line 103
    new-instance v0, Ltop/kikt/flutter_image_editor/option/MergeOption;

    invoke-direct {v0, p1}, Ltop/kikt/flutter_image_editor/option/MergeOption;-><init>(Ljava/util/Map;)V

    .line 104
    new-instance p1, Ltop/kikt/flutter_image_editor/core/ImageMerger;

    invoke-direct {p1, v0}, Ltop/kikt/flutter_image_editor/core/ImageMerger;-><init>(Ltop/kikt/flutter_image_editor/option/MergeOption;)V

    .line 105
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/core/ImageMerger;->process()[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Cannot merge image."

    move-object v1, p2

    .line 108
    invoke-static/range {v1 .. v6}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->replyError$default(Ltop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p2, p1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0}, Ltop/kikt/flutter_image_editor/option/MergeOption;->getFormatOption()Ltop/kikt/flutter_image_editor/option/FormatOption;

    move-result-object p3

    invoke-virtual {p3}, Ltop/kikt/flutter_image_editor/option/FormatOption;->getFormat()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const-string p3, "jpg"

    goto :goto_0

    :cond_2
    const-string p3, "png"

    .line 116
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 118
    invoke-virtual {p2, p1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final wrapperBitmapWrapper(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;
    .locals 7

    .line 160
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    const-string v5, "Orientation"

    .line 162
    invoke-virtual {p2, v5, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-direct {v0, v4, v3, v1, v2}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :pswitch_1
    move v3, v5

    goto :goto_0

    .line 183
    :pswitch_2
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-direct {v0, v4, v3, v1, v2}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :pswitch_3
    move v3, v6

    goto :goto_0

    .line 179
    :pswitch_4
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-direct {v0, v3, v4, v4, v2}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xb4

    goto :goto_0

    .line 176
    :pswitch_6
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-direct {v0, v4, v3, v1, v2}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    :goto_0
    :pswitch_7
    new-instance p2, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    invoke-direct {p2, p1, v3, v0}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;-><init>(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->applicationContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "top.kikt/flutter_image_editor"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 46
    move-object p1, p0

    check-cast p1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-direct {v0, p2}, Ltop/kikt/flutter_image_editor/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 55
    sget-object p2, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->Companion:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;

    .line 222
    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v1, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;

    invoke-direct {v1, p1, p0, v0}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;-><init>(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Ltop/kikt/flutter_image_editor/core/ResultHandler;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
