package com.github.florent37.assets_audio_player.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.github.florent37.assets_audio_player.AssetsAudioPlayer;
import com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin;
import com.github.florent37.assets_audio_player.Player;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NotificationActionReceiver.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/NotificationActionReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", c.R, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NotificationActionReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        AssetsAudioPlayer assetsAudioPlayer;
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(intent, "intent");
        String stringExtra = intent.getStringExtra(NotificationService.EXTRA_PLAYER_ID);
        if (stringExtra != null) {
            String stringExtra2 = intent.getStringExtra(NotificationService.TRACK_ID) == null ? "" : intent.getStringExtra(NotificationService.TRACK_ID);
            AssetsAudioPlayerPlugin instance = AssetsAudioPlayerPlugin.Companion.getInstance();
            Player player = null;
            if (!(instance == null || (assetsAudioPlayer = instance.getAssetsAudioPlayer()) == null)) {
                player = assetsAudioPlayer.getPlayer(stringExtra);
            }
            if (player != null && (action = intent.getAction()) != null) {
                switch (action.hashCode()) {
                    case -906021636:
                        if (action.equals(NotificationAction.ACTION_SELECT)) {
                            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                            Intrinsics.checkNotNull(launchIntentForPackage);
                            Intrinsics.checkNotNullExpressionValue(launchIntentForPackage, "context.packageManager.g…ge(context.packageName)!!");
                            launchIntentForPackage.putExtra(NotificationService.EXTRA_PLAYER_ID, stringExtra);
                            launchIntentForPackage.putExtra(NotificationService.TRACK_ID, stringExtra2);
                            context.startActivity(launchIntentForPackage);
                            return;
                        }
                        return;
                    case -868304044:
                        if (action.equals(NotificationAction.ACTION_TOGGLE)) {
                            player.askPlayOrPause();
                            return;
                        }
                        return;
                    case 3377907:
                        if (action.equals(NotificationAction.ACTION_NEXT)) {
                            player.next();
                            return;
                        }
                        return;
                    case 3449395:
                        if (action.equals(NotificationAction.ACTION_PREV)) {
                            player.prev();
                            return;
                        }
                        return;
                    case 3540994:
                        if (action.equals(NotificationAction.ACTION_STOP)) {
                            player.askStop();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }
}
