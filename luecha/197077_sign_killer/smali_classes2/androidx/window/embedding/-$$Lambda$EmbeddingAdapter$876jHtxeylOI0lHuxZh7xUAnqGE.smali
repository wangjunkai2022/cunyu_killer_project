.class public final synthetic Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$876jHtxeylOI0lHuxZh7xUAnqGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$876jHtxeylOI0lHuxZh7xUAnqGE;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/-$$Lambda$EmbeddingAdapter$876jHtxeylOI0lHuxZh7xUAnqGE;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->lambda$876jHtxeylOI0lHuxZh7xUAnqGE(Ljava/util/Set;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
