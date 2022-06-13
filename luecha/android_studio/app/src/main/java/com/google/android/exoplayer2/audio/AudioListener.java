package com.google.android.exoplayer2.audio;

@Deprecated
/* loaded from: classes2.dex */
public interface AudioListener {

    /* renamed from: com.google.android.exoplayer2.audio.AudioListener$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$onAudioAttributesChanged(AudioListener audioListener, AudioAttributes audioAttributes) {
        }

        public static void $default$onAudioSessionIdChanged(AudioListener audioListener, int i) {
        }

        public static void $default$onSkipSilenceEnabledChanged(AudioListener audioListener, boolean z) {
        }

        public static void $default$onVolumeChanged(AudioListener audioListener, float f) {
        }
    }

    void onAudioAttributesChanged(AudioAttributes audioAttributes);

    void onAudioSessionIdChanged(int i);

    void onSkipSilenceEnabledChanged(boolean z);

    void onVolumeChanged(float f);
}
