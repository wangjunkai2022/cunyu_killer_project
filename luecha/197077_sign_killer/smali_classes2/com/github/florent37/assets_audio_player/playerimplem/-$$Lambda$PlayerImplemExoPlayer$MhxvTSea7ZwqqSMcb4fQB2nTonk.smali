.class public final synthetic Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$MhxvTSea7ZwqqSMcb4fQB2nTonk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/upstream/AssetDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/AssetDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$MhxvTSea7ZwqqSMcb4fQB2nTonk;->f$0:Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/-$$Lambda$PlayerImplemExoPlayer$MhxvTSea7ZwqqSMcb4fQB2nTonk;->f$0:Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->lambda$MhxvTSea7ZwqqSMcb4fQB2nTonk(Lcom/google/android/exoplayer2/upstream/AssetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    return-object v0
.end method
