package com.github.florent37.assets_audio_player.notification;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.media.session.MediaButtonReceiver;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;

/* compiled from: CustomMediaButtonReceiver.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/CustomMediaButtonReceiver;", "Landroidx/media/session/MediaButtonReceiver;", "()V", "onReceive", "", c.R, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CustomMediaButtonReceiver extends MediaButtonReceiver {
    @Override // androidx.media.session.MediaButtonReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            super.onReceive(context, intent);
        } catch (Exception e) {
            String name = getClass().getName();
            String message = e.getMessage();
            if (message == null) {
                message = "unknown error";
            }
            Log.e(name, message);
        }
    }
}
