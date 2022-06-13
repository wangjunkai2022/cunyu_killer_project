package io.flutter.embedding.engine.plugins.broadcastreceiver;

import android.content.BroadcastReceiver;
import androidx.lifecycle.Lifecycle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface BroadcastReceiverControlSurface {
    void attachToBroadcastReceiver(BroadcastReceiver broadcastReceiver, Lifecycle lifecycle);

    void detachFromBroadcastReceiver();
}
