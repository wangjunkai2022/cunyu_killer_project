.class public final Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;
.super Ltop/kikt/flutter_image_editor/option/draw/PathPart;
.source "PathPart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0004\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/PathPart;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "rect",
        "Landroid/graphics/Rect;",
        "getRect",
        "()Landroid/graphics/Rect;",
        "start",
        "",
        "getStart",
        "()Ljava/lang/Number;",
        "sweep",
        "getSweep",
        "useCenter",
        "",
        "getUseCenter",
        "()Z",
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
.field private final rect:Landroid/graphics/Rect;

.field private final start:Ljava/lang/Number;

.field private final sweep:Ljava/lang/Number;

.field private final useCenter:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/PathPart;-><init>(Ljava/util/Map;)V

    const-string v0, "rect"

    .line 55
    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->rect:Landroid/graphics/Rect;

    const-string v0, "start"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->start:Ljava/lang/Number;

    const-string v0, "sweep"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->sweep:Ljava/lang/Number;

    const-string v0, "useCenter"

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->useCenter:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getRect()Landroid/graphics/Rect;
    .locals 1

    .line 55
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getStart()Ljava/lang/Number;
    .locals 1

    .line 56
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->start:Ljava/lang/Number;

    return-object v0
.end method

.method public final getSweep()Ljava/lang/Number;
    .locals 1

    .line 57
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->sweep:Ljava/lang/Number;

    return-object v0
.end method

.method public final getUseCenter()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Ltop/kikt/flutter_image_editor/option/draw/ArcToPathPart;->useCenter:Z

    return v0
.end method
