.class public abstract Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;
.super Ljava/lang/Object;
.source "SVGABitmapDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGABitmapDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGABitmapDecoder.kt\ncom/opensource/svgaplayer/bitmap/SVGABitmapDecoder\n*L\n1#1,35:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J%\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u001f\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;",
        "T",
        "",
        "()V",
        "decodeBitmapFrom",
        "Landroid/graphics/Bitmap;",
        "data",
        "reqWidth",
        "",
        "reqHeight",
        "(Ljava/lang/Object;II)Landroid/graphics/Bitmap;",
        "onDecode",
        "ops",
        "Landroid/graphics/BitmapFactory$Options;",
        "(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 19
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 22
    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v3, :cond_1

    return-object v2

    .line 27
    :cond_1
    sget-object v2, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    invoke-virtual {v2, v0, p2, p3}, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->calculate(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public abstract onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
