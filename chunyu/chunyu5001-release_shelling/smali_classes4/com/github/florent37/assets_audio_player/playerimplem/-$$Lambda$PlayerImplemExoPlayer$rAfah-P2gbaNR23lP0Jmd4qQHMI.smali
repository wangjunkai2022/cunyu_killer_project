.class public final synthetic Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$rAfah-P2gbaNR23lP0Jmd4qQHMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$rAfah-P2gbaNR23lP0Jmd4qQHMI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$rAfah-P2gbaNR23lP0Jmd4qQHMI;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 2

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$rAfah-P2gbaNR23lP0Jmd4qQHMI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$rAfah-P2gbaNR23lP0Jmd4qQHMI;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->lambda$rAfah-P2gbaNR23lP0Jmd4qQHMI(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    return-object v0
.end method
