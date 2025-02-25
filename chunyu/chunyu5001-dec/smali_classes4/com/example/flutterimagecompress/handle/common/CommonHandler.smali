.class public final Lcom/example/flutterimagecompress/handle/common/CommonHandler;
.super Ljava/lang/Object;
.source "CommonHandler.kt"

# interfaces
.implements Lcom/example/flutterimagecompress/handle/FormatHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J:\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0002JP\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016JX\u0010 \u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/handle/common/CommonHandler;",
        "Lcom/example/flutterimagecompress/handle/FormatHandler;",
        "type",
        "",
        "(I)V",
        "bitmapFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "getBitmapFormat",
        "()Landroid/graphics/Bitmap$CompressFormat;",
        "getType",
        "()I",
        "typeName",
        "",
        "getTypeName",
        "()Ljava/lang/String;",
        "compress",
        "",
        "arr",
        "minWidth",
        "minHeight",
        "quality",
        "rotate",
        "inSampleSize",
        "handleByteArray",
        "",
        "context",
        "Landroid/content/Context;",
        "byteArray",
        "outputStream",
        "Ljava/io/OutputStream;",
        "keepExif",
        "",
        "handleFile",
        "path",
        "numberOfRetries",
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
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->type:I

    return-void
.end method

.method private final compress([BIIIII)[B
    .locals 5

    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    iput p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-ge p6, v3, :cond_0

    .line 59
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 62
    :cond_0
    array-length p6, p1

    invoke-static {p1, v1, p6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 63
    new-instance p6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "src width = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "src height = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "bitmap"

    .line 71
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/example/flutterimagecompress/ext/BitmapCompressExtKt;->calcScale(Landroid/graphics/Bitmap;II)F

    move-result p2

    .line 73
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v3, "scale = "

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    div-float/2addr v0, p2

    div-float/2addr v1, p2

    .line 78
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "dst width = "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "dst height = "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/example/flutterimagecompress/logger/LogExtKt;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    float-to-int p2, v0

    float-to-int p3, v1

    .line 81
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createScaledBitmap(bitma\u2026t(), destH.toInt(), true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p1, p5}, Lcom/example/flutterimagecompress/ext/BitmapCompressExtKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 83
    invoke-direct {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getBitmapFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    move-object p3, p6

    check-cast p3, Ljava/io/OutputStream;

    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {p6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "outputStream.toByteArray()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic compress$default(Lcom/example/flutterimagecompress/handle/common/CommonHandler;[BIIIIIILjava/lang/Object;)[B
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->compress([BIIIII)[B

    move-result-object p0

    return-object p0
.end method

.method private final getBitmapFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "jpeg"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "webp"

    goto :goto_0

    :cond_1
    const-string v0, "png"

    :goto_0
    return-object v0
.end method

.method public handleByteArray(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V
    .locals 10

    move-object v0, p1

    move-object v8, p2

    move-object v9, p3

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "byteArray"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outputStream"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->compress([BIIIII)[B

    move-result-object v1

    if-eqz p8, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getBitmapFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v2, v3, :cond_0

    .line 39
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 41
    new-instance v1, Lcom/example/flutterimagecompress/exif/ExifKeeper;

    invoke-direct {v1, p2}, Lcom/example/flutterimagecompress/exif/ExifKeeper;-><init>([B)V

    invoke-virtual {v1, p1, v2}, Lcom/example/flutterimagecompress/exif/ExifKeeper;->writeToOutputStream(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V
    .locals 14

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v0, p9

    const-string v4, "context"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "path"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "outputStream"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p10, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    .line 92
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x0

    .line 93
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_1

    .line 98
    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 100
    :cond_1
    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v5, "bitmap"

    .line 102
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getType()I

    move-result v13

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v8 .. v13}, Lcom/example/flutterimagecompress/ext/BitmapCompressExtKt;->compress(Landroid/graphics/Bitmap;IIIII)[B

    move-result-object v5

    if-eqz p8, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->getBitmapFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v6, v7, :cond_2

    .line 105
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    new-instance v5, Lcom/example/flutterimagecompress/exif/ExifKeeper;

    invoke-direct {v5, v2}, Lcom/example/flutterimagecompress/exif/ExifKeeper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, v6}, Lcom/example/flutterimagecompress/exif/ExifKeeper;->writeToOutputStream(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, p10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 117
    invoke-virtual/range {v0 .. v10}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    :goto_0
    return-void
.end method
