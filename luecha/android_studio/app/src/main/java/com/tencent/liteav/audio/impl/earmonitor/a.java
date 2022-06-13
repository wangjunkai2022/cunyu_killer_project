package com.tencent.liteav.audio.impl.earmonitor;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXAudioKitCallback.java */
/* loaded from: classes5.dex */
public interface a {
    void onAudioKitError(TXSystemAudioKit tXSystemAudioKit);

    void onAudioKitInitFinished(TXSystemAudioKit tXSystemAudioKit, boolean z);

    void onEarMonitoringInitialized(TXSystemAudioKit tXSystemAudioKit, boolean z);
}
