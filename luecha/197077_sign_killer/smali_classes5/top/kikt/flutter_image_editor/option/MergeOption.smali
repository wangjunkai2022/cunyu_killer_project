.class public final Ltop/kikt/flutter_image_editor/option/MergeOption;
.super Ljava/lang/Object;
.source "MergeOption.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/MergeOption;",
        "",
        "map",
        "",
        "(Ljava/util/Map;)V",
        "formatOption",
        "Ltop/kikt/flutter_image_editor/option/FormatOption;",
        "getFormatOption",
        "()Ltop/kikt/flutter_image_editor/option/FormatOption;",
        "height",
        "",
        "getHeight",
        "()I",
        "images",
        "",
        "Ltop/kikt/flutter_image_editor/option/MergeImage;",
        "getImages",
        "()Ljava/util/List;",
        "width",
        "getWidth",
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
.field private final formatOption:Ltop/kikt/flutter_image_editor/option/FormatOption;

.field private final height:I

.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/MergeImage;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FormatOption;

    const-string v1, "fmt"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ltop/kikt/flutter_image_editor/option/FormatOption;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->formatOption:Ltop/kikt/flutter_image_editor/option/FormatOption;

    const-string v0, "w"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->width:I

    const-string v0, "h"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->height:I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "images"

    .line 15
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 18
    new-instance v2, Ltop/kikt/flutter_image_editor/option/MergeImage;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Ltop/kikt/flutter_image_editor/option/MergeImage;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->images:Ljava/util/List;

    return-void

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getFormatOption()Ltop/kikt/flutter_image_editor/option/FormatOption;
    .locals 1

    .line 6
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->formatOption:Ltop/kikt/flutter_image_editor/option/FormatOption;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 11
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->height:I

    return v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/MergeImage;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->images:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 10
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/MergeOption;->width:I

    return v0
.end method
