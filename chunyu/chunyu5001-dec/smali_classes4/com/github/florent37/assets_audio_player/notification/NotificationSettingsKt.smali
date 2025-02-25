.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationSettingsKt;
.super Ljava/lang/Object;
.source "NotificationSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "fetchNotificationSettings",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "from",
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
.method public static final fetchNotificationSettings(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notif.settings.nextEnabled"

    .line 31
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v4, v0

    :goto_1
    const-string v0, "notif.settings.stopEnabled"

    .line 32
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v8, v0

    :goto_3
    const-string v0, "notif.settings.playPauseEnabled"

    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_5

    move v5, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v5, v0

    :goto_5
    const-string v0, "notif.settings.prevEnabled"

    .line 34
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_7

    move v6, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v6, v0

    :goto_7
    const-string v0, "notif.settings.seekBarEnabled"

    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object v0, v2

    :goto_8
    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_9
    move v7, v1

    const-string v0, "notif.settings.previousIcon"

    .line 36
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_a

    :cond_a
    move-object v9, v2

    :goto_a
    const-string v0, "notif.settings.nextIcon"

    .line 37
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    goto :goto_b

    :cond_b
    move-object v12, v2

    :goto_b
    const-string v0, "notif.settings.pauseIcon"

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    goto :goto_c

    :cond_c
    move-object v13, v2

    :goto_c
    const-string v0, "notif.settings.playIcon"

    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    goto :goto_d

    :cond_d
    move-object v11, v2

    :goto_d
    const-string v0, "notif.settings.stopIcon"

    .line 40
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_e
    move-object v10, v2

    .line 30
    new-instance p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
