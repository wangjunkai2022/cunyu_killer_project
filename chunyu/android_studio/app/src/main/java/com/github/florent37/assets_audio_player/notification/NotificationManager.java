package com.github.florent37.assets_audio_player.notification;

import android.content.Context;
import android.content.Intent;
import com.github.florent37.assets_audio_player.AssetsAudioPlayer;
import com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NotificationManager.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u0006J6\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationManager;", "", c.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "hideNotificationService", "", "definitively", "showNotification", NotificationService.EXTRA_PLAYER_ID, "", "audioMetas", "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "isPlaying", "notificationSettings", "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;", NotificationAction.ACTION_STOP, "durationMs", "", "stopNotification", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NotificationManager {
    private boolean closed;
    private final Context context;

    public NotificationManager(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        this.context = context;
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final void setClosed(boolean z) {
        this.closed = z;
    }

    public final void showNotification(String str, AudioMetas audioMetas, boolean z, NotificationSettings notificationSettings, boolean z2, long j) {
        AssetsAudioPlayer assetsAudioPlayer;
        Intrinsics.checkNotNullParameter(str, NotificationService.EXTRA_PLAYER_ID);
        Intrinsics.checkNotNullParameter(audioMetas, "audioMetas");
        Intrinsics.checkNotNullParameter(notificationSettings, "notificationSettings");
        try {
            if (!this.closed) {
                if (z2) {
                    stopNotification();
                } else {
                    Context context = this.context;
                    Intent intent = new Intent(this.context, NotificationService.class);
                    intent.putExtra(NotificationService.EXTRA_NOTIFICATION_ACTION, new NotificationAction.Show(z, audioMetas, str, notificationSettings, j));
                    context.startService(intent);
                }
                AssetsAudioPlayerPlugin instance = AssetsAudioPlayerPlugin.Companion.getInstance();
                if (!(instance == null || (assetsAudioPlayer = instance.getAssetsAudioPlayer()) == null)) {
                    assetsAudioPlayer.registerLastPlayerWithNotif(str);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void stopNotification() {
        try {
            Context context = this.context;
            Intent intent = new Intent(this.context, NotificationService.class);
            intent.putExtra(NotificationService.EXTRA_NOTIFICATION_ACTION, new NotificationAction.Hide());
            context.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static /* synthetic */ void hideNotificationService$default(NotificationManager notificationManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        notificationManager.hideNotificationService(z);
    }

    public final void hideNotificationService(boolean z) {
        try {
            this.context.stopService(new Intent(this.context, NotificationService.class));
            this.closed = z;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
