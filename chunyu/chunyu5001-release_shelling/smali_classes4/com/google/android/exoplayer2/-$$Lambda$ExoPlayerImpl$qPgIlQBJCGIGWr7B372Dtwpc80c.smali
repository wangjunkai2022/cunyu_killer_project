.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/google/android/exoplayer2/Player$PositionInfo;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$0:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$1:Lcom/google/android/exoplayer2/Player$PositionInfo;

    iput-object p3, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$0:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$1:Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c;->f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$9(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
