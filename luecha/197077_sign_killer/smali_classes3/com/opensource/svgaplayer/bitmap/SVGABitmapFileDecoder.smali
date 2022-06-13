.class public final Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;
.super Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;
.source "SVGABitmapFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder<",
        "Ljava/lang/String;",
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;",
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;",
        "",
        "()V",
        "onDecode",
        "Landroid/graphics/Bitmap;",
        "data",
        "ops",
        "Landroid/graphics/BitmapFactory$Options;",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->onDecode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onDecode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ops"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
