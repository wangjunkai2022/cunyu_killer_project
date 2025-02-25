.class public final Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;
.super Ljava/lang/Object;
.source "AudioMetas.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u001a \u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "fetchAudioMetas",
        "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "from",
        "",
        "fetchImageMetas",
        "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;",
        "suffix",
        "",
        "assets_audio_player_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final fetchAudioMetas(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/AudioMetas;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    const-string v1, "song.title"

    .line 30
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v1, "song.artist"

    .line 31
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v1, "song.album"

    .line 32
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    const/4 v1, 0x2

    .line 33
    invoke-static {p0, v3, v1, v3}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchImageMetas$default(Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    move-result-object v6

    const-string v1, ".onLoadFail"

    .line 34
    invoke-static {p0, v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchImageMetas(Ljava/util/Map;Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    move-result-object v7

    const-string v1, "song.trackID"

    .line 35
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p0, v3

    :goto_3
    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final fetchImageMetas(Ljava/util/Map;Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "song.image"

    .line 22
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "song.imageType"

    .line 23
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "song.imagePackage"

    .line 24
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 21
    :cond_2
    new-instance p0, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    invoke-direct {p0, v1, v2, v0}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic fetchImageMetas$default(Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchImageMetas(Ljava/util/Map;Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    move-result-object p0

    return-object p0
.end method
