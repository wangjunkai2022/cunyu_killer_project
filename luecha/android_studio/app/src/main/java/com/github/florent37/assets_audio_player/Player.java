package com.github.florent37.assets_audio_player;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import com.NlSSLrKK.gPIHumaP.BWEMZNgHwPapSnPy;
import com.github.florent37.assets_audio_player.headset.HeadsetStrategy;
import com.github.florent37.assets_audio_player.notification.AudioMetas;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.notification.NotificationManager;
import com.github.florent37.assets_audio_player.notification.NotificationSettings;
import com.github.florent37.assets_audio_player.playerimplem.PlayerImplem;
import com.github.florent37.assets_audio_player.stopwhencall.AudioFocusStrategy;
import com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;

/* compiled from: Player.kt */
@Metadata(d1 = {"\u0000·\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b*\n\u0002\b\u001b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001m\u0018\u0000 £\u00012\u00020\u0001:\u0002£\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0006\u0010t\u001a\u000202J\u0006\u0010u\u001a\u000202J&\u0010v\u001a\u0002022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010w\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/J\u000e\u0010x\u001a\u0002022\u0006\u0010y\u001a\u00020BJ\u000e\u0010z\u001a\u0002022\u0006\u0010{\u001a\u00020\u001cJ\u0006\u0010|\u001a\u000202J\u0016\u0010}\u001a\u0002022\u0006\u0010~\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aJ\u000f\u0010\u007f\u001a\u0002022\u0007\u0010\u0080\u0001\u001a\u00020\u001cJÂ\u0001\u0010\u0081\u0001\u001a\u0002022\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00032\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00032\u0007\u0010\u0084\u0001\u001a\u00020\u00032\u0007\u0010\u0085\u0001\u001a\u00020\u001c2\u0006\u0010o\u001a\u00020B2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010*2\u0006\u0010k\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010j\u001a\u00020B2\u0006\u0010i\u001a\u00020B2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0087\u0001\u001a\r\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0088\u00012\b\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u008b\u0001\u001a\r\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0088\u0001¢\u0006\u0003\u0010\u008c\u0001J\u0007\u0010\u008d\u0001\u001a\u000202J\u0007\u0010\u008e\u0001\u001a\u000202J\t\u0010\u008f\u0001\u001a\u000202H\u0002J\u0007\u0010\u0090\u0001\u001a\u000202J\u0010\u0010\u0086\u0001\u001a\u0002022\u0007\u0010\u0091\u0001\u001a\u00020\u000eJ\u0010\u0010\u0092\u0001\u001a\u0002022\u0007\u0010\u0091\u0001\u001a\u00020\u000eJ\u000f\u0010\u0093\u0001\u001a\u0002022\u0006\u0010i\u001a\u00020BJ\u000f\u0010\u0094\u0001\u001a\u0002022\u0006\u0010j\u001a\u00020BJ\u000f\u0010\u0095\u0001\u001a\u0002022\u0006\u0010o\u001a\u00020BJ\u0010\u0010\u0096\u0001\u001a\u0002022\u0007\u0010\u0097\u0001\u001a\u00020\u001cJ\u001d\u0010\u0098\u0001\u001a\u0002022\t\b\u0002\u0010\u0099\u0001\u001a\u00020\u001c2\t\b\u0002\u0010\u009a\u0001\u001a\u00020\u001cJ\t\u0010\u009b\u0001\u001a\u000202H\u0002J\u0007\u0010\u009c\u0001\u001a\u000202J\u0011\u0010\u009d\u0001\u001a\u0002022\b\u0010\u009e\u0001\u001a\u00030\u009f\u0001J\u0014\u0010 \u0001\u001a\u0002022\t\b\u0002\u0010¡\u0001\u001a\u00020\u001cH\u0002J\t\u0010¢\u0001\u001a\u000202H\u0002R\u0012\u0010\r\u001a\u00060\u000ej\u0002`\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u000ej\u0002`\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010'\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0012\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0004\n\u0002\u0010+R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R(\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R(\u00107\u001a\u0010\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00104\"\u0004\b:\u00106R\"\u0010;\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R(\u0010A\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u00104\"\u0004\bD\u00106R\"\u0010E\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010>\"\u0004\bG\u0010@R\"\u0010H\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010>\"\u0004\bJ\u0010@R\"\u0010K\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010>\"\u0004\bM\u0010@R(\u0010N\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u00104\"\u0004\bP\u00106R(\u0010Q\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u00104\"\u0004\bS\u00106R(\u0010T\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u00104\"\u0004\bV\u00106R(\u0010W\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u00104\"\u0004\bY\u00106R\"\u0010Z\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010>\"\u0004\b\\\u0010@R,\u0010]\u001a\u0014\u0012\b\u0012\u00060\u000ej\u0002`\u000f\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u00104\"\u0004\b_\u00106R(\u0010`\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u00104\"\u0004\bb\u00106R\"\u0010c\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010>\"\u0004\be\u0010@R(\u0010f\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u000202\u0018\u000101X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u00104\"\u0004\bh\u00106R\u000e\u0010i\u001a\u00020BX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020BX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020mX\u0082\u0004¢\u0006\u0004\n\u0002\u0010nR\u000e\u0010o\u001a\u00020BX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010p\u001a\u0004\u0018\u00010BX\u0082\u000e¢\u0006\u0004\n\u0002\u0010qR\u0012\u0010r\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0004\n\u0002\u0010s¨\u0006¤\u0001"}, d2 = {"Lcom/github/florent37/assets_audio_player/Player;", "", "id", "", c.R, "Landroid/content/Context;", "stopWhenCall", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;", "notificationManager", "Lcom/github/florent37/assets_audio_player/notification/NotificationManager;", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "(Ljava/lang/String;Landroid/content/Context;Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;Lcom/github/florent37/assets_audio_player/notification/NotificationManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V", "_durationMs", "", "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", "_lastOpenedPath", "_lastPositionMs", "Ljava/lang/Long;", "_playingPath", "_positionMs", "am", "Landroid/media/AudioManager;", "audioFocusStrategy", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", "audioMetas", "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "displayNotification", "", "forwardHandler", "Lcom/github/florent37/assets_audio_player/ForwardHandler;", "handler", "Landroid/os/Handler;", "headsetStrategy", "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;", "getId", "()Ljava/lang/String;", "isEnabledToChangeVolume", "isEnabledToPlayPause", "isPlaying", "()Z", "lastRingerMode", "", "Ljava/lang/Integer;", "mediaPlayer", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "notificationSettings", "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", "onBuffering", "Lkotlin/Function1;", "", "getOnBuffering", "()Lkotlin/jvm/functions/Function1;", "setOnBuffering", "(Lkotlin/jvm/functions/Function1;)V", "onError", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "getOnError", "setOnError", "onFinished", "Lkotlin/Function0;", "getOnFinished", "()Lkotlin/jvm/functions/Function0;", "setOnFinished", "(Lkotlin/jvm/functions/Function0;)V", "onForwardRewind", "", "getOnForwardRewind", "setOnForwardRewind", "onNext", "getOnNext", "setOnNext", "onNotificationPlayOrPause", "getOnNotificationPlayOrPause", "setOnNotificationPlayOrPause", "onNotificationStop", "getOnNotificationStop", "setOnNotificationStop", "onPitchChanged", "getOnPitchChanged", "setOnPitchChanged", "onPlaySpeedChanged", "getOnPlaySpeedChanged", "setOnPlaySpeedChanged", "onPlaying", "getOnPlaying", "setOnPlaying", "onPositionMSChanged", "getOnPositionMSChanged", "setOnPositionMSChanged", "onPrev", "getOnPrev", "setOnPrev", "onReadyToPlay", "getOnReadyToPlay", "setOnReadyToPlay", "onSessionIdFound", "getOnSessionIdFound", "setOnSessionIdFound", "onStop", "getOnStop", "setOnStop", "onVolumeChanged", "getOnVolumeChanged", "setOnVolumeChanged", "pitch", "playSpeed", "respectSilentMode", "updatePosition", "com/github/florent37/assets_audio_player/Player$updatePosition$1", "Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;", "volume", "volumeBeforePhoneStateChanged", "Ljava/lang/Double;", "wasPlayingBeforeEnablePlayChange", "Ljava/lang/Boolean;", "askPlayOrPause", "askStop", "forceNotificationForGroup", "display", "forwardRewind", "speed", "loopSingleAudio", "loop", NotificationAction.ACTION_NEXT, "onAudioUpdated", "path", "onHeadsetPlugged", "plugged", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "assetAudioPath", "assetAudioPackage", "audioType", "autoStart", "seek", "networkHeaders", "", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "drmConfiguration", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDLjava/lang/Integer;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;DDLcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;Ljava/util/Map;)V", "pause", "play", "playerPlay", NotificationAction.ACTION_PREV, "milliseconds", "seekBy", "setPitch", "setPlaySpeed", "setVolume", "showNotification", "show", NotificationAction.ACTION_STOP, "pingListener", "removeNotification", "stopForward", NotificationAction.ACTION_TOGGLE, "updateEnableToPlay", "audioState", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "updateNotif", "removeNotificationOnStop", "updateNotifPosition", "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Player {
    public static final String AUDIO_TYPE_ASSET = "asset";
    public static final String AUDIO_TYPE_FILE = "file";
    public static final String AUDIO_TYPE_LIVESTREAM = "liveStream";
    public static final String AUDIO_TYPE_NETWORK = "network";
    public static final Companion Companion = new Companion(null);
    public static final double VOLUME_WHEN_REDUCED = 0.3d;
    private long _durationMs;
    private String _lastOpenedPath;
    private Long _lastPositionMs;
    private String _playingPath;
    private long _positionMs;
    private final AudioManager am;
    private AudioFocusStrategy audioFocusStrategy;
    private AudioMetas audioMetas;
    private final Context context;
    private boolean displayNotification;
    private final FlutterPlugin.FlutterAssets flutterAssets;
    private ForwardHandler forwardHandler;
    private final Handler handler;
    private HeadsetStrategy headsetStrategy;
    private final String id;
    private boolean isEnabledToChangeVolume;
    private boolean isEnabledToPlayPause;
    private Integer lastRingerMode;
    private PlayerImplem mediaPlayer;
    private final NotificationManager notificationManager;
    private NotificationSettings notificationSettings;
    private Function1<? super Boolean, Unit> onBuffering;
    private Function1<? super AssetAudioPlayerThrowable, Unit> onError;
    private Function0<Unit> onFinished;
    private Function1<? super Double, Unit> onForwardRewind;
    private Function0<Unit> onNext;
    private Function0<Unit> onNotificationPlayOrPause;
    private Function0<Unit> onNotificationStop;
    private Function1<? super Double, Unit> onPitchChanged;
    private Function1<? super Double, Unit> onPlaySpeedChanged;
    private Function1<? super Boolean, Unit> onPlaying;
    private Function1<? super Long, Unit> onPositionMSChanged;
    private Function0<Unit> onPrev;
    private Function1<? super Long, Unit> onReadyToPlay;
    private Function1<? super Integer, Unit> onSessionIdFound;
    private Function0<Unit> onStop;
    private Function1<? super Double, Unit> onVolumeChanged;
    private double pitch;
    private double playSpeed;
    private boolean respectSilentMode;
    private final StopWhenCall stopWhenCall;
    private final Player$updatePosition$1 updatePosition;
    private double volume;
    private Double volumeBeforePhoneStateChanged;
    private Boolean wasPlayingBeforeEnablePlayChange;

    /* compiled from: Player.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[StopWhenCall.AudioState.values().length];
            iArr[StopWhenCall.AudioState.AUTHORIZED_TO_PLAY.ordinal()] = 1;
            iArr[StopWhenCall.AudioState.REDUCE_VOLUME.ordinal()] = 2;
            iArr[StopWhenCall.AudioState.FORBIDDEN.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[HeadsetStrategy.values().length];
            iArr2[HeadsetStrategy.pauseOnUnplug.ordinal()] = 1;
            iArr2[HeadsetStrategy.pauseOnUnplugPlayOnPlug.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public Player(String str, Context context, StopWhenCall stopWhenCall, NotificationManager notificationManager, FlutterPlugin.FlutterAssets flutterAssets) {
        Intrinsics.checkNotNullParameter(str, "id");
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(stopWhenCall, "stopWhenCall");
        Intrinsics.checkNotNullParameter(notificationManager, "notificationManager");
        Intrinsics.checkNotNullParameter(flutterAssets, "flutterAssets");
        this.id = str;
        this.context = context;
        this.stopWhenCall = stopWhenCall;
        this.notificationManager = notificationManager;
        this.flutterAssets = flutterAssets;
        Object systemService = this.context.getSystemService("audio");
        if (systemService != null) {
            this.am = (AudioManager) systemService;
            this.handler = new Handler();
            this.headsetStrategy = HeadsetStrategy.none;
            this.audioFocusStrategy = AudioFocusStrategy.None.INSTANCE;
            this.volume = 1.0d;
            this.playSpeed = 1.0d;
            this.pitch = 1.0d;
            this.isEnabledToPlayPause = true;
            this.isEnabledToChangeVolume = true;
            this.updatePosition = new Player$updatePosition$1(this);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.media.AudioManager");
    }

    public final String getId() {
        return this.id;
    }

    /* compiled from: Player.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/github/florent37/assets_audio_player/Player$Companion;", "", "()V", "AUDIO_TYPE_ASSET", "", "AUDIO_TYPE_FILE", "AUDIO_TYPE_LIVESTREAM", "AUDIO_TYPE_NETWORK", "VOLUME_WHEN_REDUCED", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final Function1<Double, Unit> getOnVolumeChanged() {
        return this.onVolumeChanged;
    }

    public final void setOnVolumeChanged(Function1<? super Double, Unit> function1) {
        this.onVolumeChanged = function1;
    }

    public final Function1<Double, Unit> getOnPlaySpeedChanged() {
        return this.onPlaySpeedChanged;
    }

    public final void setOnPlaySpeedChanged(Function1<? super Double, Unit> function1) {
        this.onPlaySpeedChanged = function1;
    }

    public final Function1<Double, Unit> getOnPitchChanged() {
        return this.onPitchChanged;
    }

    public final void setOnPitchChanged(Function1<? super Double, Unit> function1) {
        this.onPitchChanged = function1;
    }

    public final Function1<Double, Unit> getOnForwardRewind() {
        return this.onForwardRewind;
    }

    public final void setOnForwardRewind(Function1<? super Double, Unit> function1) {
        this.onForwardRewind = function1;
    }

    public final Function1<Long, Unit> getOnReadyToPlay() {
        return this.onReadyToPlay;
    }

    public final void setOnReadyToPlay(Function1<? super Long, Unit> function1) {
        this.onReadyToPlay = function1;
    }

    public final Function1<Integer, Unit> getOnSessionIdFound() {
        return this.onSessionIdFound;
    }

    public final void setOnSessionIdFound(Function1<? super Integer, Unit> function1) {
        this.onSessionIdFound = function1;
    }

    public final Function1<Long, Unit> getOnPositionMSChanged() {
        return this.onPositionMSChanged;
    }

    public final void setOnPositionMSChanged(Function1<? super Long, Unit> function1) {
        this.onPositionMSChanged = function1;
    }

    public final Function0<Unit> getOnFinished() {
        return this.onFinished;
    }

    public final void setOnFinished(Function0<Unit> function0) {
        this.onFinished = function0;
    }

    public final Function1<Boolean, Unit> getOnPlaying() {
        return this.onPlaying;
    }

    public final void setOnPlaying(Function1<? super Boolean, Unit> function1) {
        this.onPlaying = function1;
    }

    public final Function1<Boolean, Unit> getOnBuffering() {
        return this.onBuffering;
    }

    public final void setOnBuffering(Function1<? super Boolean, Unit> function1) {
        this.onBuffering = function1;
    }

    public final Function1<AssetAudioPlayerThrowable, Unit> getOnError() {
        return this.onError;
    }

    public final void setOnError(Function1<? super AssetAudioPlayerThrowable, Unit> function1) {
        this.onError = function1;
    }

    public final Function0<Unit> getOnNext() {
        return this.onNext;
    }

    public final void setOnNext(Function0<Unit> function0) {
        this.onNext = function0;
    }

    public final Function0<Unit> getOnPrev() {
        return this.onPrev;
    }

    public final void setOnPrev(Function0<Unit> function0) {
        this.onPrev = function0;
    }

    public final Function0<Unit> getOnStop() {
        return this.onStop;
    }

    public final void setOnStop(Function0<Unit> function0) {
        this.onStop = function0;
    }

    public final Function0<Unit> getOnNotificationPlayOrPause() {
        return this.onNotificationPlayOrPause;
    }

    public final void setOnNotificationPlayOrPause(Function0<Unit> function0) {
        this.onNotificationPlayOrPause = function0;
    }

    public final Function0<Unit> getOnNotificationStop() {
        return this.onNotificationStop;
    }

    public final void setOnNotificationStop(Function0<Unit> function0) {
        this.onNotificationStop = function0;
    }

    public final boolean isPlaying() {
        PlayerImplem playerImplem = this.mediaPlayer;
        if (playerImplem != null) {
            Intrinsics.checkNotNull(playerImplem);
            if (playerImplem.isPlaying()) {
                return true;
            }
        }
        return false;
    }

    public final void next() {
        Function0<Unit> function0 = this.onNext;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void prev() {
        Function0<Unit> function0 = this.onPrev;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void onAudioUpdated(String str, AudioMetas audioMetas) {
        Intrinsics.checkNotNullParameter(str, "path");
        Intrinsics.checkNotNullParameter(audioMetas, "audioMetas");
        if (Intrinsics.areEqual(this._playingPath, str) || (this._playingPath == null && Intrinsics.areEqual(this._lastOpenedPath, str))) {
            this.audioMetas = audioMetas;
            updateNotif$default(this, false, 1, null);
        }
    }

    public final void open(String str, String str2, String str3, boolean z, double d, Integer num, boolean z2, boolean z3, NotificationSettings notificationSettings, AudioMetas audioMetas, double d2, double d3, HeadsetStrategy headsetStrategy, AudioFocusStrategy audioFocusStrategy, Map<?, ?> map, MethodChannel.Result result, Context context, Map<?, ?> map2) {
        Intrinsics.checkNotNullParameter(str3, "audioType");
        Intrinsics.checkNotNullParameter(notificationSettings, "notificationSettings");
        Intrinsics.checkNotNullParameter(audioMetas, "audioMetas");
        Intrinsics.checkNotNullParameter(headsetStrategy, "headsetStrategy");
        Intrinsics.checkNotNullParameter(audioFocusStrategy, "audioFocusStrategy");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(context, c.R);
        try {
            stop$default(this, false, false, 2, null);
        } catch (Throwable th) {
            System.out.print(th);
        }
        this.displayNotification = z3;
        this.audioMetas = audioMetas;
        this.notificationSettings = notificationSettings;
        this.respectSilentMode = z2;
        this.headsetStrategy = headsetStrategy;
        this.audioFocusStrategy = audioFocusStrategy;
        this._lastOpenedPath = str;
        Job unused = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new Player$open$1(str, this, str2, str3, map, context, map2, d, d2, d3, num, z, result, null), 2, null);
    }

    public static /* synthetic */ void stop$default(Player player, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        player.stop(z, z2);
    }

    public final void stop(boolean z, boolean z2) {
        if (this.mediaPlayer != null) {
            Function1<Long, Unit> onPositionMSChanged = getOnPositionMSChanged();
            if (onPositionMSChanged != null) {
                onPositionMSChanged.invoke(0L);
            }
            PlayerImplem playerImplem = this.mediaPlayer;
            if (playerImplem != null) {
                playerImplem.stop();
            }
            PlayerImplem playerImplem2 = this.mediaPlayer;
            if (playerImplem2 != null) {
                playerImplem2.release();
            }
            Function1<Boolean, Unit> onPlaying = getOnPlaying();
            if (onPlaying != null) {
                onPlaying.invoke(false);
            }
            this.handler.removeCallbacks(this.updatePosition);
        }
        ForwardHandler forwardHandler = this.forwardHandler;
        if (forwardHandler != null) {
            Intrinsics.checkNotNull(forwardHandler);
            forwardHandler.stop();
            this.forwardHandler = null;
        }
        this.mediaPlayer = null;
        Function1<? super Double, Unit> function1 = this.onForwardRewind;
        if (function1 != null) {
            function1.invoke(Double.valueOf(0.0d));
        }
        if (z) {
            Function0<Unit> function0 = this.onStop;
            if (function0 != null) {
                function0.invoke();
            }
            updateNotif(z2);
        }
    }

    public final void toggle() {
        if (isPlaying()) {
            pause();
        } else {
            play();
        }
    }

    private final void stopForward() {
        ForwardHandler forwardHandler = this.forwardHandler;
        if (forwardHandler != null) {
            if (!forwardHandler.isActive()) {
                forwardHandler = null;
            }
            if (forwardHandler != null) {
                forwardHandler.stop();
                setPlaySpeed(this.playSpeed);
            }
        }
        Function1<? super Double, Unit> function1 = this.onForwardRewind;
        if (function1 != null) {
            function1.invoke(Double.valueOf(0.0d));
        }
    }

    public final void updateNotifPosition() {
        AudioMetas audioMetas = this.audioMetas;
        if (audioMetas != null) {
            if (!this.displayNotification) {
                audioMetas = null;
            }
            if (audioMetas != null) {
                NotificationSettings notificationSettings = this.notificationSettings;
                if (!(notificationSettings == null ? true : notificationSettings.getSeekBarEnabled())) {
                    audioMetas = null;
                }
                if (audioMetas != null) {
                    BWEMZNgHwPapSnPy.Companion.updatePosition(this.context, isPlaying(), this._positionMs, (float) this.playSpeed);
                }
            }
        }
    }

    public final void forceNotificationForGroup(AudioMetas audioMetas, boolean z, boolean z2, NotificationSettings notificationSettings) {
        Intrinsics.checkNotNullParameter(audioMetas, "audioMetas");
        Intrinsics.checkNotNullParameter(notificationSettings, "notificationSettings");
        this.notificationManager.showNotification(this.id, audioMetas, z, notificationSettings, !z2, 0);
    }

    public final void showNotification(boolean z) {
        boolean z2 = this.displayNotification;
        this.displayNotification = z;
        if (z2) {
            this.notificationManager.stopNotification();
        } else {
            updateNotif$default(this, false, 1, null);
        }
    }

    public static /* synthetic */ void updateNotif$default(Player player, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        player.updateNotif(z);
    }

    private final void updateNotif(boolean z) {
        NotificationSettings notificationSettings;
        AudioMetas audioMetas = this.audioMetas;
        if (audioMetas != null) {
            if (!this.displayNotification) {
                audioMetas = null;
            }
            if (audioMetas != null && (notificationSettings = this.notificationSettings) != null) {
                updateNotifPosition();
                this.notificationManager.showNotification(getId(), audioMetas, isPlaying(), notificationSettings, z && this.mediaPlayer == null, this._durationMs);
            }
        }
    }

    public final void play() {
        AudioFocusStrategy audioFocusStrategy = this.audioFocusStrategy;
        if (audioFocusStrategy instanceof AudioFocusStrategy.None) {
            this.isEnabledToPlayPause = true;
            this.isEnabledToChangeVolume = true;
            playerPlay();
        } else if (this.stopWhenCall.requestAudioFocus(audioFocusStrategy) == StopWhenCall.AudioState.AUTHORIZED_TO_PLAY) {
            this.isEnabledToPlayPause = true;
            this.isEnabledToChangeVolume = true;
            playerPlay();
        }
    }

    private final void playerPlay() {
        if (this.isEnabledToPlayPause) {
            PlayerImplem playerImplem = this.mediaPlayer;
            if (playerImplem != null) {
                stopForward();
                playerImplem.play();
                this._lastPositionMs = null;
                this.handler.post(this.updatePosition);
                Function1<Boolean, Unit> onPlaying = getOnPlaying();
                if (onPlaying != null) {
                    onPlaying.invoke(true);
                }
                updateNotif$default(this, false, 1, null);
                return;
            }
            return;
        }
        this.stopWhenCall.requestAudioFocus(this.audioFocusStrategy);
    }

    public final void pause() {
        PlayerImplem playerImplem;
        if (this.isEnabledToPlayPause && (playerImplem = this.mediaPlayer) != null) {
            playerImplem.pause();
            this.handler.removeCallbacks(this.updatePosition);
            stopForward();
            Function1<Boolean, Unit> onPlaying = getOnPlaying();
            if (onPlaying != null) {
                onPlaying.invoke(false);
            }
            updateNotif$default(this, false, 1, null);
        }
    }

    public final void loopSingleAudio(boolean z) {
        PlayerImplem playerImplem = this.mediaPlayer;
        if (playerImplem != null) {
            playerImplem.setLoopSingleAudio(z);
        }
    }

    public final void seek(long j) {
        PlayerImplem playerImplem = this.mediaPlayer;
        if (playerImplem != null) {
            playerImplem.seekTo(Math.max(j, 0L));
            Function1<Long, Unit> onPositionMSChanged = getOnPositionMSChanged();
            if (onPositionMSChanged != null) {
                onPositionMSChanged.invoke(Long.valueOf(playerImplem.getCurrentPositionMs()));
            }
        }
    }

    public final void seekBy(long j) {
        PlayerImplem playerImplem = this.mediaPlayer;
        if (playerImplem != null) {
            seek(playerImplem.getCurrentPositionMs() + j);
        }
    }

    public final void setVolume(double d) {
        int ringerMode;
        if (this.isEnabledToChangeVolume) {
            this.volume = d;
            PlayerImplem playerImplem = this.mediaPlayer;
            if (playerImplem != null) {
                if (this.respectSilentMode && ((ringerMode = this.am.getRingerMode()) == 0 || ringerMode == 1)) {
                    d = 0.0d;
                }
                playerImplem.setVolume((float) d);
                Function1<Double, Unit> onVolumeChanged = getOnVolumeChanged();
                if (onVolumeChanged != null) {
                    onVolumeChanged.invoke(Double.valueOf(this.volume));
                }
            }
        }
    }

    public final void setPlaySpeed(double d) {
        if (d >= 0.0d) {
            ForwardHandler forwardHandler = this.forwardHandler;
            if (forwardHandler != null) {
                Intrinsics.checkNotNull(forwardHandler);
                forwardHandler.stop();
                this.forwardHandler = null;
            }
            this.playSpeed = d;
            PlayerImplem playerImplem = this.mediaPlayer;
            if (playerImplem != null) {
                playerImplem.setPlaySpeed((float) d);
                Function1<Double, Unit> onPlaySpeedChanged = getOnPlaySpeedChanged();
                if (onPlaySpeedChanged != null) {
                    onPlaySpeedChanged.invoke(Double.valueOf(this.playSpeed));
                }
            }
        }
    }

    public final void setPitch(double d) {
        if (d >= 0.0d) {
            ForwardHandler forwardHandler = this.forwardHandler;
            if (forwardHandler != null) {
                Intrinsics.checkNotNull(forwardHandler);
                forwardHandler.stop();
                this.forwardHandler = null;
            }
            this.pitch = d;
            PlayerImplem playerImplem = this.mediaPlayer;
            if (playerImplem != null) {
                playerImplem.setPitch((float) d);
                Function1<Double, Unit> onPitchChanged = getOnPitchChanged();
                if (onPitchChanged != null) {
                    onPitchChanged.invoke(Double.valueOf(this.pitch));
                }
            }
        }
    }

    public final void forwardRewind(double d) {
        if (this.forwardHandler == null) {
            this.forwardHandler = new ForwardHandler();
        }
        PlayerImplem playerImplem = this.mediaPlayer;
        if (playerImplem != null) {
            playerImplem.pause();
        }
        Function1<? super Double, Unit> function1 = this.onForwardRewind;
        if (function1 != null) {
            function1.invoke(Double.valueOf(d));
        }
        ForwardHandler forwardHandler = this.forwardHandler;
        Intrinsics.checkNotNull(forwardHandler);
        forwardHandler.start(this, d);
    }

    public final void updateEnableToPlay(StopWhenCall.AudioState audioState) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(audioState, "audioState");
        AudioFocusStrategy audioFocusStrategy = this.audioFocusStrategy;
        AudioFocusStrategy.Request request = audioFocusStrategy instanceof AudioFocusStrategy.Request ? (AudioFocusStrategy.Request) audioFocusStrategy : null;
        if (request != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[audioState.ordinal()];
            if (i == 1) {
                this.isEnabledToPlayPause = true;
                this.isEnabledToChangeVolume = true;
                if (request.getResumeAfterInterruption() && (bool = this.wasPlayingBeforeEnablePlayChange) != null) {
                    if (bool.booleanValue()) {
                        playerPlay();
                    } else {
                        pause();
                    }
                }
                Double d = this.volumeBeforePhoneStateChanged;
                if (d != null) {
                    setVolume(d.doubleValue());
                }
                this.wasPlayingBeforeEnablePlayChange = null;
                this.volumeBeforePhoneStateChanged = null;
            } else if (i == 2) {
                this.volumeBeforePhoneStateChanged = Double.valueOf(this.volume);
                setVolume(0.3d);
                this.isEnabledToChangeVolume = false;
            } else if (i == 3) {
                this.wasPlayingBeforeEnablePlayChange = Boolean.valueOf(isPlaying());
                pause();
                this.isEnabledToPlayPause = false;
            }
        }
    }

    public final void askPlayOrPause() {
        Function0<Unit> function0 = this.onNotificationPlayOrPause;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void askStop() {
        Function0<Unit> function0 = this.onNotificationStop;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void onHeadsetPlugged(boolean z) {
        Function0<Unit> function0;
        Function0<Unit> function02;
        if (z) {
            int i = WhenMappings.$EnumSwitchMapping$1[this.headsetStrategy.ordinal()];
            if (i != 1 && i == 2 && !isPlaying() && (function02 = this.onNotificationPlayOrPause) != null) {
                function02.invoke();
                return;
            }
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$1[this.headsetStrategy.ordinal()];
        if ((i2 == 1 || i2 == 2) && isPlaying() && (function0 = this.onNotificationPlayOrPause) != null) {
            function0.invoke();
        }
    }
}
