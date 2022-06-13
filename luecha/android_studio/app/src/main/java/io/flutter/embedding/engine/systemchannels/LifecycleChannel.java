package io.flutter.embedding.engine.systemchannels;

import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StringCodec;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class LifecycleChannel {
    private static final String TAG = "LifecycleChannel";
    public final BasicMessageChannel<String> channel;

    public LifecycleChannel(DartExecutor dartExecutor) {
        this.channel = new BasicMessageChannel<>(dartExecutor, "flutter/lifecycle", StringCodec.INSTANCE);
    }

    public void appIsInactive() {
        Log.v("LifecycleChannel", "Sending AppLifecycleState.inactive message.");
        this.channel.send("AppLifecycleState.inactive");
    }

    public void appIsResumed() {
        Log.v("LifecycleChannel", "Sending AppLifecycleState.resumed message.");
        this.channel.send("AppLifecycleState.resumed");
    }

    public void appIsPaused() {
        Log.v("LifecycleChannel", "Sending AppLifecycleState.paused message.");
        this.channel.send("AppLifecycleState.paused");
    }

    public void appIsDetached() {
        Log.v("LifecycleChannel", "Sending AppLifecycleState.detached message.");
        this.channel.send("AppLifecycleState.detached");
    }
}
