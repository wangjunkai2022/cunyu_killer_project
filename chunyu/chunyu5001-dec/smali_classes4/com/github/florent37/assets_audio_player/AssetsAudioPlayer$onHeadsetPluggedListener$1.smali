.class final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetsAudioPlayerPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsAudioPlayerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,585:1\n1849#2,2:586\n*S KotlinDebug\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1\n*L\n134#1:586,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "plugged",
        "",
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;->this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;->this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->access$getPlayers$p(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 586
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/assets_audio_player/Player;

    .line 135
    invoke-virtual {v1, p1}, Lcom/github/florent37/assets_audio_player/Player;->onHeadsetPlugged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
