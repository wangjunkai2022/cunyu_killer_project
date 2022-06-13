package com.github.florent37.assets_audio_player.stopwhencall;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeadsetManager.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "pluggedListener", "Lkotlin/Function1;", "", "", "getPluggedListener", "()Lkotlin/jvm/functions/Function1;", "setPluggedListener", "(Lkotlin/jvm/functions/Function1;)V", "onReceive", c.R, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
final class MusicIntentReceiver extends BroadcastReceiver {
    private Function1<? super Boolean, Unit> pluggedListener;

    public final Function1<Boolean, Unit> getPluggedListener() {
        return this.pluggedListener;
    }

    public final void setPluggedListener(Function1<? super Boolean, Unit> function1) {
        this.pluggedListener = function1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Function1<? super Boolean, Unit> function1;
        Function1<? super Boolean, Unit> function12;
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(intent.getAction(), "android.media.AUDIO_BECOMING_NOISY") && (function12 = this.pluggedListener) != null) {
            function12.invoke(false);
        }
        if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.HEADSET_PLUG")) {
            int intExtra = intent.getIntExtra("state", -1);
            if (intExtra == 0) {
                Function1<? super Boolean, Unit> function13 = this.pluggedListener;
                if (function13 != null) {
                    function13.invoke(false);
                }
            } else if (intExtra == 1 && (function1 = this.pluggedListener) != null) {
                function1.invoke(true);
            }
        }
    }
}
