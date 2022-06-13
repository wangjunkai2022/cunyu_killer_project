.class public final synthetic Lcom/google/android/exoplayer2/util/-$$Lambda$ListenerSet$gt28PMFfhLXGfIVY4v7eP9kmalg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/util/ListenerSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$ListenerSet$gt28PMFfhLXGfIVY4v7eP9kmalg;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/-$$Lambda$ListenerSet$gt28PMFfhLXGfIVY4v7eP9kmalg;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->lambda$gt28PMFfhLXGfIVY4v7eP9kmalg(Lcom/google/android/exoplayer2/util/ListenerSet;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
