.class public final Lcom/github/florent37/assets_audio_player/Player;
.super Ljava/lang/Object;
.source "Player.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/Player$Companion;,
        Lcom/github/florent37/assets_audio_player/Player$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Player.kt\ncom/github/florent37/assets_audio_player/Player\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,571:1\n1#2:572\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b7\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008*\n\u0002\u0008\u001b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001m\u0018\u0000 \u00a3\u00012\u00020\u0001:\u0002\u00a3\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010t\u001a\u000202J\u0006\u0010u\u001a\u000202J&\u0010v\u001a\u0002022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020\u001c2\u0006\u0010w\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/J\u000e\u0010x\u001a\u0002022\u0006\u0010y\u001a\u00020BJ\u000e\u0010z\u001a\u0002022\u0006\u0010{\u001a\u00020\u001cJ\u0006\u0010|\u001a\u000202J\u0016\u0010}\u001a\u0002022\u0006\u0010~\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aJ\u000f\u0010\u007f\u001a\u0002022\u0007\u0010\u0080\u0001\u001a\u00020\u001cJ\u00c2\u0001\u0010\u0081\u0001\u001a\u0002022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00032\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00032\u0007\u0010\u0084\u0001\u001a\u00020\u00032\u0007\u0010\u0085\u0001\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020B2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010*2\u0006\u0010k\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010j\u001a\u00020B2\u0006\u0010i\u001a\u00020B2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0087\u0001\u001a\r\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0088\u00012\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u008b\u0001\u001a\r\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0088\u0001\u00a2\u0006\u0003\u0010\u008c\u0001J\u0007\u0010\u008d\u0001\u001a\u000202J\u0007\u0010\u008e\u0001\u001a\u000202J\t\u0010\u008f\u0001\u001a\u000202H\u0002J\u0007\u0010\u0090\u0001\u001a\u000202J\u0010\u0010\u0086\u0001\u001a\u0002022\u0007\u0010\u0091\u0001\u001a\u00020\u000eJ\u0010\u0010\u0092\u0001\u001a\u0002022\u0007\u0010\u0091\u0001\u001a\u00020\u000eJ\u000f\u0010\u0093\u0001\u001a\u0002022\u0006\u0010i\u001a\u00020BJ\u000f\u0010\u0094\u0001\u001a\u0002022\u0006\u0010j\u001a\u00020BJ\u000f\u0010\u0095\u0001\u001a\u0002022\u0006\u0010o\u001a\u00020BJ\u0010\u0010\u0096\u0001\u001a\u0002022\u0007\u0010\u0097\u0001\u001a\u00020\u001cJ\u001d\u0010\u0098\u0001\u001a\u0002022\t\u0008\u0002\u0010\u0099\u0001\u001a\u00020\u001c2\t\u0008\u0002\u0010\u009a\u0001\u001a\u00020\u001cJ\t\u0010\u009b\u0001\u001a\u000202H\u0002J\u0007\u0010\u009c\u0001\u001a\u000202J\u0011\u0010\u009d\u0001\u001a\u0002022\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u0001J\u0014\u0010\u00a0\u0001\u001a\u0002022\t\u0008\u0002\u0010\u00a1\u0001\u001a\u00020\u001cH\u0002J\t\u0010\u00a2\u0001\u001a\u000202H\u0002R\u0012\u0010\r\u001a\u00060\u000ej\u0002`\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u000ej\u0002`\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\'\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0012\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010+R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R(\u00107\u001a\u0010\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106R\"\u0010;\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R(\u0010A\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00104\"\u0004\u0008D\u00106R\"\u0010E\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010>\"\u0004\u0008G\u0010@R\"\u0010H\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010>\"\u0004\u0008J\u0010@R\"\u0010K\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010>\"\u0004\u0008M\u0010@R(\u0010N\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u00104\"\u0004\u0008P\u00106R(\u0010Q\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u00104\"\u0004\u0008S\u00106R(\u0010T\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u00104\"\u0004\u0008V\u00106R(\u0010W\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u00104\"\u0004\u0008Y\u00106R\"\u0010Z\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010>\"\u0004\u0008\\\u0010@R,\u0010]\u001a\u0014\u0012\u0008\u0012\u00060\u000ej\u0002`\u000f\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u00104\"\u0004\u0008_\u00106R(\u0010`\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u00104\"\u0004\u0008b\u00106R\"\u0010c\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010>\"\u0004\u0008e\u0010@R(\u0010f\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u00104\"\u0004\u0008h\u00106R\u000e\u0010i\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020mX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010nR\u000e\u0010o\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010p\u001a\u0004\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010qR\u0012\u0010r\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010s\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/Player;",
        "",
        "id",
        "",
        "context",
        "Landroid/content/Context;",
        "stopWhenCall",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;",
        "notificationManager",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationManager;",
        "flutterAssets",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
        "(Ljava/lang/String;Landroid/content/Context;Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;Lcom/github/florent37/assets_audio_player/notification/NotificationManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V",
        "_durationMs",
        "",
        "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;",
        "_lastOpenedPath",
        "_lastPositionMs",
        "Ljava/lang/Long;",
        "_playingPath",
        "_positionMs",
        "am",
        "Landroid/media/AudioManager;",
        "audioFocusStrategy",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
        "audioMetas",
        "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "displayNotification",
        "",
        "forwardHandler",
        "Lcom/github/florent37/assets_audio_player/ForwardHandler;",
        "handler",
        "Landroid/os/Handler;",
        "headsetStrategy",
        "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;",
        "getId",
        "()Ljava/lang/String;",
        "isEnabledToChangeVolume",
        "isEnabledToPlayPause",
        "isPlaying",
        "()Z",
        "lastRingerMode",
        "",
        "Ljava/lang/Integer;",
        "mediaPlayer",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;",
        "notificationSettings",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "onBuffering",
        "Lkotlin/Function1;",
        "",
        "getOnBuffering",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnBuffering",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onError",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "getOnError",
        "setOnError",
        "onFinished",
        "Lkotlin/Function0;",
        "getOnFinished",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnFinished",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onForwardRewind",
        "",
        "getOnForwardRewind",
        "setOnForwardRewind",
        "onNext",
        "getOnNext",
        "setOnNext",
        "onNotificationPlayOrPause",
        "getOnNotificationPlayOrPause",
        "setOnNotificationPlayOrPause",
        "onNotificationStop",
        "getOnNotificationStop",
        "setOnNotificationStop",
        "onPitchChanged",
        "getOnPitchChanged",
        "setOnPitchChanged",
        "onPlaySpeedChanged",
        "getOnPlaySpeedChanged",
        "setOnPlaySpeedChanged",
        "onPlaying",
        "getOnPlaying",
        "setOnPlaying",
        "onPositionMSChanged",
        "getOnPositionMSChanged",
        "setOnPositionMSChanged",
        "onPrev",
        "getOnPrev",
        "setOnPrev",
        "onReadyToPlay",
        "getOnReadyToPlay",
        "setOnReadyToPlay",
        "onSessionIdFound",
        "getOnSessionIdFound",
        "setOnSessionIdFound",
        "onStop",
        "getOnStop",
        "setOnStop",
        "onVolumeChanged",
        "getOnVolumeChanged",
        "setOnVolumeChanged",
        "pitch",
        "playSpeed",
        "respectSilentMode",
        "updatePosition",
        "com/github/florent37/assets_audio_player/Player$updatePosition$1",
        "Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;",
        "volume",
        "volumeBeforePhoneStateChanged",
        "Ljava/lang/Double;",
        "wasPlayingBeforeEnablePlayChange",
        "Ljava/lang/Boolean;",
        "askPlayOrPause",
        "askStop",
        "forceNotificationForGroup",
        "display",
        "forwardRewind",
        "speed",
        "loopSingleAudio",
        "loop",
        "next",
        "onAudioUpdated",
        "path",
        "onHeadsetPlugged",
        "plugged",
        "open",
        "assetAudioPath",
        "assetAudioPackage",
        "audioType",
        "autoStart",
        "seek",
        "networkHeaders",
        "",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "drmConfiguration",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDLjava/lang/Integer;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;DDLcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;Ljava/util/Map;)V",
        "pause",
        "play",
        "playerPlay",
        "prev",
        "milliseconds",
        "seekBy",
        "setPitch",
        "setPlaySpeed",
        "setVolume",
        "showNotification",
        "show",
        "stop",
        "pingListener",
        "removeNotification",
        "stopForward",
        "toggle",
        "updateEnableToPlay",
        "audioState",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;",
        "updateNotif",
        "removeNotificationOnStop",
        "updateNotifPosition",
        "Companion",
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


# static fields
.field public static final AUDIO_TYPE_ASSET:Ljava/lang/String; = "asset"

.field public static final AUDIO_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final AUDIO_TYPE_LIVESTREAM:Ljava/lang/String; = "liveStream"

.field public static final AUDIO_TYPE_NETWORK:Ljava/lang/String; = "network"

.field public static final Companion:Lcom/github/florent37/assets_audio_player/Player$Companion;

.field public static final VOLUME_WHEN_REDUCED:D = 0.3


# instance fields
.field private _durationMs:J

.field private _lastOpenedPath:Ljava/lang/String;

.field private _lastPositionMs:Ljava/lang/Long;

.field private _playingPath:Ljava/lang/String;

.field private _positionMs:J

.field private final am:Landroid/media/AudioManager;

.field private audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

.field private audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

.field private final context:Landroid/content/Context;

.field private displayNotification:Z

.field private final flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

.field private forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

.field private final handler:Landroid/os/Handler;

.field private headsetStrategy:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

.field private final id:Ljava/lang/String;

.field private isEnabledToChangeVolume:Z

.field private isEnabledToPlayPause:Z

.field private lastRingerMode:Ljava/lang/Integer;

.field private mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

.field private final notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

.field private notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

.field private onBuffering:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onForwardRewind:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onNext:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onNotificationStop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPitchChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPlaySpeedChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPlaying:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPositionMSChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPrev:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onReadyToPlay:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSessionIdFound:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onStop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onVolumeChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pitch:D

.field private playSpeed:D

.field private respectSilentMode:Z

.field private final stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

.field private final updatePosition:Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

.field private volume:D

.field private volumeBeforePhoneStateChanged:Ljava/lang/Double;

.field private wasPlayingBeforeEnablePlayChange:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/Player$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/Player$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/Player;->Companion:Lcom/github/florent37/assets_audio_player/Player$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;Lcom/github/florent37/assets_audio_player/notification/NotificationManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopWhenCall"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flutterAssets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/Player;->context:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/Player;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

    .line 31
    iput-object p4, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    .line 32
    iput-object p5, p0, Lcom/github/florent37/assets_audio_player/Player;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 44
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->context:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->am:Landroid/media/AudioManager;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->handler:Landroid/os/Handler;

    .line 71
    sget-object p1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->none:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->headsetStrategy:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    .line 72
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;->INSTANCE:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 73
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->volume:D

    .line 74
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->playSpeed:D

    .line 75
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->pitch:D

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    .line 78
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    .line 95
    new-instance p1, Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;-><init>(Lcom/github/florent37/assets_audio_player/Player;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->updatePosition:Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getAm$p(Lcom/github/florent37/assets_audio_player/Player;)Landroid/media/AudioManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->am:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static final synthetic access$getFlutterAssets$p(Lcom/github/florent37/assets_audio_player/Player;)Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/github/florent37/assets_audio_player/Player;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLastRingerMode$p(Lcom/github/florent37/assets_audio_player/Player;)Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->lastRingerMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/Player;)Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    return-object p0
.end method

.method public static final synthetic access$getRespectSilentMode$p(Lcom/github/florent37/assets_audio_player/Player;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/github/florent37/assets_audio_player/Player;->respectSilentMode:Z

    return p0
.end method

.method public static final synthetic access$getStopWhenCall$p(Lcom/github/florent37/assets_audio_player/Player;)Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

    return-object p0
.end method

.method public static final synthetic access$getVolume$p(Lcom/github/florent37/assets_audio_player/Player;)D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->volume:D

    return-wide v0
.end method

.method public static final synthetic access$get_durationMs$p(Lcom/github/florent37/assets_audio_player/Player;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->_durationMs:J

    return-wide v0
.end method

.method public static final synthetic access$get_lastPositionMs$p(Lcom/github/florent37/assets_audio_player/Player;)Ljava/lang/Long;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/Player;->_lastPositionMs:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$setLastRingerMode$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/Integer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->lastRingerMode:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setMediaPlayer$p(Lcom/github/florent37/assets_audio_player/Player;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    return-void
.end method

.method public static final synthetic access$set_durationMs$p(Lcom/github/florent37/assets_audio_player/Player;J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->_durationMs:J

    return-void
.end method

.method public static final synthetic access$set_lastPositionMs$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->_lastPositionMs:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$set_playingPath$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->_playingPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$set_positionMs$p(Lcom/github/florent37/assets_audio_player/Player;J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->_positionMs:J

    return-void
.end method

.method public static final synthetic access$updateNotifPosition(Lcom/github/florent37/assets_audio_player/Player;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->updateNotifPosition()V

    return-void
.end method

.method private final playerPlay()V
    .locals 4

    .line 359
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->stopForward()V

    .line 362
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->play()V

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->_lastPositionMs:Ljava/lang/Long;

    .line 364
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/Player;->updatePosition:Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPlaying()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 366
    invoke-static {p0, v1, v2, v0}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V

    goto :goto_1

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->requestAudioFocus(Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;)Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    :goto_1
    return-void
.end method

.method public static synthetic stop$default(Lcom/github/florent37/assets_audio_player/Player;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 245
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/Player;->stop(ZZ)V

    return-void
.end method

.method private final stopForward()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->stop()V

    .line 281
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->playSpeed:D

    invoke-virtual {p0, v0, v1}, Lcom/github/florent37/assets_audio_player/Player;->setPlaySpeed(D)V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onForwardRewind:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private final updateNotif(Z)V
    .locals 9

    .line 328
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->displayNotification:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_2

    goto :goto_2

    .line 329
    :cond_2
    iget-object v5, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    if-nez v5, :cond_3

    goto :goto_2

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->updateNotifPosition()V

    .line 331
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    .line 332
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getId()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result v4

    if-eqz p1, :cond_4

    .line 336
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    move v6, p1

    .line 337
    iget-wide v7, p0, Lcom/github/florent37/assets_audio_player/Player;->_durationMs:J

    .line 331
    invoke-virtual/range {v1 .. v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->showNotification(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;ZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;ZJ)V

    :goto_2
    return-void
.end method

.method static synthetic updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif(Z)V

    return-void
.end method

.method private final updateNotifPosition()V
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    if-nez v0, :cond_0

    goto :goto_3

    .line 288
    :cond_0
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->displayNotification:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getSeekBarEnabled()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 291
    :cond_5
    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;

    .line 292
    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/Player;->context:Landroid/content/Context;

    .line 293
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result v3

    .line 294
    iget-wide v4, p0, Lcom/github/florent37/assets_audio_player/Player;->playSpeed:D

    double-to-float v6, v4

    .line 295
    iget-wide v4, p0, Lcom/github/florent37/assets_audio_player/Player;->_positionMs:J

    .line 291
    invoke-virtual/range {v1 .. v6}, Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;->updatePosition(Landroid/content/Context;ZJF)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final askPlayOrPause()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final askStop()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationStop:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final forceNotificationForGroup(Lcom/github/florent37/assets_audio_player/notification/AudioMetas;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;)V
    .locals 9

    const-string v0, "audioMetas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    .line 307
    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/Player;->id:Ljava/lang/String;

    xor-int/lit8 v6, p3, 0x1

    const-wide/16 v7, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    .line 306
    invoke-virtual/range {v1 .. v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->showNotification(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;ZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;ZJ)V

    return-void
.end method

.method public final forwardRewind(D)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/github/florent37/assets_audio_player/ForwardHandler;

    invoke-direct {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->pause()V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onForwardRewind:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->start(Lcom/github/florent37/assets_audio_player/Player;D)V

    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnBuffering()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onBuffering:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnFinished()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onFinished:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnForwardRewind()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onForwardRewind:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnNext()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNext:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnNotificationPlayOrPause()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnNotificationStop()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationStop:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnPitchChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPitchChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnPlaySpeedChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPlaySpeedChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnPlaying()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPlaying:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnPositionMSChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPositionMSChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnPrev()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPrev:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnReadyToPlay()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onReadyToPlay:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSessionIdFound()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onSessionIdFound:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnStop()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onStop:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnVolumeChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onVolumeChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loopSingleAudio(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->setLoopSingleAudio(Z)V

    :goto_0
    return-void
.end method

.method public final next()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onNext:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final onAudioUpdated(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioMetas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->_playingPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->_playingPath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->_lastOpenedPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    :cond_0
    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/Player;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, p2, v0}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onHeadsetPlugged(Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->headsetStrategy:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    sget-object v2, Lcom/github/florent37/assets_audio_player/Player$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    .line 519
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 525
    :cond_2
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->headsetStrategy:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    sget-object v2, Lcom/github/florent37/assets_audio_player/Player$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 528
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDLjava/lang/Integer;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;DDLcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZD",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
            "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
            "DD",
            "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;",
            "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
            "Ljava/util/Map<",
            "**>;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    const-string v0, "audioType"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationSettings"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioMetas"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsetStrategy"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioFocusStrategy"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    move-object/from16 v13, p19

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v7, p20

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 170
    :try_start_0
    invoke-static {v15, v8, v8, v0, v6}, Lcom/github/florent37/assets_audio_player/Player;->stop$default(Lcom/github/florent37/assets_audio_player/Player;ZZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move/from16 v6, p9

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :goto_1
    iput-boolean v6, v15, Lcom/github/florent37/assets_audio_player/Player;->displayNotification:Z

    .line 176
    iput-object v2, v15, Lcom/github/florent37/assets_audio_player/Player;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    .line 177
    iput-object v1, v15, Lcom/github/florent37/assets_audio_player/Player;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move/from16 v1, p8

    .line 178
    iput-boolean v1, v15, Lcom/github/florent37/assets_audio_player/Player;->respectSilentMode:Z

    .line 179
    iput-object v3, v15, Lcom/github/florent37/assets_audio_player/Player;->headsetStrategy:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    .line 180
    iput-object v4, v15, Lcom/github/florent37/assets_audio_player/Player;->audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    move-object/from16 v2, p1

    .line 182
    iput-object v2, v15, Lcom/github/florent37/assets_audio_player/Player;->_lastOpenedPath:Ljava/lang/String;

    .line 184
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lkotlin/coroutines/CoroutineContext;

    const/16 v20, 0x0

    new-instance v21, Lcom/github/florent37/assets_audio_player/Player$open$1;

    move-object/from16 v1, v21

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p18

    move-object/from16 v7, p20

    move-object/from16 v8, p21

    move-wide/from16 v9, p5

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move-object/from16 v15, p7

    move/from16 v16, p4

    move-object/from16 v17, p19

    invoke-direct/range {v1 .. v18}, Lcom/github/florent37/assets_audio_player/Player$open$1;-><init>(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;DDDLjava/lang/Integer;ZLio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v21

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v19

    move-object/from16 p3, v20

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final pause()V
    .locals 3

    .line 374
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->pause()V

    .line 377
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->updatePosition:Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->stopForward()V

    .line 380
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPlaying()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-static {p0, v1, v0, v2}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final play()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    instance-of v1, v0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 345
    iput-boolean v2, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    .line 346
    iput-boolean v2, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    .line 347
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->playerPlay()V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

    invoke-virtual {v1, v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->requestAudioFocus(Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;)Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->AUTHORIZED_TO_PLAY:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    if-ne v0, v1, :cond_1

    .line 351
    iput-boolean v2, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    .line 352
    iput-boolean v2, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    .line 353
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->playerPlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final prev()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onPrev:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final seek(J)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 392
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 393
    invoke-virtual {v0, p1, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->seekTo(J)V

    .line 394
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPositionMSChanged()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->getCurrentPositionMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final seekBy(J)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->getCurrentPositionMs()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 401
    invoke-virtual {p0, v0, v1}, Lcom/github/florent37/assets_audio_player/Player;->seek(J)V

    :goto_0
    return-void
.end method

.method public final setOnBuffering(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onBuffering:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnFinished(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onFinished:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnForwardRewind(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onForwardRewind:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnNext(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onNext:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnNotificationPlayOrPause(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationPlayOrPause:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnNotificationStop(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onNotificationStop:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnPitchChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onPitchChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPlaySpeedChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onPlaySpeedChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPlaying(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onPlaying:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPositionMSChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onPositionMSChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPrev(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onPrev:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnReadyToPlay(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onReadyToPlay:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSessionIdFound(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onSessionIdFound:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnStop(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onStop:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnVolumeChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onVolumeChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPitch(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->stop()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    .line 446
    :cond_0
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->pitch:D

    .line 447
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    double-to-float p1, p1

    .line 448
    invoke-virtual {v0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->setPitch(F)V

    .line 449
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPitchChanged()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->pitch:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setPlaySpeed(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    if-eqz v0, :cond_0

    .line 429
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->stop()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    .line 432
    :cond_0
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->playSpeed:D

    .line 433
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    double-to-float p1, p1

    .line 434
    invoke-virtual {v0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->setPlaySpeed(F)V

    .line 435
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPlaySpeedChanged()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->playSpeed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setVolume(D)V
    .locals 3

    .line 406
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    if-eqz v0, :cond_4

    .line 407
    iput-wide p1, p0, Lcom/github/florent37/assets_audio_player/Player;->volume:D

    .line 408
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->respectSilentMode:Z

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :cond_2
    :goto_0
    double-to-float p1, p1

    .line 417
    invoke-virtual {v0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->setVolume(F)V

    .line 419
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnVolumeChanged()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/Player;->volume:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final showNotification(Z)V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/Player;->displayNotification:Z

    .line 318
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/Player;->displayNotification:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->stopNotification()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-static {p0, p1, v0, v1}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final stop(ZZ)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_0

    goto :goto_4

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPositionMSChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->stop()V

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->release()V

    .line 254
    :goto_2
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->getOnPlaying()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :goto_3
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->updatePosition:Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :goto_4
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 258
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->stop()V

    .line 259
    iput-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->forwardHandler:Lcom/github/florent37/assets_audio_player/ForwardHandler;

    .line 261
    :cond_5
    iput-object v1, p0, Lcom/github/florent37/assets_audio_player/Player;->mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    .line 262
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->onForwardRewind:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz p1, :cond_8

    .line 264
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->onStop:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 265
    :goto_6
    invoke-direct {p0, p2}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif(Z)V

    :cond_8
    return-void
.end method

.method public final toggle()V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->pause()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->play()V

    :goto_0
    return-void
.end method

.method public final updateEnableToPlay(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V
    .locals 4

    const-string v0, "audioState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player;->audioFocusStrategy:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    instance-of v1, v0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 471
    :cond_1
    sget-object v1, Lcom/github/florent37/assets_audio_player/Player$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_3

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->wasPlayingBeforeEnablePlayChange:Ljava/lang/Boolean;

    .line 498
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->pause()V

    .line 499
    iput-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    goto :goto_3

    .line 492
    :cond_3
    iget-wide v2, p0, Lcom/github/florent37/assets_audio_player/Player;->volume:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->volumeBeforePhoneStateChanged:Ljava/lang/Double;

    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 493
    invoke-virtual {p0, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->setVolume(D)V

    .line 494
    iput-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    goto :goto_3

    .line 473
    :cond_4
    iput-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToPlayPause:Z

    .line 474
    iput-boolean v1, p0, Lcom/github/florent37/assets_audio_player/Player;->isEnabledToChangeVolume:Z

    .line 475
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->getResumeAfterInterruption()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 476
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->wasPlayingBeforeEnablePlayChange:Ljava/lang/Boolean;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 479
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/Player;->playerPlay()V

    goto :goto_1

    .line 481
    :cond_6
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/Player;->pause()V

    .line 485
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/Player;->volumeBeforePhoneStateChanged:Ljava/lang/Double;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 486
    invoke-virtual {p0, v0, v1}, Lcom/github/florent37/assets_audio_player/Player;->setVolume(D)V

    .line 488
    :goto_2
    iput-object v2, p0, Lcom/github/florent37/assets_audio_player/Player;->wasPlayingBeforeEnablePlayChange:Ljava/lang/Boolean;

    .line 489
    iput-object v2, p0, Lcom/github/florent37/assets_audio_player/Player;->volumeBeforePhoneStateChanged:Ljava/lang/Double;

    :goto_3
    return-void
.end method
