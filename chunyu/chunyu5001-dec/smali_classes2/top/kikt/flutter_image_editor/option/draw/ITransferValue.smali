.class public interface abstract Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;
.super Ljava/lang/Object;
.source "DrawOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/kikt/flutter_image_editor/option/draw/ITransferValue$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003H\u0016J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;",
        "",
        "map",
        "",
        "getMap",
        "()Ljava/util/Map;",
        "convertMapToOffset",
        "Landroid/graphics/Point;",
        "getColor",
        "",
        "key",
        "",
        "getOffset",
        "getRect",
        "Landroid/graphics/Rect;",
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


# virtual methods
.method public abstract convertMapToOffset(Ljava/util/Map;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method public abstract getColor(Ljava/lang/String;)I
.end method

.method public abstract getMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getOffset(Ljava/lang/String;)Landroid/graphics/Point;
.end method

.method public abstract getRect(Ljava/lang/String;)Landroid/graphics/Rect;
.end method
