package com.tencent.thumbplayer.core.common;

import com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPAudioPassThroughPluginCallbackToNative implements TPAudioPassThroughPluginDetector.AudioPassThroughPluginListener {
    private static final String TAG = "TPAudioPassThroughPluginCallback";
    private long mNativeContext;

    private TPAudioPassThroughPluginCallbackToNative(long j) {
        this.mNativeContext = j;
    }

    private native void _onAudioPassThroughStateChanged(boolean z);

    private long getNativeContext() {
        return this.mNativeContext;
    }

    private void registerCallback() {
        TPAudioPassThroughPluginDetector.addListener(this);
    }

    private void unregisterCallback() {
        TPAudioPassThroughPluginDetector.removeListener(this);
    }

    @Override // com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector.AudioPassThroughPluginListener
    public void onAudioPassThroughPlugin(boolean z) {
        TPNativeLog.printLog(2, "TPAudioPassThroughPluginCallback", "onAudioPassThroughPlugin bPlugin:" + z);
        _onAudioPassThroughStateChanged(z);
    }
}
