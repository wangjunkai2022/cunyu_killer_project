.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayerKt;
.super Ljava/lang/Object;
.source "PlayerImplemMediaPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerImplemMediaPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerImplemMediaPlayer.kt\ncom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayerKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,231:1\n211#2,2:232\n*S KotlinDebug\n*F\n+ 1 PlayerImplemMediaPlayer.kt\ncom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayerKt\n*L\n223#1:232,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "toMapString",
        "",
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
.method public static final toMapString(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 232
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
