package com.NlSSLrKK.gPIHumaP;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media.app.NotificationCompat;
import androidx.media.session.MediaButtonReceiver;
import com.github.florent37.assets_audio_player.R;
import com.github.florent37.assets_audio_player.notification.AudioMetas;
import com.github.florent37.assets_audio_player.notification.MediaButtonsReceiver;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.notification.NotificationSettings;
import com.google.android.exoplayer2.C;
import com.umeng.analytics.pro.c;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;

/* compiled from: NotificationService.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u001a\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00122\b\u0010\u001d\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010 \u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010!\u001a\u00020\u0004H\u0002J\u0014\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010%\u001a\u00020\u0004H\u0016J\b\u0010&\u001a\u00020\u0004H\u0016J \u0010'\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u0012H\u0016J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0006H\u0016¨\u0006-"}, d2 = {"Lcom/NlSSLrKK/gPIHumaP/BWEMZNgHwPapSnPy;", "Landroid/app/Service;", "()V", "createNotificationChannel", "", "createReturnIntent", "Landroid/content/Intent;", "forAction", "", "forPlayer", "audioMetas", "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "displayNotification", "action", "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;", "bitmap", "Landroid/graphics/Bitmap;", "getCustomIconOrDefault", "", c.R, "Landroid/content/Context;", "manifestName", "resourceName", "defaultIcon", "getNextIcon", "getPauseIcon", "getPlayIcon", "getPrevIcon", "getResourceID", "iconName", "(Ljava/lang/String;)Ljava/lang/Integer;", "getSmallIcon", "getStopIcon", "hideNotif", "onBind", "Landroid/os/IBinder;", "intent", "onCreate", "onDestroy", "onStartCommand", "flags", "startId", "onTaskRemoved", "rootIntent", "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BWEMZNgHwPapSnPy extends Service {
    public static final String CHANNEL_ID = "assets_audio_player";
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_NOTIFICATION_ACTION = "notificationAction";
    public static final String EXTRA_PLAYER_ID = "playerId";
    public static final String MEDIA_SESSION_TAG = "assets_audio_player";
    public static final int NOTIFICATION_ID = 1;
    public static final String TRACK_ID = "trackID";
    public static final String manifestIcon = "assets.audio.player.notification.icon";
    public static final String manifestIconNext = "assets.audio.player.notification.icon.next";
    public static final String manifestIconPause = "assets.audio.player.notification.icon.pause";
    public static final String manifestIconPlay = "assets.audio.player.notification.icon.play";
    public static final String manifestIconPrev = "assets.audio.player.notification.icon.prev";
    public static final String manifestIconStop = "assets.audio.player.notification.icon.stop";
    private static PlaybackStateCompat stateCompat;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* compiled from: NotificationService.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018JB\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00182\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0004J&\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020&J\u001e\u0010'\u001a\u00020(*\u00020(2\u0006\u0010)\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/NlSSLrKK/gPIHumaP/BWEMZNgHwPapSnPy$Companion;", "", "()V", "CHANNEL_ID", "", "EXTRA_NOTIFICATION_ACTION", "EXTRA_PLAYER_ID", "MEDIA_SESSION_TAG", "NOTIFICATION_ID", "", "TRACK_ID", "manifestIcon", "manifestIconNext", "manifestIconPause", "manifestIconPlay", "manifestIconPrev", "manifestIconStop", "stateCompat", "Landroid/support/v4/media/session/PlaybackStateCompat;", "timeDiffer", "", "old", "new", "minDifferenceMS", "", "updateNotifMetaData", "", c.R, "Landroid/content/Context;", "display", "durationMs", "title", "artist", "album", "updatePosition", "isPlaying", "currentPositionMs", "speed", "", "putStringIfNotNull", "Landroid/support/v4/media/MediaMetadataCompat$Builder;", "key", "value", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean timeDiffer(PlaybackStateCompat playbackStateCompat, PlaybackStateCompat playbackStateCompat2, long j) {
            Intrinsics.checkNotNullParameter(playbackStateCompat2, "new");
            if (playbackStateCompat == null) {
                return true;
            }
            if (Math.abs(playbackStateCompat2.getPosition() - playbackStateCompat.getPosition()) > j) {
                return true;
            }
            return false;
        }

        public final void updatePosition(Context context, boolean z, long j, float f) {
            Intrinsics.checkNotNullParameter(context, c.R);
            MediaSessionCompat mediaSessionCompat = MediaButtonsReceiver.Companion.getMediaSessionCompat(context);
            PlaybackStateCompat build = new PlaybackStateCompat.Builder().setActions(256).setState(z ? 3 : 2, j, z ? f : 0.0f).build();
            PlaybackStateCompat playbackStateCompat = BWEMZNgHwPapSnPy.stateCompat;
            boolean z2 = false;
            if (playbackStateCompat != null && playbackStateCompat.getState() == build.getState()) {
                z2 = true;
            }
            if (z2) {
                PlaybackStateCompat playbackStateCompat2 = BWEMZNgHwPapSnPy.stateCompat;
                if (Intrinsics.areEqual(playbackStateCompat2 == null ? null : Float.valueOf(playbackStateCompat2.getPlaybackSpeed()), f)) {
                    Companion companion = BWEMZNgHwPapSnPy.Companion;
                    PlaybackStateCompat playbackStateCompat3 = BWEMZNgHwPapSnPy.stateCompat;
                    Intrinsics.checkNotNullExpressionValue(build, "newState");
                    if (!companion.timeDiffer(playbackStateCompat3, build, 2000)) {
                        return;
                    }
                }
            }
            Companion companion2 = BWEMZNgHwPapSnPy.Companion;
            BWEMZNgHwPapSnPy.stateCompat = build;
            mediaSessionCompat.setPlaybackState(BWEMZNgHwPapSnPy.stateCompat);
        }

        private final MediaMetadataCompat.Builder putStringIfNotNull(MediaMetadataCompat.Builder builder, String str, String str2) {
            if (str2 == null) {
                return builder;
            }
            MediaMetadataCompat.Builder putString = builder.putString(str, str2);
            Intrinsics.checkNotNullExpressionValue(putString, "this.putString(key, value)");
            return putString;
        }

        public final void updateNotifMetaData(Context context, boolean z, long j, String str, String str2, String str3) {
            Intrinsics.checkNotNullParameter(context, c.R);
            MediaSessionCompat mediaSessionCompat = MediaButtonsReceiver.Companion.getMediaSessionCompat(context);
            if (Build.VERSION.SDK_INT >= 21) {
                MediaMetadataCompat.Builder putStringIfNotNull = putStringIfNotNull(putStringIfNotNull(putStringIfNotNull(new MediaMetadataCompat.Builder(), MediaMetadataCompat.METADATA_KEY_TITLE, str), MediaMetadataCompat.METADATA_KEY_ARTIST, str2), MediaMetadataCompat.METADATA_KEY_ALBUM, str3);
                if (!z || j == 0) {
                    putStringIfNotNull.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, C.TIME_UNSET);
                } else {
                    putStringIfNotNull.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, j);
                }
                mediaSessionCompat.setMetadata(putStringIfNotNull.build());
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.MEDIA_BUTTON")) {
            MediaButtonsReceiver.Companion companion = MediaButtonsReceiver.Companion;
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            MediaButtonReceiver.handleIntent(companion.getMediaSessionCompat(applicationContext), intent);
        }
        Serializable serializableExtra = intent.getSerializableExtra(EXTRA_NOTIFICATION_ACTION);
        if (serializableExtra instanceof NotificationAction.Show) {
            displayNotification((NotificationAction.Show) serializableExtra);
            return 2;
        } else if (!(serializableExtra instanceof NotificationAction.Hide)) {
            return 2;
        } else {
            hideNotif();
            return 2;
        }
    }

    private final Intent createReturnIntent(String str, String str2, AudioMetas audioMetas) {
        Intent putExtra = new Intent(this, EMWMDLBAfCpPMdJI.class).setAction(str).putExtra(EXTRA_PLAYER_ID, str2).putExtra(TRACK_ID, audioMetas.getTrackID());
        Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(this, Notificatio…K_ID, audioMetas.trackID)");
        return putExtra;
    }

    private final void displayNotification(NotificationAction.Show show) {
        Job unused = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new BWEMZNgHwPapSnPy$displayNotification$1(this, show, null), 2, null);
    }

    private final int getSmallIcon(Context context) {
        return getCustomIconOrDefault(context, manifestIcon, null, R.drawable.exo_icon_circular_play);
    }

    private final int getPlayIcon(Context context, String str) {
        return getCustomIconOrDefault(context, manifestIconPlay, str, R.drawable.exo_icon_play);
    }

    private final int getPauseIcon(Context context, String str) {
        return getCustomIconOrDefault(context, manifestIconPause, str, R.drawable.exo_icon_pause);
    }

    private final int getNextIcon(Context context, String str) {
        return getCustomIconOrDefault(context, manifestIconNext, str, R.drawable.exo_icon_next);
    }

    private final int getPrevIcon(Context context, String str) {
        return getCustomIconOrDefault(context, manifestIconPrev, str, R.drawable.exo_icon_previous);
    }

    private final int getStopIcon(Context context, String str) {
        return getCustomIconOrDefault(context, manifestIconStop, str, R.drawable.exo_icon_stop);
    }

    private final int getCustomIconOrDefault(Context context, String str, String str2, int i) {
        Integer resourceID;
        try {
            resourceID = getResourceID(str2);
        } catch (Throwable unused) {
        }
        if (resourceID != null) {
            return resourceID.intValue();
        }
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
        Object obj = applicationInfo.metaData.get(str);
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num != null) {
            return num.intValue();
        }
        return i;
    }

    private final Integer getResourceID(String str) {
        if (str == null) {
            return null;
        }
        return Integer.valueOf(getResources().getIdentifier(str, "drawable", getApplicationContext().getPackageName()));
    }

    public final void displayNotification(NotificationAction.Show show, Bitmap bitmap) {
        createNotificationChannel();
        MediaButtonsReceiver.Companion companion = MediaButtonsReceiver.Companion;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        MediaSessionCompat mediaSessionCompat = companion.getMediaSessionCompat(applicationContext);
        NotificationSettings notificationSettings = show.getNotificationSettings();
        Companion companion2 = Companion;
        Context applicationContext2 = getApplicationContext();
        boolean seekBarEnabled = notificationSettings.getSeekBarEnabled();
        String title = show.getAudioMetas().getTitle();
        String artist = show.getAudioMetas().getArtist();
        String album = show.getAudioMetas().getAlbum();
        long durationMs = show.getDurationMs();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
        companion2.updateNotifMetaData(applicationContext2, seekBarEnabled, durationMs, title, artist, album);
        Intent putExtra = createReturnIntent(NotificationAction.ACTION_TOGGLE, show.getPlayerId(), show.getAudioMetas()).putExtra(EXTRA_NOTIFICATION_ACTION, NotificationAction.Show.copyWith$default(show, Boolean.valueOf(!show.isPlaying()), null, null, null, null, 30, null));
        Intrinsics.checkNotNullExpressionValue(putExtra, "createReturnIntent(forAc…laying\n                ))");
        BWEMZNgHwPapSnPy bWEMZNgHwPapSnPy = this;
        PendingIntent broadcast = PendingIntent.getBroadcast(bWEMZNgHwPapSnPy, 0, putExtra, 201326592);
        MediaButtonReceiver.handleIntent(mediaSessionCompat, putExtra);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(bWEMZNgHwPapSnPy, "assets_audio_player");
        if (notificationSettings.getPrevEnabled()) {
            builder.addAction(getPrevIcon(bWEMZNgHwPapSnPy, show.getNotificationSettings().getPreviousIcon()), NotificationAction.ACTION_PREV, PendingIntent.getBroadcast(bWEMZNgHwPapSnPy, 0, createReturnIntent(NotificationAction.ACTION_PREV, show.getPlayerId(), show.getAudioMetas()), 201326592));
        }
        if (notificationSettings.getPlayPauseEnabled()) {
            builder.addAction(show.isPlaying() ? getPauseIcon(bWEMZNgHwPapSnPy, show.getNotificationSettings().getPauseIcon()) : getPlayIcon(bWEMZNgHwPapSnPy, show.getNotificationSettings().getPlayIcon()), show.isPlaying() ? "pause" : "play", broadcast);
        }
        if (notificationSettings.getNextEnabled()) {
            builder.addAction(getNextIcon(bWEMZNgHwPapSnPy, show.getNotificationSettings().getNextIcon()), NotificationAction.ACTION_NEXT, PendingIntent.getBroadcast(bWEMZNgHwPapSnPy, 0, createReturnIntent(NotificationAction.ACTION_NEXT, show.getPlayerId(), show.getAudioMetas()), 201326592));
        }
        if (notificationSettings.getStopEnabled()) {
            builder.addAction(getStopIcon(bWEMZNgHwPapSnPy, show.getNotificationSettings().getStopIcon()), NotificationAction.ACTION_STOP, PendingIntent.getBroadcast(bWEMZNgHwPapSnPy, 0, createReturnIntent(NotificationAction.ACTION_STOP, show.getPlayerId(), show.getAudioMetas()), 201326592));
        }
        NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
        int numberEnabled = notificationSettings.numberEnabled();
        if (numberEnabled == 1) {
            mediaStyle.setShowActionsInCompactView(0);
        } else if (numberEnabled == 2) {
            mediaStyle.setShowActionsInCompactView(0, 1);
        } else if (numberEnabled == 3) {
            mediaStyle.setShowActionsInCompactView(0, 1, 2);
        } else if (numberEnabled != 4) {
            mediaStyle.setShowActionsInCompactView(new int[0]);
        } else {
            mediaStyle.setShowActionsInCompactView(0, 1, 2, 3);
        }
        NotificationCompat.Builder onlyAlertOnce = builder.setStyle(mediaStyle.setShowCancelButton(true).setMediaSession(mediaSessionCompat.getSessionToken())).setSmallIcon(getSmallIcon(bWEMZNgHwPapSnPy)).setVisibility(1).setPriority(2).setContentTitle(show.getAudioMetas().getTitle()).setContentText(show.getAudioMetas().getArtist()).setOnlyAlertOnce(true);
        String album2 = show.getAudioMetas().getAlbum();
        if (!(album2 == null || album2.length() == 0)) {
            onlyAlertOnce.setSubText(show.getAudioMetas().getAlbum());
        }
        NotificationCompat.Builder contentIntent = onlyAlertOnce.setContentIntent(PendingIntent.getBroadcast(bWEMZNgHwPapSnPy, 0, createReturnIntent(NotificationAction.ACTION_SELECT, show.getPlayerId(), show.getAudioMetas()), 335544320));
        if (bitmap != null) {
            contentIntent.setLargeIcon(bitmap);
        }
        Notification build = contentIntent.setShowWhen(false).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(this, CHANNEL_ID…\n                .build()");
        startForeground(1, build);
        if (!show.isPlaying() && Build.VERSION.SDK_INT >= 24) {
            stopForeground(2);
        }
    }

    private final void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("assets_audio_player", "Foreground Service Channel", 2);
            notificationChannel.setDescription("assets_audio_player");
            notificationChannel.setShowBadge(false);
            notificationChannel.setLockscreenVisibility(1);
            NotificationManagerCompat.from(getApplicationContext()).createNotificationChannel(notificationChannel);
        }
    }

    private final void hideNotif() {
        NotificationManagerCompat.from(getApplicationContext()).cancel(1);
        stopForeground(true);
        stopSelf();
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "rootIntent");
        hideNotif();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
