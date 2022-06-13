.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Styles"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR$\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR$\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\tR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u001f@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;",
        "",
        "()V",
        "<set-?>",
        "",
        "fill",
        "getFill",
        "()I",
        "setFill$com_opensource_svgaplayer",
        "(I)V",
        "",
        "lineCap",
        "getLineCap",
        "()Ljava/lang/String;",
        "setLineCap$com_opensource_svgaplayer",
        "(Ljava/lang/String;)V",
        "",
        "lineDash",
        "getLineDash",
        "()[F",
        "setLineDash$com_opensource_svgaplayer",
        "([F)V",
        "lineJoin",
        "getLineJoin",
        "setLineJoin$com_opensource_svgaplayer",
        "miterLimit",
        "getMiterLimit",
        "setMiterLimit$com_opensource_svgaplayer",
        "stroke",
        "getStroke",
        "setStroke$com_opensource_svgaplayer",
        "",
        "strokeWidth",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth$com_opensource_svgaplayer",
        "(F)V",
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
.field private fill:I

.field private lineCap:Ljava/lang/String;

.field private lineDash:[F

.field private lineJoin:Ljava/lang/String;

.field private miterLimit:I

.field private stroke:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "butt"

    .line 38
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    const-string v0, "miter"

    .line 41
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 47
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method


# virtual methods
.method public final getFill()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return v0
.end method

.method public final getLineCap()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineDash()[F
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-object v0
.end method

.method public final getLineJoin()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-object v0
.end method

.method public final getMiterLimit()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return v0
.end method

.method public final getStroke()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return v0
.end method

.method public final setFill$com_opensource_svgaplayer(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return-void
.end method

.method public final setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-void
.end method

.method public final setLineDash$com_opensource_svgaplayer([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method

.method public final setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-void
.end method

.method public final setMiterLimit$com_opensource_svgaplayer(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return-void
.end method

.method public final setStroke$com_opensource_svgaplayer(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return-void
.end method

.method public final setStrokeWidth$com_opensource_svgaplayer(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return-void
.end method
