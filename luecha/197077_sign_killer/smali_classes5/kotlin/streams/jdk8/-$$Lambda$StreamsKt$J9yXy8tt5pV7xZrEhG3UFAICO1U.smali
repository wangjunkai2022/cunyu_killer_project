.class public final synthetic Lkotlin/streams/jdk8/-$$Lambda$StreamsKt$J9yXy8tt5pV7xZrEhG3UFAICO1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lkotlin/sequences/Sequence;


# direct methods
.method public synthetic constructor <init>(Lkotlin/sequences/Sequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/streams/jdk8/-$$Lambda$StreamsKt$J9yXy8tt5pV7xZrEhG3UFAICO1U;->f$0:Lkotlin/sequences/Sequence;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/streams/jdk8/-$$Lambda$StreamsKt$J9yXy8tt5pV7xZrEhG3UFAICO1U;->f$0:Lkotlin/sequences/Sequence;

    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt;->lambda$J9yXy8tt5pV7xZrEhG3UFAICO1U(Lkotlin/sequences/Sequence;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
