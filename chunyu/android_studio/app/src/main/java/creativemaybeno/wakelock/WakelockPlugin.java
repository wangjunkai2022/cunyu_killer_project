package creativemaybeno.wakelock;

import com.github.florent37.assets_audio_player.notification.NotificationAction;
import creativemaybeno.wakelock.Messages;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WakelockPlugin.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\r\u001a\u00020\n2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016J\b\u0010\u0011\u001a\u00020\nH\u0016J\u0012\u0010\u0012\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u000fH\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\u0014\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcreativemaybeno/wakelock/WakelockPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lcreativemaybeno/wakelock/Messages$WakelockApi;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "()V", "wakelock", "Lcreativemaybeno/wakelock/Wakelock;", "isEnabled", "Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;", "onAttachedToActivity", "", "binding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToEngine", "flutterPluginBinding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromActivity", "onDetachedFromActivityForConfigChanges", "onDetachedFromEngine", "onReattachedToActivityForConfigChanges", NotificationAction.ACTION_TOGGLE, "arg", "Lcreativemaybeno/wakelock/Messages$ToggleMessage;", "wakelock_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WakelockPlugin implements FlutterPlugin, Messages.WakelockApi, ActivityAware {
    private Wakelock wakelock;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "flutterPluginBinding");
        Messages.WakelockApi.CC.setup(flutterPluginBinding.getBinaryMessenger(), this);
        this.wakelock = new Wakelock();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        Messages.WakelockApi.CC.setup(flutterPluginBinding.getBinaryMessenger(), null);
        this.wakelock = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        Wakelock wakelock = this.wakelock;
        if (wakelock != null) {
            wakelock.setActivity(activityPluginBinding.getActivity());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wakelock wakelock = this.wakelock;
        if (wakelock != null) {
            wakelock.setActivity(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        onAttachedToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // creativemaybeno.wakelock.Messages.WakelockApi
    public void toggle(Messages.ToggleMessage toggleMessage) {
        Wakelock wakelock = this.wakelock;
        Intrinsics.checkNotNull(wakelock);
        Intrinsics.checkNotNull(toggleMessage);
        wakelock.toggle(toggleMessage);
    }

    @Override // creativemaybeno.wakelock.Messages.WakelockApi
    public Messages.IsEnabledMessage isEnabled() {
        Wakelock wakelock = this.wakelock;
        Intrinsics.checkNotNull(wakelock);
        return wakelock.isEnabled();
    }
}
