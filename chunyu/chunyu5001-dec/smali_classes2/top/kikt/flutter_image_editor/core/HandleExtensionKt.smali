.class public final Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;
.super Ljava/lang/Object;
.source "HandleExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007\u001a\u0016\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\t\u001a\u0016\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000b\u001a\u0016\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\r\u001a\u0012\u0010\u000e\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "drawLine",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawPart",
        "Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;",
        "drawOval",
        "Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;",
        "drawPath",
        "Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;",
        "drawPoints",
        "Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;",
        "drawRect",
        "Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;",
        "draw",
        "Landroid/graphics/Bitmap;",
        "option",
        "Ltop/kikt/flutter_image_editor/option/draw/DrawOption;",
        "image_editor_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final draw(Landroid/graphics/Bitmap;Ltop/kikt/flutter_image_editor/option/draw/DrawOption;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/DrawOption;->getDrawPart()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/DrawPart;

    .line 16
    instance-of v2, p1, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;

    if-eqz v2, :cond_1

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;

    invoke-static {v1, p1}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->drawLine(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;)V

    goto :goto_0

    .line 17
    :cond_1
    instance-of v2, p1, Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;

    if-eqz v2, :cond_2

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;

    invoke-static {v1, p1}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->drawRect(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;)V

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, p1, Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;

    if-eqz v2, :cond_3

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;

    invoke-static {v1, p1}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->drawOval(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of v2, p1, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;

    if-eqz v2, :cond_4

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;

    invoke-static {v1, p1}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->drawPoints(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;)V

    goto :goto_0

    .line 20
    :cond_4
    instance-of v2, p1, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;

    if-eqz v2, :cond_0

    check-cast p1, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;

    invoke-static {v1, p1}, Ltop/kikt/flutter_image_editor/core/HandleExtensionKt;->drawPath(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;)V

    goto :goto_0

    :cond_5
    const-string p0, "newBitmap"

    .line 24
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final drawLine(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;)V
    .locals 6

    .line 89
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getStart()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    .line 92
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getStart()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    .line 93
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getEnd()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    .line 94
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getEnd()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v4, p1

    move-object v0, p0

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static final drawOval(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawPart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/OvalDrawPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static final drawPath(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawPart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 29
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->getAutoClose()Z

    move-result v8

    .line 30
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->getPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/kikt/flutter_image_editor/option/draw/PathPart;

    .line 32
    instance-of v2, v1, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;

    if-eqz v2, :cond_1

    .line 33
    check-cast v1, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 35
    :cond_1
    instance-of v2, v1, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;

    if-eqz v2, :cond_2

    .line 36
    check-cast v1, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 38
    :cond_2
    instance-of v2, v1, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;

    if-eqz v2, :cond_3

    .line 39
    new-instance v2, Landroid/graphics/RectF;

    check-cast v1, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->getStart()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->getSweep()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->getUseCenter()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_0

    .line 42
    :cond_3
    instance-of v2, v1, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;

    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getKind()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 45
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl1()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 46
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl1()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 47
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getTarget()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    .line 48
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getTarget()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 44
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_0

    .line 50
    :cond_4
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getKind()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 52
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl1()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 53
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl1()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 54
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl2()Landroid/graphics/Point;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    .line 55
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getControl2()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    .line 56
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getTarget()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 57
    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getTarget()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v1

    move-object v1, v0

    .line 51
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0

    :cond_5
    if-eqz v8, :cond_6

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 68
    :cond_6
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static final drawPoints(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawPart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;->getOffsets()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 75
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final drawRect(Landroid/graphics/Canvas;Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawPart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/draw/RectDrawPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
