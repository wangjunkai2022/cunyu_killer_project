.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationActionReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "assets_audio_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerId"

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "trackID"

    .line 11
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    :goto_0
    sget-object v4, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {v4}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getInstance()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->getAssetsAudioPlayer()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p1, "stop"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v5}, Lcom/github/florent37/assets_audio_player/Player;->askStop()V

    goto :goto_2

    :sswitch_1
    const-string p1, "prev"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {v5}, Lcom/github/florent37/assets_audio_player/Player;->prev()V

    goto :goto_2

    :sswitch_2
    const-string p1, "next"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v5}, Lcom/github/florent37/assets_audio_player/Player;->next()V

    goto :goto_2

    :sswitch_3
    const-string/jumbo p1, "toggle"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {v5}, Lcom/github/florent37/assets_audio_player/Player;->askPlayOrPause()V

    goto :goto_2

    :sswitch_4
    const-string v4, "select"

    .line 13
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    .line 28
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "context.packageManager.g\u2026ge(context.packageName)!!"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_4
        -0x33c144ac -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x34a233 -> :sswitch_1
        0x360802 -> :sswitch_0
    .end sparse-switch
.end method
