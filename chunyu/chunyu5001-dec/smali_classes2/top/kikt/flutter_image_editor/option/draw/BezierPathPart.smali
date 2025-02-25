.class public final Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;
.super Ltop/kikt/flutter_image_editor/option/draw/PathPart;
.source "PathPart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;",
        "Ltop/kikt/flutter_image_editor/option/draw/PathPart;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "control1",
        "Landroid/graphics/Point;",
        "getControl1",
        "()Landroid/graphics/Point;",
        "control2",
        "getControl2",
        "kind",
        "",
        "getKind",
        "()I",
        "target",
        "getTarget",
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
.field private final control1:Landroid/graphics/Point;

.field private final control2:Landroid/graphics/Point;

.field private final kind:I

.field private final target:Landroid/graphics/Point;


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

    .line 47
    invoke-direct {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/PathPart;-><init>(Ljava/util/Map;)V

    const-string v0, "kind"

    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->kind:I

    const-string p1, "target"

    .line 49
    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getOffset(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->target:Landroid/graphics/Point;

    const-string p1, "c1"

    .line 50
    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getOffset(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->control1:Landroid/graphics/Point;

    .line 51
    iget p1, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->kind:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "c2"

    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->getOffset(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->control2:Landroid/graphics/Point;

    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getControl1()Landroid/graphics/Point;
    .locals 1

    .line 50
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->control1:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getControl2()Landroid/graphics/Point;
    .locals 1

    .line 51
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->control2:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getKind()I
    .locals 1

    .line 48
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->kind:I

    return v0
.end method

.method public final getTarget()Landroid/graphics/Point;
    .locals 1

    .line 49
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;->target:Landroid/graphics/Point;

    return-object v0
.end method
