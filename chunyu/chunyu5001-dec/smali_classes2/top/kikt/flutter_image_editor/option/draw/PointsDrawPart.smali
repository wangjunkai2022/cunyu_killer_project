.class public final Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;
.super Ltop/kikt/flutter_image_editor/option/draw/DrawPart;
.source "DrawPart.kt"

# interfaces
.implements Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "offsets",
        "",
        "Landroid/graphics/Point;",
        "getOffsets",
        "()Ljava/util/List;",
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

    .line 29
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/DrawPart;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getOffsets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p0}, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "offset"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 35
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 36
    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;->convertMapToOffset(Ljava/util/Map;)Landroid/graphics/Point;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 29
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;

    invoke-static {v0}, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint$DefaultImpls;->getPaint(Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
