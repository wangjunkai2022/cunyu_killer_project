.class public final Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;
.super Ltop/kikt/flutter_image_editor/option/draw/DrawPart;
.source "DrawPart.kt"

# interfaces
.implements Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "end",
        "Landroid/graphics/Point;",
        "getEnd",
        "()Landroid/graphics/Point;",
        "start",
        "getStart",
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
.field private final end:Landroid/graphics/Point;

.field private final start:Landroid/graphics/Point;


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

    .line 22
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/DrawPart;-><init>(Ljava/util/Map;)V

    const-string p1, "start"

    .line 24
    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getOffset(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->start:Landroid/graphics/Point;

    const-string p1, "end"

    .line 25
    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->getOffset(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->end:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final getEnd()Landroid/graphics/Point;
    .locals 1

    .line 25
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 22
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;

    invoke-static {v0}, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint$DefaultImpls;->getPaint(Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final getStart()Landroid/graphics/Point;
    .locals 1

    .line 24
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/LineDrawPart;->start:Landroid/graphics/Point;

    return-object v0
.end method
