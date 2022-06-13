.class public final synthetic Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$gR3gOM0IDkGmS1EsHrGbt6W0e_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroidx/window/embedding/EmbeddingAdapter;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$gR3gOM0IDkGmS1EsHrGbt6W0e_A;->f$0:Landroidx/window/embedding/EmbeddingAdapter;

    iput-object p2, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$gR3gOM0IDkGmS1EsHrGbt6W0e_A;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$gR3gOM0IDkGmS1EsHrGbt6W0e_A;->f$0:Landroidx/window/embedding/EmbeddingAdapter;

    iget-object v1, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$gR3gOM0IDkGmS1EsHrGbt6W0e_A;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Landroidx/window/embedding/EmbeddingAdapter;->lambda$gR3gOM0IDkGmS1EsHrGbt6W0e_A(Landroidx/window/embedding/EmbeddingAdapter;Ljava/util/Set;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
