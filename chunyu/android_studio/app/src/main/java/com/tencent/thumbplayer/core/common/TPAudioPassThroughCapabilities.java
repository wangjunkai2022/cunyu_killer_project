package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class TPAudioPassThroughCapabilities {
    private static final int DEFAULT_MAX_CHANNEL_COUNT = 8;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private final int maxChannelCount;
    private final int[] supportedEncodings;
    public static final TPAudioPassThroughCapabilities DEFAULT_AUDIO_CAPABILITIES = new TPAudioPassThroughCapabilities(new int[]{2}, 8);
    private static final TPAudioPassThroughCapabilities EXTERNAL_SURROUND_SOUND_CAPABILITIES = new TPAudioPassThroughCapabilities(new int[]{2, 5, 6}, 8);

    public TPAudioPassThroughCapabilities(int[] iArr, int i) {
        if (iArr != null) {
            this.supportedEncodings = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.supportedEncodings);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i;
    }

    public static TPAudioPassThroughCapabilities getCapabilities(Context context) {
        return getCapabilities(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TPAudioPassThroughCapabilities getCapabilities(Context context, Intent intent) {
        return (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? DEFAULT_AUDIO_CAPABILITIES : new TPAudioPassThroughCapabilities(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TPAudioPassThroughCapabilities)) {
            return false;
        }
        TPAudioPassThroughCapabilities tPAudioPassThroughCapabilities = (TPAudioPassThroughCapabilities) obj;
        return Arrays.equals(this.supportedEncodings, tPAudioPassThroughCapabilities.supportedEncodings) && this.maxChannelCount == tPAudioPassThroughCapabilities.maxChannelCount;
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return this.maxChannelCount + (Arrays.hashCode(this.supportedEncodings) * 31);
    }

    public boolean supportsEncoding(int i) {
        return Arrays.binarySearch(this.supportedEncodings, i) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", supportedEncodings=" + Arrays.toString(this.supportedEncodings) + "]";
    }
}
