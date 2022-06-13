package com.github.florent37.assets_audio_player;

import android.content.Context;
import com.github.florent37.assets_audio_player.headset.HeadsetStrategy;
import com.github.florent37.assets_audio_player.notification.AudioMetas;
import com.github.florent37.assets_audio_player.notification.AudioMetasKt;
import com.github.florent37.assets_audio_player.notification.ImageMetas;
import com.github.florent37.assets_audio_player.notification.MediaButtonsReceiver;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.notification.NotificationManager;
import com.github.florent37.assets_audio_player.notification.NotificationService;
import com.github.florent37.assets_audio_player.notification.NotificationSettings;
import com.github.florent37.assets_audio_player.notification.NotificationSettingsKt;
import com.github.florent37.assets_audio_player.stopwhencall.AudioFocusStrategy;
import com.github.florent37.assets_audio_player.stopwhencall.HeadsetManager;
import com.github.florent37.assets_audio_player.stopwhencall.StopWhenCallAudioFocus;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tekartik.sqflite.Constant;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AssetsAudioPlayerPlugin.kt */
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005*\u0001\u001b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\fH\u0002J\u0010\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010 \u001a\u00020\fJ\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020$J\u0018\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u000e\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u0014J\u000e\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\fJ\u0006\u00100\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", c.R, "Landroid/content/Context;", "messenger", "Lio/flutter/plugin/common/BinaryMessenger;", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V", "headsetManager", "Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;", "lastPlayerIdWithNotificationEnabled", "", "mediaButtonsReceiver", "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;", "notificationManager", "Lcom/github/florent37/assets_audio_player/notification/NotificationManager;", "onHeadsetPluggedListener", "Lkotlin/Function1;", "", "", "players", "", "Lcom/github/florent37/assets_audio_player/Player;", "stopWhenCall", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;", "stopWhenCallListener", "com/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1", "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;", "uriResolver", "Lcom/github/florent37/assets_audio_player/UriResolver;", "getOrCreatePlayer", "id", "getPlayer", "onMediaButton", "action", "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", Constant.PARAM_RESULT, "Lio/flutter/plugin/common/MethodChannel$Result;", "onNotifSeekPlayer", "toMs", "", "register", "registerLastPlayerWithNotif", NotificationService.EXTRA_PLAYER_ID, "unregister", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetsAudioPlayer implements MethodChannel.MethodCallHandler {
    private final Context context;
    private final FlutterPlugin.FlutterAssets flutterAssets;
    private HeadsetManager headsetManager;
    private String lastPlayerIdWithNotificationEnabled;
    private MediaButtonsReceiver mediaButtonsReceiver;
    private final BinaryMessenger messenger;
    private final NotificationManager notificationManager;
    private StopWhenCallAudioFocus stopWhenCall;
    private final UriResolver uriResolver;
    private final AssetsAudioPlayer$stopWhenCallListener$1 stopWhenCallListener = new AssetsAudioPlayer$stopWhenCallListener$1(this);
    private final Function1<Boolean, Unit> onHeadsetPluggedListener = new Function1<Boolean, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$onHeadsetPluggedListener$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(boolean z) {
            for (Player player : AssetsAudioPlayer.this.players.values()) {
                player.onHeadsetPlugged(z);
            }
        }
    };
    private final Map<String, Player> players = new LinkedHashMap();

    /* compiled from: AssetsAudioPlayerPlugin.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MediaButtonsReceiver.MediaButtonAction.values().length];
            iArr[MediaButtonsReceiver.MediaButtonAction.play.ordinal()] = 1;
            iArr[MediaButtonsReceiver.MediaButtonAction.pause.ordinal()] = 2;
            iArr[MediaButtonsReceiver.MediaButtonAction.playOrPause.ordinal()] = 3;
            iArr[MediaButtonsReceiver.MediaButtonAction.next.ordinal()] = 4;
            iArr[MediaButtonsReceiver.MediaButtonAction.prev.ordinal()] = 5;
            iArr[MediaButtonsReceiver.MediaButtonAction.stop.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AssetsAudioPlayer(Context context, BinaryMessenger binaryMessenger, FlutterPlugin.FlutterAssets flutterAssets) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(binaryMessenger, "messenger");
        Intrinsics.checkNotNullParameter(flutterAssets, "flutterAssets");
        this.context = context;
        this.messenger = binaryMessenger;
        this.flutterAssets = flutterAssets;
        this.stopWhenCall = new StopWhenCallAudioFocus(this.context);
        this.headsetManager = new HeadsetManager(this.context);
        this.notificationManager = new NotificationManager(this.context);
        this.uriResolver = new UriResolver(this.context);
    }

    public final void register() {
        this.stopWhenCall.register(this.stopWhenCallListener);
        this.headsetManager.setOnHeadsetPluggedListener(this.onHeadsetPluggedListener);
        this.headsetManager.start();
        this.mediaButtonsReceiver = new MediaButtonsReceiver(this.context, new Function1<MediaButtonsReceiver.MediaButtonAction, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$register$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MediaButtonsReceiver.MediaButtonAction mediaButtonAction) {
                invoke2(mediaButtonAction);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(MediaButtonsReceiver.MediaButtonAction mediaButtonAction) {
                Intrinsics.checkNotNullParameter(mediaButtonAction, "it");
                AssetsAudioPlayer.this.onMediaButton(mediaButtonAction);
            }
        }, new Function1<Long, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$register$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                AssetsAudioPlayer.this.onNotifSeekPlayer(j);
            }
        });
        new MethodChannel(this.messenger, "assets_audio_player").setMethodCallHandler(this);
    }

    public final void unregister() {
        this.stopWhenCall.stop();
        this.notificationManager.hideNotificationService(true);
        this.stopWhenCall.unregister(this.stopWhenCallListener);
        for (Player player : this.players.values()) {
            Player.stop$default(player, false, false, 3, null);
        }
        this.players.clear();
    }

    public final Player getPlayer(String str) {
        Intrinsics.checkNotNullParameter(str, "id");
        return this.players.get(str);
    }

    private final Player getOrCreatePlayer(String str) {
        Map<String, Player> map = this.players;
        Player player = map.get(str);
        if (player == null) {
            MethodChannel methodChannel = new MethodChannel(this.messenger, Intrinsics.stringPlus("assets_audio_player/", str));
            Context context = this.context;
            NotificationManager notificationManager = this.notificationManager;
            Player player2 = new Player(str, context, this.stopWhenCall, notificationManager, this.flutterAssets);
            player2.setOnVolumeChanged(new Function1<Double, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                    invoke(d.doubleValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(double d) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_VOLUME(), Double.valueOf(d));
                }
            });
            player2.setOnForwardRewind(new Function1<Double, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                    invoke(d.doubleValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(double d) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_FORWARD_REWIND_SPEED(), Double.valueOf(d));
                }
            });
            player2.setOnPlaySpeedChanged(new Function1<Double, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                    invoke(d.doubleValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(double d) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_PLAY_SPEED(), Double.valueOf(d));
                }
            });
            player2.setOnPitchChanged(new Function1<Double, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$4
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                    invoke(d.doubleValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(double d) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_PITCH(), Double.valueOf(d));
                }
            });
            player2.setOnPositionMSChanged(new Function1<Long, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$5
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_POSITION(), Long.valueOf(j));
                }
            });
            player2.setOnReadyToPlay(new Function1<Long, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$6
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_CURRENT(), MapsKt.mapOf(TuplesKt.to("totalDurationMs", Long.valueOf(j))));
                }
            });
            player2.setOnSessionIdFound(new Function1<Integer, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$7
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_AUDIO_SESSION_ID(), Integer.valueOf(i));
                }
            });
            player2.setOnPlaying(new Function1<Boolean, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$8
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_IS_PLAYING(), Boolean.valueOf(z));
                }
            });
            player2.setOnBuffering(new Function1<Boolean, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$9
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z) {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_IS_BUFFERING(), Boolean.valueOf(z));
                }
            });
            player2.setOnFinished(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$10
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_FINISHED(), null);
                }
            });
            player2.setOnPrev(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$11
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_PREV(), null);
                }
            });
            player2.setOnNext(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$12
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_NEXT(), null);
                }
            });
            player2.setOnStop(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$13
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_CURRENT(), null);
                }
            });
            player2.setOnNotificationPlayOrPause(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$14
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_PLAY_OR_PAUSE(), null);
                }
            });
            player2.setOnNotificationStop(new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$15
                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_NOTIFICATION_STOP(), null);
                }
            });
            player2.setOnError(new Function1<AssetAudioPlayerThrowable, Unit>() { // from class: com.github.florent37.assets_audio_player.AssetsAudioPlayer$getOrCreatePlayer$1$1$16
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AssetAudioPlayerThrowable assetAudioPlayerThrowable) {
                    invoke2(assetAudioPlayerThrowable);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(AssetAudioPlayerThrowable assetAudioPlayerThrowable) {
                    Intrinsics.checkNotNullParameter(assetAudioPlayerThrowable, "it");
                    MethodChannel.this.invokeMethod(AssetsAudioPlayerPluginKt.getMETHOD_ERROR(), MapsKt.mapOf(TuplesKt.to("type", assetAudioPlayerThrowable.getType()), TuplesKt.to(Constant.PARAM_ERROR_MESSAGE, assetAudioPlayerThrowable.getMessage())));
                }
            });
            map.put(str, player2);
            player = player2;
        }
        return player;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Unit unit;
        Unit unit2;
        Unit unit3;
        Unit unit4;
        Unit unit5;
        Unit unit6;
        Unit unit7;
        String str;
        String str2;
        ImageMetas imageMetas;
        Unit unit8;
        Unit unit9;
        Unit unit10;
        Unit unit11;
        Unit unit12;
        Unit unit13;
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, Constant.PARAM_RESULT);
        String str3 = methodCall.method;
        if (str3 != null) {
            Unit unit14 = null;
            switch (str3.hashCode()) {
                case -1888721549:
                    if (str3.equals("playSpeed")) {
                        Object obj = methodCall.arguments;
                        Map map = obj instanceof Map ? (Map) obj : null;
                        if (map == null) {
                            unit = null;
                        } else {
                            Object obj2 = map.get("id");
                            String str4 = obj2 instanceof String ? (String) obj2 : null;
                            if (str4 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj3 = map.get("playSpeed");
                            Double d = obj3 instanceof Double ? (Double) obj3 : null;
                            if (d == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Double.", null);
                                return;
                            }
                            getOrCreatePlayer(str4).setPlaySpeed(d.doubleValue());
                            result.success(null);
                            Unit unit15 = Unit.INSTANCE;
                            unit = Unit.INSTANCE;
                        }
                        if (unit == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit16 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -1697732822:
                    if (str3.equals("loopSingleAudio")) {
                        Object obj4 = methodCall.arguments;
                        Map map2 = obj4 instanceof Map ? (Map) obj4 : null;
                        if (map2 == null) {
                            unit2 = null;
                        } else {
                            Object obj5 = map2.get("id");
                            String str5 = obj5 instanceof String ? (String) obj5 : null;
                            if (str5 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj6 = map2.get("loop");
                            Boolean bool = obj6 instanceof Boolean ? (Boolean) obj6 : null;
                            if (bool == null) {
                                result.error("WRONG_FORMAT", "The specified argument(loop) must be an Boolean.", null);
                                return;
                            }
                            getOrCreatePlayer(str5).loopSingleAudio(bool.booleanValue());
                            result.success(null);
                            Unit unit17 = Unit.INSTANCE;
                            unit2 = Unit.INSTANCE;
                        }
                        if (unit2 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit18 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -1591214900:
                    if (str3.equals("forceNotificationForGroup")) {
                        Object obj7 = methodCall.arguments;
                        Map map3 = obj7 instanceof Map ? (Map) obj7 : null;
                        if (map3 == null) {
                            unit3 = null;
                        } else {
                            Object obj8 = map3.get("id");
                            String str6 = obj8 instanceof String ? (String) obj8 : null;
                            Object obj9 = map3.get("isPlaying");
                            Boolean bool2 = obj9 instanceof Boolean ? (Boolean) obj9 : null;
                            if (bool2 == null) {
                                result.error("WRONG_FORMAT", "The specified argument(isPlaying) must be an Boolean.", null);
                                return;
                            }
                            boolean booleanValue = bool2.booleanValue();
                            Object obj10 = map3.get("display");
                            Boolean bool3 = obj10 instanceof Boolean ? (Boolean) obj10 : null;
                            if (bool3 == null) {
                                result.error("WRONG_FORMAT", "The specified argument(display) must be an Boolean.", null);
                                return;
                            }
                            boolean booleanValue2 = bool3.booleanValue();
                            AudioMetas fetchAudioMetas = AudioMetasKt.fetchAudioMetas(map3);
                            NotificationSettings fetchNotificationSettings = NotificationSettingsKt.fetchNotificationSettings(map3);
                            if (!booleanValue2) {
                                this.notificationManager.stopNotification();
                            } else if (str6 != null) {
                                getOrCreatePlayer(str6).forceNotificationForGroup(fetchAudioMetas, booleanValue, booleanValue2, fetchNotificationSettings);
                            }
                            result.success(null);
                            Unit unit19 = Unit.INSTANCE;
                            unit3 = Unit.INSTANCE;
                        }
                        if (unit3 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit20 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -1073342556:
                    if (str3.equals("isPlaying")) {
                        Object obj11 = methodCall.arguments;
                        Map map4 = obj11 instanceof Map ? (Map) obj11 : null;
                        if (map4 == null) {
                            unit4 = null;
                        } else {
                            Object obj12 = map4.get("id");
                            String str7 = obj12 instanceof String ? (String) obj12 : null;
                            if (str7 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            result.success(Boolean.valueOf(getOrCreatePlayer(str7).isPlaying()));
                            Unit unit21 = Unit.INSTANCE;
                            Unit unit22 = Unit.INSTANCE;
                            unit4 = Unit.INSTANCE;
                        }
                        if (unit4 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit23 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -810883302:
                    if (str3.equals("volume")) {
                        Object obj13 = methodCall.arguments;
                        Map map5 = obj13 instanceof Map ? (Map) obj13 : null;
                        if (map5 == null) {
                            unit5 = null;
                        } else {
                            Object obj14 = map5.get("id");
                            String str8 = obj14 instanceof String ? (String) obj14 : null;
                            if (str8 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj15 = map5.get("volume");
                            Double d2 = obj15 instanceof Double ? (Double) obj15 : null;
                            if (d2 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Double.", null);
                                return;
                            }
                            getOrCreatePlayer(str8).setVolume(d2.doubleValue());
                            result.success(null);
                            Unit unit24 = Unit.INSTANCE;
                            unit5 = Unit.INSTANCE;
                        }
                        if (unit5 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit25 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -788388728:
                    if (str3.equals("showNotification")) {
                        Object obj16 = methodCall.arguments;
                        Map map6 = obj16 instanceof Map ? (Map) obj16 : null;
                        if (map6 == null) {
                            unit6 = null;
                        } else {
                            Object obj17 = map6.get("id");
                            String str9 = obj17 instanceof String ? (String) obj17 : null;
                            if (str9 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj18 = map6.get("show");
                            Boolean bool4 = obj18 instanceof Boolean ? (Boolean) obj18 : null;
                            if (bool4 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (show) must be an Boolean.", null);
                                return;
                            }
                            getOrCreatePlayer(str9).showNotification(bool4.booleanValue());
                            result.success(null);
                            Unit unit26 = Unit.INSTANCE;
                            unit6 = Unit.INSTANCE;
                        }
                        if (unit6 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit27 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case -435289120:
                    if (str3.equals("forwardRewind")) {
                        Object obj19 = methodCall.arguments;
                        Map map7 = obj19 instanceof Map ? (Map) obj19 : null;
                        if (map7 == null) {
                            unit7 = null;
                        } else {
                            Object obj20 = map7.get("id");
                            String str10 = obj20 instanceof String ? (String) obj20 : null;
                            if (str10 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj21 = map7.get("speed");
                            Double d3 = obj21 instanceof Double ? (Double) obj21 : null;
                            if (d3 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Double.", null);
                                return;
                            }
                            getOrCreatePlayer(str10).forwardRewind(d3.doubleValue());
                            result.success(null);
                            Unit unit28 = Unit.INSTANCE;
                            unit7 = Unit.INSTANCE;
                        }
                        if (unit7 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit29 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 3417674:
                    if (str3.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                        Object obj22 = methodCall.arguments;
                        Map map8 = obj22 instanceof Map ? (Map) obj22 : null;
                        if (map8 == null) {
                            str2 = "WRONG_FORMAT";
                            str = "The specified argument must be an Map<*, Any>.";
                        } else {
                            Object obj23 = map8.get("id");
                            String str11 = obj23 instanceof String ? (String) obj23 : null;
                            if (str11 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj24 = map8.get("path");
                            String str12 = obj24 instanceof String ? (String) obj24 : null;
                            if (str12 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an String `path`", null);
                                return;
                            }
                            String audioPath = this.uriResolver.audioPath(str12);
                            Object obj25 = map8.get(TPDownloadProxyEnum.DLPARAM_PACKAGE);
                            String str13 = obj25 instanceof String ? (String) obj25 : null;
                            Object obj26 = map8.get("audioType");
                            String str14 = obj26 instanceof String ? (String) obj26 : null;
                            if (str14 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Map<String, Any> containing a `audioType`", null);
                                return;
                            }
                            Object obj27 = map8.get("volume");
                            Double d4 = obj27 instanceof Double ? (Double) obj27 : null;
                            if (d4 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Map<String, Any> containing a `volume`", null);
                                return;
                            }
                            double doubleValue = d4.doubleValue();
                            Object obj28 = map8.get("playSpeed");
                            Double d5 = obj28 instanceof Double ? (Double) obj28 : null;
                            if (d5 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Map<String, Any> containing a `playSpeed`", null);
                                return;
                            }
                            double doubleValue2 = d5.doubleValue();
                            Object obj29 = map8.get("pitch");
                            Double d6 = obj29 instanceof Double ? (Double) obj29 : null;
                            if (d6 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Map<String, Any> containing a `pitch`", null);
                                return;
                            }
                            double doubleValue3 = d6.doubleValue();
                            Object obj30 = map8.get("autoStart");
                            Boolean bool5 = obj30 instanceof Boolean ? (Boolean) obj30 : null;
                            boolean booleanValue3 = bool5 == null ? true : bool5.booleanValue();
                            Object obj31 = map8.get("displayNotification");
                            Boolean bool6 = obj31 instanceof Boolean ? (Boolean) obj31 : null;
                            boolean booleanValue4 = bool6 == null ? false : bool6.booleanValue();
                            Object obj32 = map8.get("respectSilentMode");
                            Boolean bool7 = obj32 instanceof Boolean ? (Boolean) obj32 : null;
                            boolean booleanValue5 = bool7 == null ? false : bool7.booleanValue();
                            Object obj33 = map8.get("seek");
                            Integer num = obj33 instanceof Integer ? (Integer) obj33 : null;
                            Object obj34 = map8.get("networkHeaders");
                            Map<?, ?> map9 = obj34 instanceof Map ? (Map) obj34 : null;
                            Object obj35 = map8.get("drmConfiguration");
                            Map<?, ?> map10 = obj35 instanceof Map ? (Map) obj35 : null;
                            NotificationSettings fetchNotificationSettings2 = NotificationSettingsKt.fetchNotificationSettings(map8);
                            AudioMetas fetchAudioMetas2 = AudioMetasKt.fetchAudioMetas(map8);
                            ImageMetas image = fetchAudioMetas2.getImage();
                            if (image == null) {
                                imageMetas = null;
                            } else {
                                imageMetas = ImageMetas.copy$default(image, null, null, this.uriResolver.imagePath(image.getImagePath()), 3, null);
                            }
                            AudioMetas copy$default = AudioMetas.copy$default(fetchAudioMetas2, null, null, null, imageMetas, null, null, 55, null);
                            AudioFocusStrategy.Companion companion = AudioFocusStrategy.Companion;
                            Object obj36 = map8.get("audioFocusStrategy");
                            AudioFocusStrategy from = companion.from(obj36 instanceof Map ? (Map) obj36 : null);
                            HeadsetStrategy.Companion companion2 = HeadsetStrategy.Companion;
                            Object obj37 = map8.get("headPhoneStrategy");
                            str2 = "WRONG_FORMAT";
                            str = "The specified argument must be an Map<*, Any>.";
                            getOrCreatePlayer(str11).open(audioPath, str13, str14, booleanValue3, doubleValue, num, booleanValue5, booleanValue4, fetchNotificationSettings2, copy$default, doubleValue2, doubleValue3, companion2.from(obj37 instanceof String ? (String) obj37 : null), from, map9, result, this.context, map10);
                            Unit unit30 = Unit.INSTANCE;
                            unit14 = Unit.INSTANCE;
                        }
                        if (unit14 == null) {
                            result.error(str2, str, null);
                            return;
                        } else {
                            Unit unit31 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 3443508:
                    if (str3.equals("play")) {
                        Object obj38 = methodCall.arguments;
                        Map map11 = obj38 instanceof Map ? (Map) obj38 : null;
                        if (map11 == null) {
                            unit8 = null;
                        } else {
                            Object obj39 = map11.get("id");
                            String str15 = obj39 instanceof String ? (String) obj39 : null;
                            if (str15 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            getOrCreatePlayer(str15).play();
                            result.success(null);
                            Unit unit32 = Unit.INSTANCE;
                            unit8 = Unit.INSTANCE;
                        }
                        if (unit8 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit33 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 3526264:
                    if (str3.equals("seek")) {
                        Object obj40 = methodCall.arguments;
                        Map map12 = obj40 instanceof Map ? (Map) obj40 : null;
                        if (map12 == null) {
                            unit9 = null;
                        } else {
                            Object obj41 = map12.get("id");
                            String str16 = obj41 instanceof String ? (String) obj41 : null;
                            if (str16 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj42 = map12.get("to");
                            Integer num2 = obj42 instanceof Integer ? (Integer) obj42 : null;
                            if (num2 == null) {
                                result.error("WRONG_FORMAT", "The specified argument(to) must be an int.", null);
                                return;
                            }
                            getOrCreatePlayer(str16).seek(((long) num2.intValue()) * 1);
                            result.success(null);
                            Unit unit34 = Unit.INSTANCE;
                            unit9 = Unit.INSTANCE;
                        }
                        if (unit9 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit35 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 3540994:
                    if (str3.equals(NotificationAction.ACTION_STOP)) {
                        Object obj43 = methodCall.arguments;
                        Map map13 = obj43 instanceof Map ? (Map) obj43 : null;
                        if (map13 == null) {
                            unit10 = null;
                        } else {
                            Object obj44 = map13.get("id");
                            String str17 = obj44 instanceof String ? (String) obj44 : null;
                            if (str17 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj45 = map13.get("removeNotification");
                            Boolean bool8 = obj45 instanceof Boolean ? (Boolean) obj45 : null;
                            Player.stop$default(getOrCreatePlayer(str17), false, bool8 == null ? true : bool8.booleanValue(), 1, null);
                            result.success(null);
                            Unit unit36 = Unit.INSTANCE;
                            unit10 = Unit.INSTANCE;
                        }
                        if (unit10 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit37 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 106440182:
                    if (str3.equals("pause")) {
                        Object obj46 = methodCall.arguments;
                        Map map14 = obj46 instanceof Map ? (Map) obj46 : null;
                        if (map14 == null) {
                            unit11 = null;
                        } else {
                            Object obj47 = map14.get("id");
                            String str18 = obj47 instanceof String ? (String) obj47 : null;
                            if (str18 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            getOrCreatePlayer(str18).pause();
                            result.success(null);
                            Unit unit38 = Unit.INSTANCE;
                            unit11 = Unit.INSTANCE;
                        }
                        if (unit11 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit39 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 106677056:
                    if (str3.equals("pitch")) {
                        Object obj48 = methodCall.arguments;
                        Map map15 = obj48 instanceof Map ? (Map) obj48 : null;
                        if (map15 == null) {
                            unit12 = null;
                        } else {
                            Object obj49 = map15.get("id");
                            String str19 = obj49 instanceof String ? (String) obj49 : null;
                            if (str19 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj50 = map15.get("pitch");
                            Double d7 = obj50 instanceof Double ? (Double) obj50 : null;
                            if (d7 == null) {
                                result.error("WRONG_FORMAT", "The specified argument must be an Double.", null);
                                return;
                            }
                            getOrCreatePlayer(str19).setPitch(d7.doubleValue());
                            result.success(null);
                            Unit unit40 = Unit.INSTANCE;
                            unit12 = Unit.INSTANCE;
                        }
                        if (unit12 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit41 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
                case 146508676:
                    if (str3.equals("onAudioUpdated")) {
                        Object obj51 = methodCall.arguments;
                        Map map16 = obj51 instanceof Map ? (Map) obj51 : null;
                        if (map16 == null) {
                            unit13 = null;
                        } else {
                            Object obj52 = map16.get("id");
                            String str20 = obj52 instanceof String ? (String) obj52 : null;
                            if (str20 == null) {
                                result.error("WRONG_FORMAT", "The specified argument (id) must be an String.", null);
                                return;
                            }
                            Object obj53 = map16.get("path");
                            String str21 = obj53 instanceof String ? (String) obj53 : null;
                            if (str21 == null) {
                                result.error("WRONG_FORMAT", "The specified argument(path) must be an String.", null);
                                return;
                            }
                            getOrCreatePlayer(str20).onAudioUpdated(str21, AudioMetasKt.fetchAudioMetas(map16));
                            result.success(null);
                            Unit unit42 = Unit.INSTANCE;
                            unit13 = Unit.INSTANCE;
                        }
                        if (unit13 == null) {
                            result.error("WRONG_FORMAT", "The specified argument must be an Map<*, Any>.", null);
                            return;
                        } else {
                            Unit unit43 = Unit.INSTANCE;
                            return;
                        }
                    }
                    break;
            }
            result.notImplemented();
            Unit unit44 = Unit.INSTANCE;
        }
        result.notImplemented();
        Unit unit442 = Unit.INSTANCE;
    }

    public final void registerLastPlayerWithNotif(String str) {
        Intrinsics.checkNotNullParameter(str, NotificationService.EXTRA_PLAYER_ID);
        this.lastPlayerIdWithNotificationEnabled = str;
    }

    public final void onMediaButton(MediaButtonsReceiver.MediaButtonAction mediaButtonAction) {
        Player player;
        Intrinsics.checkNotNullParameter(mediaButtonAction, "action");
        String str = this.lastPlayerIdWithNotificationEnabled;
        if (str != null && (player = getPlayer(str)) != null) {
            switch (WhenMappings.$EnumSwitchMapping$0[mediaButtonAction.ordinal()]) {
                case 1:
                    player.askPlayOrPause();
                    return;
                case 2:
                    player.askPlayOrPause();
                    return;
                case 3:
                    player.askPlayOrPause();
                    return;
                case 4:
                    player.next();
                    return;
                case 5:
                    player.prev();
                    return;
                case 6:
                    player.askStop();
                    return;
                default:
                    return;
            }
        }
    }

    public final void onNotifSeekPlayer(long j) {
        Player player;
        String str = this.lastPlayerIdWithNotificationEnabled;
        if (str != null && (player = getPlayer(str)) != null) {
            player.seek(j);
        }
    }
}
