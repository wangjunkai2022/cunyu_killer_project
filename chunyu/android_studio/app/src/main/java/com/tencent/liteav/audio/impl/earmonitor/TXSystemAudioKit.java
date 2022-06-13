package com.tencent.liteav.audio.impl.earmonitor;

import android.content.Context;

/* loaded from: classes2.dex */
public interface TXSystemAudioKit {
    void initialize(Context context, a aVar);

    void setSystemEarMonitoringVolume(int i);

    void startSystemEarMonitoring();

    void stopSystemEarMonitoring();

    void uninitialize();
}
