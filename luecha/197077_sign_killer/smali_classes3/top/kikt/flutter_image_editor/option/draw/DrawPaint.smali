.class public final Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;
.super Ltop/kikt/flutter_image_editor/option/draw/TransferValue;
.source "DrawPart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;",
        "Ltop/kikt/flutter_image_editor/option/draw/TransferValue;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "getPaint",
        "Landroid/graphics/Paint;",
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/TransferValue;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getPaint()Landroid/graphics/Paint;
    .locals 3

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "color"

    .line 14
    invoke-virtual {p0, v1}, Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {p0}, Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "lineWeight"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    invoke-virtual {p0}, Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "paintStyleFill"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
