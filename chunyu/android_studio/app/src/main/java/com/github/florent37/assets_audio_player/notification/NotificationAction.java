package com.github.florent37.assets_audio_player.notification;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NotificationAction.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationAction;", "Ljava/io/Serializable;", "()V", "Companion", "Hide", "Show", "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;", "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class NotificationAction implements Serializable {
    public static final String ACTION_NEXT = "next";
    public static final String ACTION_PREV = "prev";
    public static final String ACTION_SELECT = "select";
    public static final String ACTION_STOP = "stop";
    public static final String ACTION_TOGGLE = "toggle";
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ NotificationAction(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private NotificationAction() {
    }

    /* compiled from: NotificationAction.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;", "", "()V", "ACTION_NEXT", "", "ACTION_PREV", "ACTION_SELECT", "ACTION_STOP", "ACTION_TOGGLE", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: NotificationAction.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJG\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;", "Lcom/github/florent37/assets_audio_player/notification/NotificationAction;", "isPlaying", "", "audioMetas", "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", NotificationService.EXTRA_PLAYER_ID, "", "notificationSettings", "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", "durationMs", "", "(ZLcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;J)V", "getAudioMetas", "()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "getDurationMs", "()J", "()Z", "getNotificationSettings", "()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", "getPlayerId", "()Ljava/lang/String;", "copyWith", "(Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Show extends NotificationAction {
        private final AudioMetas audioMetas;
        private final long durationMs;
        private final boolean isPlaying;
        private final NotificationSettings notificationSettings;
        private final String playerId;

        public final boolean isPlaying() {
            return this.isPlaying;
        }

        public final AudioMetas getAudioMetas() {
            return this.audioMetas;
        }

        public final String getPlayerId() {
            return this.playerId;
        }

        public final NotificationSettings getNotificationSettings() {
            return this.notificationSettings;
        }

        public final long getDurationMs() {
            return this.durationMs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Show(boolean z, AudioMetas audioMetas, String str, NotificationSettings notificationSettings, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(audioMetas, "audioMetas");
            Intrinsics.checkNotNullParameter(str, NotificationService.EXTRA_PLAYER_ID);
            Intrinsics.checkNotNullParameter(notificationSettings, "notificationSettings");
            this.isPlaying = z;
            this.audioMetas = audioMetas;
            this.playerId = str;
            this.notificationSettings = notificationSettings;
            this.durationMs = j;
        }

        public static /* synthetic */ Show copyWith$default(Show show, Boolean bool, AudioMetas audioMetas, String str, NotificationSettings notificationSettings, Long l, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = null;
            }
            if ((i & 2) != 0) {
                audioMetas = null;
            }
            if ((i & 4) != 0) {
                str = null;
            }
            if ((i & 8) != 0) {
                notificationSettings = null;
            }
            if ((i & 16) != 0) {
                l = null;
            }
            return show.copyWith(bool, audioMetas, str, notificationSettings, l);
        }

        public final Show copyWith(Boolean bool, AudioMetas audioMetas, String str, NotificationSettings notificationSettings, Long l) {
            long j;
            boolean booleanValue = bool == null ? this.isPlaying : bool.booleanValue();
            if (audioMetas == null) {
                audioMetas = this.audioMetas;
            }
            if (str == null) {
                str = this.playerId;
            }
            if (notificationSettings == null) {
                notificationSettings = this.notificationSettings;
            }
            if (l == null) {
                j = this.durationMs;
            } else {
                j = l.longValue();
            }
            return new Show(booleanValue, audioMetas, str, notificationSettings, j);
        }
    }

    /* compiled from: NotificationAction.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;", "Lcom/github/florent37/assets_audio_player/notification/NotificationAction;", "()V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Hide extends NotificationAction {
        public Hide() {
            super(null);
        }
    }
}
