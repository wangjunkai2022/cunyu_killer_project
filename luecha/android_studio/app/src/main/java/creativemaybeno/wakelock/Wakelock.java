package creativemaybeno.wakelock;

import android.app.Activity;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import creativemaybeno.wakelock.Messages;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Wakelock.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcreativemaybeno/wakelock/Wakelock;", "", "()V", "activity", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "setActivity", "(Landroid/app/Activity;)V", "enabled", "", "getEnabled", "()Z", "isEnabled", "Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;", NotificationAction.ACTION_TOGGLE, "", "message", "Lcreativemaybeno/wakelock/Messages$ToggleMessage;", "wakelock_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class Wakelock {
    private Activity activity;

    public final Activity getActivity() {
        return this.activity;
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
    }

    private final boolean getEnabled() {
        Activity activity = this.activity;
        Intrinsics.checkNotNull(activity);
        return (activity.getWindow().getAttributes().flags & 128) != 0;
    }

    public final void toggle(Messages.ToggleMessage toggleMessage) {
        Intrinsics.checkNotNullParameter(toggleMessage, "message");
        Activity activity = this.activity;
        if (activity != null) {
            Intrinsics.checkNotNull(activity);
            boolean enabled = getEnabled();
            Boolean enable = toggleMessage.getEnable();
            Intrinsics.checkNotNull(enable);
            if (enable.booleanValue()) {
                if (!enabled) {
                    activity.getWindow().addFlags(128);
                }
            } else if (enabled) {
                activity.getWindow().clearFlags(128);
            }
        } else {
            throw new NoActivityException();
        }
    }

    public final Messages.IsEnabledMessage isEnabled() {
        if (this.activity != null) {
            Messages.IsEnabledMessage isEnabledMessage = new Messages.IsEnabledMessage();
            isEnabledMessage.setEnabled(Boolean.valueOf(getEnabled()));
            return isEnabledMessage;
        }
        throw new NoActivityException();
    }
}
