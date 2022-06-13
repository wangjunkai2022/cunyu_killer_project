.class public final Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;
.super Ltop/kikt/flutter_image_editor/option/draw/DrawPart;
.source "PathPart.kt"

# interfaces
.implements Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "autoClose",
        "",
        "getAutoClose",
        "()Z",
        "paths",
        "",
        "Ltop/kikt/flutter_image_editor/option/draw/PathPart;",
        "getPaths",
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


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/draw/PathPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/DrawPart;-><init>(Ljava/util/Map;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "parts"

    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 16
    check-cast v1, Ljava/util/Map;

    const-string v2, "key"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    .line 17
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/util/Map;

    const-string v3, "move"

    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;-><init>(Ljava/util/Map;)V

    check-cast v2, Ltop/kikt/flutter_image_editor/option/draw/PathPart;

    goto :goto_1

    :cond_1
    const-string v3, "lineTo"

    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/option/draw/LineToPathPart;-><init>(Ljava/util/Map;)V

    check-cast v2, Ltop/kikt/flutter_image_editor/option/draw/PathPart;

    goto :goto_1

    :cond_2
    const-string v3, "bezier"

    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;-><init>(Ljava/util/Map;)V

    check-cast v2, Ltop/kikt/flutter_image_editor/option/draw/PathPart;

    goto :goto_1

    :cond_3
    const-string v3, "arcTo"

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;-><init>(Ljava/util/Map;)V

    check-cast v2, Ltop/kikt/flutter_image_editor/option/draw/PathPart;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->paths:Ljava/util/List;

    return-void

    .line 12
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getAutoClose()Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "autoClose"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 3
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;

    invoke-static {v0}, Ltop/kikt/flutter_image_editor/option/draw/IHavePaint$DefaultImpls;->getPaint(Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/draw/PathPart;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;->paths:Ljava/util/List;

    return-object v0
.end method
