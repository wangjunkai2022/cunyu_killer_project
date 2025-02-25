.class public Lio/flutter/embedding/android/FlutterImageView;
.super Landroid/view/View;
.source "FlutterImageView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageView"


# instance fields
.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentImage:Landroid/media/Image;

.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private imageReader:Landroid/media/ImageReader;

.field private isAttachedToFlutterRenderer:Z

.field private kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 78
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V
    .locals 0

    .line 74
    invoke-static {p2, p3}, Lio/flutter/embedding/android/FlutterImageView;->createImageReader(II)Landroid/media/ImageReader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    .line 89
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 90
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    .line 91
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    sget-object p2, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, p2}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method private closeCurrentImage()V
    .locals 1

    .line 247
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    :cond_0
    return-void
.end method

.method private static createImageReader(II)Landroid/media/ImageReader;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "ImageReader width must be greater than 0, but given width=%d, set width=1"

    invoke-static {p0, v2}, Lio/flutter/embedding/android/FlutterImageView;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p0

    :goto_0
    if-gtz p1, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "ImageReader height must be greater than 0, but given height=%d, set height=1"

    invoke-static {p1, p0}, Lio/flutter/embedding/android/FlutterImageView;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p1

    .line 114
    :goto_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x300

    .line 115
    invoke-static/range {v3 .. v8}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x3

    .line 122
    invoke-static {v3, v4, v1, p0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    return-void
.end method

.method private static varargs logW(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlutterImageView"

    invoke-static {p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentBitmap()V
    .locals 4

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 257
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 258
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 261
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 265
    aget-object v0, v0, v1

    .line 266
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    div-int/2addr v1, v2

    .line 267
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 269
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 271
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 272
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 273
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_3
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 278
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Z
    .locals 2

    .line 188
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    .line 201
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    .line 202
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->invalidate()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    .line 143
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$1;->$SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind:[I

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->swapSurface(Landroid/view/Surface;)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    .line 153
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 154
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    return-void
.end method

.method public closeImageReader()V
    .locals 1

    .line 231
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public detachFromRenderer()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    .line 168
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->acquireLatestImage()Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    .line 174
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->invalidate()V

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 236
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 237
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->updateCurrentBitmap()V

    .line 240
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 284
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getHeight()I

    move-result p3

    if-ne p2, p3, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    sget-object p4, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    if-ne p3, p4, :cond_1

    iget-boolean p3, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    if-eqz p3, :cond_1

    .line 291
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/android/FlutterImageView;->resizeIfNeeded(II)V

    .line 294
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object p2, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->swapSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resizeIfNeeded(II)V
    .locals 1

    .line 209
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    .line 220
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeImageReader()V

    .line 221
    invoke-static {p1, p2}, Lio/flutter/embedding/android/FlutterImageView;->createImageReader(II)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    return-void
.end method
