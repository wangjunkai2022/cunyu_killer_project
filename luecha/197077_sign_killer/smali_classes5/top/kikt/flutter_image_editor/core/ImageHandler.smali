.class public final Ltop/kikt/flutter_image_editor/core/ImageHandler;
.super Ljava/lang/Object;
.source "ImageHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0014\u0010\u0011\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020#H\u0002J\u0018\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u000e\u0010)\u001a\u00020*2\u0006\u0010\'\u001a\u00020(J\u0016\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020-2\u0006\u0010\'\u001a\u00020(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/core/ImageHandler;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;)V",
        "drawText",
        "",
        "text",
        "Ltop/kikt/flutter_image_editor/option/Text;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getStaticLayout",
        "Landroid/text/StaticLayout;",
        "textPaint",
        "Landroid/text/TextPaint;",
        "width",
        "",
        "handle",
        "options",
        "",
        "Ltop/kikt/flutter_image_editor/option/Option;",
        "handleClip",
        "option",
        "Ltop/kikt/flutter_image_editor/option/ClipOption;",
        "handleColor",
        "Ltop/kikt/flutter_image_editor/option/ColorOption;",
        "handleFlip",
        "Ltop/kikt/flutter_image_editor/option/FlipOption;",
        "handleMixImage",
        "Ltop/kikt/flutter_image_editor/option/MixImageOpt;",
        "handleRotate",
        "Ltop/kikt/flutter_image_editor/option/RotateOption;",
        "handleScale",
        "Ltop/kikt/flutter_image_editor/option/ScaleOption;",
        "handleText",
        "Ltop/kikt/flutter_image_editor/option/AddTextOpt;",
        "output",
        "outputStream",
        "Ljava/io/OutputStream;",
        "formatOption",
        "Ltop/kikt/flutter_image_editor/option/FormatOption;",
        "outputByteArray",
        "",
        "outputToFile",
        "dstPath",
        "",
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


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final drawText(Ltop/kikt/flutter_image_editor/option/Text;Landroid/graphics/Canvas;)V
    .locals 6

    .line 136
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 137
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getA()I

    move-result v2

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getR()I

    move-result v3

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getG()I

    move-result v4

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getB()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 138
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getFontSizePx()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getFontName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 142
    :try_start_0
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->getFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->getStaticLayout(Ltop/kikt/flutter_image_editor/option/Text;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private final getStaticLayout(Ltop/kikt/flutter_image_editor/option/Text;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 9

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 159
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    const-string p2, "{\n      StaticLayout.Bui\u2026dth\n      ).build()\n    }"

    .line 158
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/Text;->getText()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object p1, v8

    :goto_0
    return-object p1
.end method

.method private final handleClip(Ltop/kikt/flutter_image_editor/option/ClipOption;)Landroid/graphics/Bitmap;
    .locals 7

    .line 102
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ClipOption;->getX()I

    move-result v1

    .line 103
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ClipOption;->getY()I

    move-result v2

    .line 104
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ClipOption;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ClipOption;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(bitmap, x, \u2026tion.height, null, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleColor(Ltop/kikt/flutter_image_editor/option/ColorOption;)Landroid/graphics/Bitmap;
    .locals 4

    .line 108
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 113
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ColorOption;->getMatrix()[F

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    iget-object p1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string p1, "newBitmap"

    .line 117
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final handleFlip(Ltop/kikt/flutter_image_editor/option/FlipOption;)Landroid/graphics/Bitmap;
    .locals 8

    .line 89
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/FlipOption;->getHorizontal()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 91
    :goto_0
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/FlipOption;->getVertical()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 92
    :goto_1
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 95
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 96
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, p1, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string v0, "out"

    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleMixImage(Ltop/kikt/flutter_image_editor/option/MixImageOpt;)Landroid/graphics/Bitmap;
    .locals 10

    .line 36
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getImg()[B

    move-result-object v2

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getImg()[B

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 43
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getPorterDuffMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v5, Landroid/graphics/Xfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getX()I

    move-result v6

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getY()I

    move-result v7

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getX()I

    move-result v8

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getW()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getY()I

    move-result v9

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;->getH()I

    move-result p1

    add-int/2addr v9, p1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const-string p1, "newBitmap"

    .line 48
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final handleRotate(Ltop/kikt/flutter_image_editor/option/RotateOption;)Landroid/graphics/Bitmap;
    .locals 8

    .line 77
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/RotateOption;->getAngle()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 82
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 83
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, p1, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string v0, "out"

    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleScale(Ltop/kikt/flutter_image_editor/option/ScaleOption;)Landroid/graphics/Bitmap;
    .locals 7

    .line 52
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ScaleOption;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ScaleOption;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 55
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 61
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    iget-object v5, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 64
    iget-object v6, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v0, :cond_0

    if-eq v6, p1, :cond_1

    :cond_0
    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    int-to-float p1, p1

    int-to-float v5, v6

    div-float/2addr p1, v5

    .line 68
    invoke-virtual {v4, v0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 71
    :cond_1
    iget-object p1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string p1, "newBitmap"

    .line 73
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final handleText(Ltop/kikt/flutter_image_editor/option/AddTextOpt;)Landroid/graphics/Bitmap;
    .locals 5

    .line 121
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 126
    iget-object v3, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/AddTextOpt;->getTexts()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/kikt/flutter_image_editor/option/Text;

    const-string v3, "text"

    .line 129
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->drawText(Ltop/kikt/flutter_image_editor/option/Text;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string p1, "newBitmap"

    .line 132
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final output(Ljava/io/OutputStream;Ltop/kikt/flutter_image_editor/option/FormatOption;)V
    .locals 4

    .line 179
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    .line 180
    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/option/FormatOption;->getFormat()I

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/option/FormatOption;->getQuality()I

    move-result p2

    invoke-virtual {v2, v3, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v2, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/option/FormatOption;->getQuality()I

    move-result p2

    invoke-virtual {v2, v3, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final handle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltop/kikt/flutter_image_editor/option/Option;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/Option;

    .line 23
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/ColorOption;

    if-eqz v1, :cond_1

    check-cast v0, Ltop/kikt/flutter_image_editor/option/ColorOption;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleColor(Ltop/kikt/flutter_image_editor/option/ColorOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 24
    :cond_1
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/ScaleOption;

    if-eqz v1, :cond_2

    check-cast v0, Ltop/kikt/flutter_image_editor/option/ScaleOption;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleScale(Ltop/kikt/flutter_image_editor/option/ScaleOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 25
    :cond_2
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    if-eqz v1, :cond_3

    check-cast v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleFlip(Ltop/kikt/flutter_image_editor/option/FlipOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 26
    :cond_3
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/ClipOption;

    if-eqz v1, :cond_4

    check-cast v0, Ltop/kikt/flutter_image_editor/option/ClipOption;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleClip(Ltop/kikt/flutter_image_editor/option/ClipOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 27
    :cond_4
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/RotateOption;

    if-eqz v1, :cond_5

    check-cast v0, Ltop/kikt/flutter_image_editor/option/RotateOption;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleRotate(Ltop/kikt/flutter_image_editor/option/RotateOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 28
    :cond_5
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/AddTextOpt;

    if-eqz v1, :cond_6

    check-cast v0, Ltop/kikt/flutter_image_editor/option/AddTextOpt;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleText(Ltop/kikt/flutter_image_editor/option/AddTextOpt;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 29
    :cond_6
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/MixImageOpt;

    if-eqz v1, :cond_7

    check-cast v0, Ltop/kikt/flutter_image_editor/option/MixImageOpt;

    invoke-direct {p0, v0}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->handleMixImage(Ltop/kikt/flutter_image_editor/option/MixImageOpt;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 30
    :cond_7
    instance-of v1, v0, Ltop/kikt/flutter_image_editor/option/draw/DrawOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/DrawOption;

    invoke-static {v1, v0}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->draw(Landroid/graphics/Bitmap;Ltop/kikt/flutter_image_editor/option/draw/DrawOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/core/ImageHandler;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final outputByteArray(Ltop/kikt/flutter_image_editor/option/FormatOption;)[B
    .locals 2

    const-string v0, "formatOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {p0, v1, p1}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->output(Ljava/io/OutputStream;Ltop/kikt/flutter_image_editor/option/FormatOption;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "outputStream.toByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final outputToFile(Ljava/lang/String;Ltop/kikt/flutter_image_editor/option/FormatOption;)V
    .locals 1

    const-string v0, "dstPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 169
    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, v0, p2}, Ltop/kikt/flutter_image_editor/core/ImageHandler;->output(Ljava/io/OutputStream;Ltop/kikt/flutter_image_editor/option/FormatOption;)V

    return-void
.end method
