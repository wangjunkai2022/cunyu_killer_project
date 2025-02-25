.class public final Lcom/afollestad/materialdialogs/utils/IntArraysKt;
.super Ljava/lang/Object;
.source "IntArrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntArrays.kt\ncom/afollestad/materialdialogs/utils/IntArraysKt\n*L\n1#1,28:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u001a\u001a\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "appendAll",
        "",
        "values",
        "",
        "",
        "removeAll",
        "core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final appendAll([ILjava/util/Collection;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const-string v0, "$this$appendAll"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object p0

    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p0, Ljava/util/Collection;

    .line 21
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public static final removeAll([ILjava/util/Collection;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const-string v0, "$this$removeAll"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/afollestad/materialdialogs/utils/IntArraysKt$removeAll$$inlined$apply$lambda$1;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/utils/IntArraysKt$removeAll$$inlined$apply$lambda$1;-><init>(Ljava/util/Collection;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    check-cast p0, Ljava/util/Collection;

    .line 26
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method
