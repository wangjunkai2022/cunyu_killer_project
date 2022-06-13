.class final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetsAudioPlayerPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;->$channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;->invoke(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;->$channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->getMETHOD_ERROR()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    .line 239
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 240
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "message"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 238
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
