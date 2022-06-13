package com.github.florent37.assets_audio_player;

import android.os.Handler;
import android.os.Message;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Player.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/github/florent37/assets_audio_player/ForwardHandler;", "Landroid/os/Handler;", "()V", "isActive", "", "()Z", "player", "Lcom/github/florent37/assets_audio_player/Player;", "speed", "", "handleMessage", "", "msg", "Landroid/os/Message;", TtmlNode.START, NotificationAction.ACTION_STOP, "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ForwardHandler extends Handler {
    public static final Companion Companion = new Companion(null);
    public static final long DELAY = 300;
    public static final int MESSAGE_FORWARD = 1;
    private Player player;
    private double speed = 1.0d;

    /* compiled from: Player.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;", "", "()V", "DELAY", "", "MESSAGE_FORWARD", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean isActive() {
        return hasMessages(1);
    }

    public final void start(Player player, double d) {
        Intrinsics.checkNotNullParameter(player, "player");
        this.player = player;
        this.speed = d;
        removeMessages(1);
        sendEmptyMessage(1);
    }

    public final void stop() {
        removeMessages(1);
        this.player = null;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Player player;
        Intrinsics.checkNotNullParameter(message, "msg");
        super.handleMessage(message);
        if (message.what == 1 && (player = this.player) != null) {
            player.seekBy((long) (((double) 300) * this.speed));
            sendEmptyMessageDelayed(1, 300);
        }
    }
}
