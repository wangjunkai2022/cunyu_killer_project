package com.github.florent37.assets_audio_player.notification;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaButtonsReceiver.kt */
@Metadata(d1 = {"\u0000C\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\f\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u000fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\tH\u0002R\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;", "", c.R, "Landroid/content/Context;", "onAction", "Lkotlin/Function1;", "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;", "", "onNotifSeek", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "mediaSessionCallback", "com/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1", "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;", "getAdjustedKeyCode", "", "keyEvent", "Landroid/view/KeyEvent;", "handleMediaButton", "action", "mapAction", "keyCode", "onIntentReceive", "intent", "Landroid/content/Intent;", "seekPlayerTo", "pos", "Companion", "MediaButtonAction", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MediaButtonsReceiver {
    public static final Companion Companion = new Companion(null);
    private static MediaButtonsReceiver instance;
    private static MediaSessionCompat mediaSessionCompat;
    private final MediaButtonsReceiver$mediaSessionCallback$1 mediaSessionCallback = new MediaSessionCompat.Callback() { // from class: com.github.florent37.assets_audio_player.notification.MediaButtonsReceiver$mediaSessionCallback$1
        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            MediaButtonsReceiver.this.onIntentReceive(intent);
            return super.onMediaButtonEvent(intent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSeekTo(long j) {
            super.onSeekTo(j);
            MediaButtonsReceiver.this.seekPlayerTo(j);
        }
    };
    private final Function1<MediaButtonAction, Unit> onAction;
    private final Function1<Long, Unit> onNotifSeek;

    /* compiled from: MediaButtonsReceiver.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;", "", "(Ljava/lang/String;I)V", "play", "pause", "playOrPause", NotificationAction.ACTION_NEXT, NotificationAction.ACTION_PREV, NotificationAction.ACTION_STOP, "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public enum MediaButtonAction {
        play,
        pause,
        playOrPause,
        next,
        prev,
        stop
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MediaButtonsReceiver(Context context, Function1<? super MediaButtonAction, Unit> function1, Function1<? super Long, Unit> function12) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(function1, "onAction");
        Intrinsics.checkNotNullParameter(function12, "onNotifSeek");
        this.onAction = function1;
        this.onNotifSeek = function12;
        Companion companion = Companion;
        instance = this;
        Companion.getMediaSessionCompat(context).setCallback(this.mediaSessionCallback);
    }

    /* compiled from: MediaButtonsReceiver.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;", "", "()V", "instance", "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;", "getInstance", "()Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;", "setInstance", "(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V", "mediaSessionCompat", "Landroid/support/v4/media/session/MediaSessionCompat;", "getMediaSessionCompat", c.R, "Landroid/content/Context;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MediaButtonsReceiver getInstance() {
            return MediaButtonsReceiver.instance;
        }

        public final void setInstance(MediaButtonsReceiver mediaButtonsReceiver) {
            MediaButtonsReceiver.instance = mediaButtonsReceiver;
        }

        public final MediaSessionCompat getMediaSessionCompat(Context context) {
            Intrinsics.checkNotNullParameter(context, c.R);
            if (MediaButtonsReceiver.mediaSessionCompat == null) {
                MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "MediaButtonsReceiver", null, null);
                mediaSessionCompat.setFlags(1);
                mediaSessionCompat.setActive(true);
                MediaButtonsReceiver.mediaSessionCompat = mediaSessionCompat;
            }
            MediaSessionCompat mediaSessionCompat2 = MediaButtonsReceiver.mediaSessionCompat;
            Intrinsics.checkNotNull(mediaSessionCompat2);
            return mediaSessionCompat2;
        }
    }

    private final int getAdjustedKeyCode(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 126 || keyCode == 127) {
            return 85;
        }
        return keyCode;
    }

    private final MediaButtonAction mapAction(int i) {
        if (i == 126) {
            return MediaButtonAction.play;
        }
        if (i == 127) {
            return MediaButtonAction.pause;
        }
        switch (i) {
            case 85:
                return MediaButtonAction.playOrPause;
            case 86:
                return MediaButtonAction.stop;
            case 87:
                return MediaButtonAction.next;
            case 88:
                return MediaButtonAction.prev;
            default:
                return null;
        }
    }

    public final void onIntentReceive(Intent intent) {
        MediaButtonAction mapAction;
        if (intent != null && Intrinsics.areEqual(intent.getAction(), "android.intent.action.MEDIA_BUTTON")) {
            Bundle extras = intent.getExtras();
            Object obj = extras == null ? null : extras.get("android.intent.extra.KEY_EVENT");
            KeyEvent keyEvent = obj instanceof KeyEvent ? (KeyEvent) obj : null;
            if (keyEvent != null) {
                if (!(keyEvent.getAction() == 0)) {
                    keyEvent = null;
                }
                if (keyEvent != null && (mapAction = mapAction(getAdjustedKeyCode(keyEvent))) != null) {
                    handleMediaButton(mapAction);
                }
            }
        }
    }

    public final void seekPlayerTo(long j) {
        this.onNotifSeek.invoke(Long.valueOf(j));
    }

    private final void handleMediaButton(MediaButtonAction mediaButtonAction) {
        this.onAction.invoke(mediaButtonAction);
    }
}
