package com.github.florent37.assets_audio_player;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.notification.NotificationService;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AssetsAudioPlayerPlugin.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 (2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001(B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00182\b\b\u0001\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0018H\u0016J\b\u0010\u001f\u001a\u00020\u0018H\u0016J\u0012\u0010 \u001a\u00020\u00182\b\b\u0001\u0010\u0019\u001a\u00020\u001dH\u0016J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0017\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$H\u0002¢\u0006\u0002\u0010'R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006)"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "()V", "assetsAudioPlayer", "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;", "getAssetsAudioPlayer", "()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;", "setAssetsAudioPlayer", "(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V", "myActivity", "Landroid/app/Activity;", "getMyActivity", "()Landroid/app/Activity;", "setMyActivity", "(Landroid/app/Activity;)V", "notificationChannel", "Lio/flutter/plugin/common/MethodChannel;", "getNotificationChannel", "()Lio/flutter/plugin/common/MethodChannel;", "setNotificationChannel", "(Lio/flutter/plugin/common/MethodChannel;)V", "onAttachedToActivity", "", "binding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToEngine", "flutterPluginBinding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromActivity", "onDetachedFromActivityForConfigChanges", "onDetachedFromEngine", "onNewIntent", "", "intent", "Landroid/content/Intent;", "onReattachedToActivityForConfigChanges", "sendNotificationPayloadMessage", "(Landroid/content/Intent;)Ljava/lang/Boolean;", "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetsAudioPlayerPlugin implements FlutterPlugin, PluginRegistry.NewIntentListener, ActivityAware {
    public static final Companion Companion = new Companion(null);
    private static boolean displayLogs;
    private static AssetsAudioPlayerPlugin instance;
    private AssetsAudioPlayer assetsAudioPlayer;
    private Activity myActivity;
    private MethodChannel notificationChannel;

    public final Activity getMyActivity() {
        return this.myActivity;
    }

    public final void setMyActivity(Activity activity) {
        this.myActivity = activity;
    }

    public final MethodChannel getNotificationChannel() {
        return this.notificationChannel;
    }

    public final void setNotificationChannel(MethodChannel methodChannel) {
        this.notificationChannel = methodChannel;
    }

    /* compiled from: AssetsAudioPlayerPlugin.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;", "", "()V", "displayLogs", "", "getDisplayLogs", "()Z", "setDisplayLogs", "(Z)V", "instance", "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;", "getInstance", "()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;", "setInstance", "(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;)V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AssetsAudioPlayerPlugin getInstance() {
            return AssetsAudioPlayerPlugin.instance;
        }

        public final void setInstance(AssetsAudioPlayerPlugin assetsAudioPlayerPlugin) {
            AssetsAudioPlayerPlugin.instance = assetsAudioPlayerPlugin;
        }

        public final boolean getDisplayLogs() {
            return AssetsAudioPlayerPlugin.displayLogs;
        }

        public final void setDisplayLogs(boolean z) {
            AssetsAudioPlayerPlugin.displayLogs = z;
        }
    }

    public final AssetsAudioPlayer getAssetsAudioPlayer() {
        return this.assetsAudioPlayer;
    }

    public final void setAssetsAudioPlayer(AssetsAudioPlayer assetsAudioPlayer) {
        this.assetsAudioPlayer = assetsAudioPlayer;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "flutterPluginBinding");
        if (instance == null) {
            Companion companion = Companion;
            instance = this;
            this.notificationChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "assets_audio_player_notification");
            FlutterPlugin.FlutterAssets flutterAssets = flutterPluginBinding.getFlutterAssets();
            Context applicationContext = flutterPluginBinding.getApplicationContext();
            BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            Intrinsics.checkNotNullExpressionValue(binaryMessenger, "binaryMessenger");
            Intrinsics.checkNotNullExpressionValue(flutterAssets, "flutterAssets");
            this.assetsAudioPlayer = new AssetsAudioPlayer(applicationContext, binaryMessenger, flutterAssets);
            AssetsAudioPlayer assetsAudioPlayer = this.assetsAudioPlayer;
            Intrinsics.checkNotNull(assetsAudioPlayer);
            assetsAudioPlayer.register();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        AssetsAudioPlayer assetsAudioPlayer = this.assetsAudioPlayer;
        if (assetsAudioPlayer != null) {
            assetsAudioPlayer.unregister();
        }
        Companion companion = Companion;
        instance = null;
    }

    private final Boolean sendNotificationPayloadMessage(Intent intent) {
        if (!Intrinsics.areEqual(NotificationAction.ACTION_SELECT, intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra(NotificationService.TRACK_ID);
        MethodChannel methodChannel = this.notificationChannel;
        if (methodChannel != null) {
            methodChannel.invokeMethod("selectNotification", stringExtra);
        }
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(Intent intent) {
        Activity activity;
        boolean z = false;
        if (intent == null) {
            return false;
        }
        if (!intent.getBooleanExtra("isVisited", false)) {
            Boolean sendNotificationPayloadMessage = sendNotificationPayloadMessage(intent);
            if (sendNotificationPayloadMessage != null) {
                z = sendNotificationPayloadMessage.booleanValue();
            }
            if (z && (activity = this.myActivity) != null) {
                if (activity != null) {
                    activity.setIntent(intent);
                }
                intent.putExtra("isVisited", true);
            }
        }
        return z;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.myActivity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        activityPluginBinding.addOnNewIntentListener(this);
        this.myActivity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        activityPluginBinding.addOnNewIntentListener(this);
        this.myActivity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.myActivity = null;
    }
}
