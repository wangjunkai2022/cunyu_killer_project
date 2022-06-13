.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;,
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoShapeEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoShapeEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoShapeEntity\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,357:1\n32#2,2:358\n*E\n*S KotlinDebug\n*F\n+ 1 SVGAVideoShapeEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoShapeEntity\n*L\n107#1,2:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001:\u0002./B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u0002\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010\u0002\u001a\u00020(H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R:\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00082\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u001a@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u001e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u00060"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity;",
        "(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V",
        "<set-?>",
        "",
        "",
        "args",
        "getArgs",
        "()Ljava/util/Map;",
        "isKeep",
        "",
        "()Z",
        "shapePath",
        "Landroid/graphics/Path;",
        "getShapePath",
        "()Landroid/graphics/Path;",
        "setShapePath",
        "(Landroid/graphics/Path;)V",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;",
        "styles",
        "getStyles",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;",
        "Landroid/graphics/Matrix;",
        "transform",
        "getTransform",
        "()Landroid/graphics/Matrix;",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;",
        "type",
        "getType",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;",
        "buildPath",
        "",
        "checkAlphaValueRange",
        "",
        "color",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;",
        "Lorg/json/JSONArray;",
        "checkValueRange",
        "parseArgs",
        "parseStyles",
        "parseTransform",
        "parseType",
        "Styles",
        "Type",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private shapePath:Landroid/graphics/Path;

.field private styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

.field private transform:Landroid/graphics/Matrix;

.field private type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 72
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 65
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lorg/json/JSONObject;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lorg/json/JSONObject;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lorg/json/JSONObject;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F
    .locals 1

    .line 216
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    :cond_0
    return v0
.end method

.method private final checkAlphaValueRange(Lorg/json/JSONArray;)F
    .locals 4

    const/4 v0, 0x3

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    const/4 p1, 0x1

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private final checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F
    .locals 3

    .line 206
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 204
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 205
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_2
    cmpg-float p1, v1, v2

    if-gtz p1, :cond_3

    const/high16 p1, 0x437f0000    # 255.0f

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    return p1
.end method

.method private final checkValueRange(Lorg/json/JSONArray;)F
    .locals 5

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    const/4 v2, 0x1

    int-to-double v3, v2

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_0

    .line 142
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private final parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 7

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    const-string v2, "y"

    const-string v3, "x"

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 123
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->x:Ljava/lang/Float;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->y:Ljava/lang/Float;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusX:Ljava/lang/Float;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_2
    const-string v6, "radiusX"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusY:Ljava/lang/Float;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    const-string v5, "radiusY"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_5
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    if-eqz p1, :cond_b

    .line 129
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->x:Ljava/lang/Float;

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->y:Ljava/lang/Float;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->width:Ljava/lang/Float;

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_6
    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->height:Ljava/lang/Float;

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_7
    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->cornerRadius:Ljava/lang/Float;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_8
    const-string v1, "cornerRadius"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_b
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    return-void
.end method

.method private final parseArgs(Lorg/json/JSONObject;)V
    .locals 4

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "args"

    .line 107
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "values.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_1
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private final parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 8

    .line 224
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    if-eqz p1, :cond_17

    .line 225
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    .line 226
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 227
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 228
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v4

    .line 230
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 231
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 232
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 233
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 229
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    .line 236
    :cond_4
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    if-eqz v1, :cond_9

    .line 237
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 238
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v4

    .line 240
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 241
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_5

    :cond_6
    move v5, v2

    :goto_5
    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 242
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 243
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 239
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    .line 247
    :cond_9
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->strokeWidth:Ljava/lang/Float;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    .line 248
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

    const-string v3, "round"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_e

    .line 249
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    goto :goto_9

    :cond_b
    const-string v1, "square"

    .line 252
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_9

    .line 251
    :cond_c
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const-string v1, "butt"

    .line 250
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 255
    :cond_e
    :goto_9
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    if-eqz v1, :cond_12

    .line 256
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_11

    if-eq v1, v5, :cond_10

    if-eq v1, v4, :cond_f

    goto :goto_a

    .line 259
    :cond_f
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const-string v1, "miter"

    .line 258
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v1, "bevel"

    .line 257
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 262
    :cond_12
    :goto_a
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->miterLimit:Ljava/lang/Float;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_13
    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    new-array v1, v4, [F

    .line 263
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 264
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashI:Ljava/lang/Float;

    if-eqz v1, :cond_14

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 265
    :cond_14
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashII:Ljava/lang/Float;

    if-eqz v1, :cond_15

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    aput v1, v2, v6

    .line 266
    :cond_15
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashIII:Ljava/lang/Float;

    if-eqz p1, :cond_16

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v1

    aput p1, v1, v5

    .line 267
    :cond_16
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :cond_17
    return-void
.end method

.method private final parseStyles(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "styles"

    move-object/from16 v2, p1

    .line 161
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    const-string v3, "fill"

    .line 163
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v6, :cond_0

    .line 165
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v9

    .line 166
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lorg/json/JSONArray;)F

    move-result v10

    .line 168
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    float-to-double v13, v10

    mul-double/2addr v11, v13

    double-to-int v10, v11

    .line 169
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    float-to-double v13, v9

    mul-double/2addr v11, v13

    double-to-int v9, v11

    .line 170
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    mul-double/2addr v11, v13

    double-to-int v11, v11

    .line 171
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v15

    mul-double v12, v15, v13

    double-to-int v3, v12

    .line 167
    invoke-static {v10, v9, v11, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    :cond_0
    const-string v3, "stroke"

    .line 175
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 177
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v6

    .line 178
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lorg/json/JSONArray;)F

    move-result v9

    .line 180
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    float-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v5, v10

    .line 181
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    float-to-double v11, v6

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 182
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-int v7, v9

    .line 183
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    .line 179
    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    :cond_1
    const-wide/16 v3, 0x0

    const-string v5, "strokeWidth"

    .line 187
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    const-string v5, "lineCap"

    const-string v6, "butt"

    .line 188
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.optString(\"lineCap\", \"butt\")"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    const-string v5, "lineJoin"

    const-string v6, "miter"

    .line 189
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.optString(\"lineJoin\", \"miter\")"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    const-string v5, "miterLimit"

    .line 190
    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    const-string v5, "lineDash"

    .line 191
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [F

    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 193
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_0
    if-ge v8, v5, :cond_2

    .line 194
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v6

    invoke-virtual {v1, v8, v3, v4}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :cond_3
    return-void
.end method

.method private final parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 10

    .line 296
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz p1, :cond_6

    .line 297
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 299
    iget-object v2, p1, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 300
    :goto_0
    iget-object v4, p1, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    .line 301
    :goto_1
    iget-object v6, p1, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v5

    .line 302
    :goto_2
    iget-object v7, p1, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v3

    .line 303
    :goto_3
    iget-object v8, p1, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_4

    :cond_4
    move v8, v5

    .line 304
    :goto_4
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_5

    :cond_5
    move p1, v5

    :goto_5
    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v2, 0x1

    aput v6, v1, v2

    const/4 v2, 0x2

    aput v8, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    aput p1, v1, v2

    const/4 p1, 0x6

    aput v5, v1, p1

    const/4 p1, 0x7

    aput v5, v1, p1

    const/16 p1, 0x8

    aput v3, v1, p1

    .line 314
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 315
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    :cond_6
    return-void
.end method

.method private final parseTransform(Lorg/json/JSONObject;)V
    .locals 16

    const-string v0, "transform"

    move-object/from16 v1, p1

    .line 272
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [F

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v5, "a"

    .line 275
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v9, "b"

    .line 276
    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v11, "c"

    .line 277
    invoke-virtual {v0, v11, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v13, "d"

    .line 278
    invoke-virtual {v0, v13, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v15, "tx"

    .line 279
    invoke-virtual {v0, v15, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v15, "ty"

    move-object/from16 p1, v1

    .line 280
    invoke-virtual {v0, v15, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const/4 v15, 0x0

    double-to-float v5, v5

    aput v5, v2, v15

    const/4 v5, 0x1

    double-to-float v6, v11

    aput v6, v2, v5

    const/4 v5, 0x2

    double-to-float v3, v3

    aput v3, v2, v5

    const/4 v3, 0x3

    double-to-float v4, v9

    aput v4, v2, v3

    const/4 v3, 0x4

    double-to-float v4, v13

    aput v4, v2, v3

    const/4 v3, 0x5

    double-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x6

    double-to-float v1, v7

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v1, v2, v0

    const/16 v0, 0x8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    double-to-float v1, v3

    aput v1, v2, v0

    move-object/from16 v0, p1

    .line 290
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    move-object/from16 v1, p0

    .line 291
    iput-object v0, v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    return-void
.end method

.method private final parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 1

    .line 95
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    if-eqz p1, :cond_4

    .line 96
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 100
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 99
    :cond_1
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    .line 98
    :cond_2
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    .line 97
    :cond_3
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 100
    :goto_0
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :cond_4
    return-void
.end method

.method private final parseType(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "type"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const-string v1, "shape"

    .line 86
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_0
    const-string v1, "rect"

    .line 87
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_1
    const-string v1, "ellipse"

    .line 88
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_2
    const-string v1, "keep"

    .line 89
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final buildPath()V
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 325
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 327
    new-instance v1, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v1, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    goto/16 :goto_c

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const-string v3, "y"

    const-string v4, "x"

    if-ne v0, v1, :cond_d

    .line 330
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_5

    move-object v0, v2

    :cond_5
    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 331
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    instance-of v3, v1, Ljava/lang/Number;

    if-nez v3, :cond_7

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    .line 332
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v3, :cond_8

    const-string v4, "radiusX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v2

    :goto_3
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_9

    move-object v3, v2

    :cond_9
    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_c

    .line 333
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v4, :cond_a

    const-string v5, "radiusY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_a
    move-object v4, v2

    :goto_4
    instance-of v5, v4, Ljava/lang/Number;

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    move-object v2, v4

    :goto_5
    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_c

    .line 334
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 335
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 336
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 337
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 338
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v0, v3

    sub-float v7, v1, v2

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_c

    :cond_c
    return-void

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne v0, v1, :cond_19

    .line 340
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_e
    move-object v0, v2

    :goto_6
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_f

    move-object v0, v2

    :cond_f
    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_18

    .line 341
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v1, :cond_10

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_10
    move-object v1, v2

    :goto_7
    instance-of v3, v1, Ljava/lang/Number;

    if-nez v3, :cond_11

    move-object v1, v2

    :cond_11
    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_18

    .line 342
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v3, :cond_12

    const-string v4, "width"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_12
    move-object v3, v2

    :goto_8
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_13

    move-object v3, v2

    :cond_13
    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_18

    .line 343
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v4, :cond_14

    const-string v5, "height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_9

    :cond_14
    move-object v4, v2

    :goto_9
    instance-of v5, v4, Ljava/lang/Number;

    if-nez v5, :cond_15

    move-object v4, v2

    :cond_15
    check-cast v4, Ljava/lang/Number;

    if-eqz v4, :cond_18

    .line 344
    iget-object v5, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v5, :cond_16

    const-string v6, "cornerRadius"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    :cond_16
    move-object v5, v2

    :goto_a
    instance-of v6, v5, Ljava/lang/Number;

    if-nez v6, :cond_17

    goto :goto_b

    :cond_17
    move-object v2, v5

    :goto_b
    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_18

    .line 345
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 346
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 347
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 348
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 349
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 350
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr v4, v1

    invoke-direct {v6, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v2, v2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_c

    :cond_18
    return-void

    .line 352
    :cond_19
    :goto_c
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    .line 353
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_1a
    return-void
.end method

.method public final getArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    return-object v0
.end method

.method public final getShapePath()Landroid/graphics/Path;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    return-object v0
.end method

.method public final getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    return-object v0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getType()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    return-object v0
.end method

.method public final isKeep()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setShapePath(Landroid/graphics/Path;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    return-void
.end method
