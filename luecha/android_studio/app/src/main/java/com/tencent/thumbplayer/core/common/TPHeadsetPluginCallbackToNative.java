package com.tencent.thumbplayer.core.common;

import com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPHeadsetPluginCallbackToNative implements TPHeadsetPluginDetector.HeadsetPluginListener {
    private static final String TAG = "TPHeadsetPluginCallback";
    private long mNativeContext;

    private TPHeadsetPluginCallbackToNative(long j) {
        this.mNativeContext = j;
    }

    private native void _onAudioRouteChanged(Set<Integer> set, Set<Integer> set2);

    private long getNativeContext() {
        return this.mNativeContext;
    }

    private void registerCallback() {
        TPHeadsetPluginDetector.addHeadsetPluginListener(this);
    }

    private void unregisterCallback() {
        TPHeadsetPluginDetector.removeHeadsetPluginListener(this);
    }

    @Override // com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.HeadsetPluginListener
    public void onHeadsetPlugin(Set<Integer> set, Set<Integer> set2) {
        TPNativeLog.printLog(2, "TPHeadsetPluginCallback", "onHeadsetPlugin: oldOutputs: " + set + ", newOutputs: " + set2);
        _onAudioRouteChanged(set, set2);
    }
}
