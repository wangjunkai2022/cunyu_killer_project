.class public abstract Ltop/kikt/flutter_image_editor/option/draw/TransferValue;
.super Ljava/lang/Object;
.source "DrawOption.kt"

# interfaces
.implements Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/TransferValue;",
        "Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "getMap",
        "()Ljava/util/Map;",
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
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field


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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/option/draw/TransferValue;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public convertMapToOffset(Ljava/util/Map;)Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 45
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;

    invoke-static {v0, p1}, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue$DefaultImpls;->convertMapToOffset(Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;Ljava/util/Map;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 1

    .line 45
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;

    invoke-static {v0, p1}, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue$DefaultImpls;->getColor(Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/draw/TransferValue;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getOffset(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 1

    .line 45
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;

    invoke-static {v0, p1}, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue$DefaultImpls;->getOffset(Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1

    .line 45
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;

    invoke-static {v0, p1}, Ltop/kikt/flutter_image_editor/option/draw/ITransferValue$DefaultImpls;->getRect(Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
