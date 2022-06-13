package io.flutter.embedding.engine.plugins.broadcastreceiver;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface BroadcastReceiverAware {
    void onAttachedToBroadcastReceiver(BroadcastReceiverPluginBinding broadcastReceiverPluginBinding);

    void onDetachedFromBroadcastReceiver();
}
