package com.tencent.thumbplayer.core.common;

import com.umeng.commonsdk.stateless.b;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPNativeAudioAttributes {
    public static final int TP_NATIVE_CONTENT_MOVIE = 3;
    public static final int TP_NATIVE_CONTENT_MUSIC = 2;
    public static final int TP_NATIVE_CONTENT_SONIFICATION = 4;
    public static final int TP_NATIVE_CONTENT_SPEECH = 1;
    public static final int TP_NATIVE_CONTENT_UNKNOWN = 0;
    public static final int TP_NATIVE_FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int TP_NATIVE_FLAG_HW_AV_SYNC = 16;
    public static final int TP_NATIVE_FLAG_LOW_LATENCY = 256;
    private static final int TP_NATIVE_FLAG_PUBLIC = 273;
    public static final int TP_NATIVE_FLAG_UNKNOWN = 0;
    public static final int TP_NATIVE_STREAM_ALARM = 4;
    public static final int TP_NATIVE_STREAM_DTMF = 8;
    public static final int TP_NATIVE_STREAM_MUSIC = 3;
    public static final int TP_NATIVE_STREAM_NOTIFICATION = 5;
    public static final int TP_NATIVE_STREAM_RING = 2;
    public static final int TP_NATIVE_STREAM_SYSTEM = 1;
    public static final int TP_NATIVE_STREAM_UNKNOWN = -1;
    public static final int TP_NATIVE_STREAM_VOICE_CALL = 0;
    public static final int TP_NATIVE_USAGE_ALARM = 4;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int TP_NATIVE_USAGE_ASSISTANT = 16;
    public static final int TP_NATIVE_USAGE_GAME = 14;
    public static final int TP_NATIVE_USAGE_MEDIA = 1;
    public static final int TP_NATIVE_USAGE_NOTIFICATION = 5;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_EVENT = 10;
    public static final int TP_NATIVE_USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int TP_NATIVE_USAGE_UNKNOWN = 0;
    public static final int TP_NATIVE_USAGE_VOICE_COMMUNICATION = 2;
    public static final int TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    private static final HashMap<Integer, String> mMapContentTypeToString = new HashMap<>();
    private static final HashMap<Integer, String> mMapUsageToString = new HashMap<>();
    private int mContentType;
    private int mFlags;
    private int mUsage;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class Builder {
        private static final HashMap<Integer, Integer> mMapStreamTypeToContentType = new HashMap<>();
        private static final HashMap<Integer, Integer> mMapStreamTypeToUsage = new HashMap<>();
        private int mUsage = 0;
        private int mContentType = 0;
        private int mFlags = 0;

        static {
            mMapStreamTypeToContentType.put(-1, 0);
            mMapStreamTypeToContentType.put(0, 1);
            mMapStreamTypeToContentType.put(1, 4);
            mMapStreamTypeToContentType.put(2, 4);
            mMapStreamTypeToContentType.put(3, 2);
            mMapStreamTypeToContentType.put(4, 4);
            mMapStreamTypeToContentType.put(5, 4);
            mMapStreamTypeToContentType.put(8, 4);
            mMapStreamTypeToUsage.put(-1, 0);
            mMapStreamTypeToUsage.put(0, 2);
            mMapStreamTypeToUsage.put(1, 13);
            mMapStreamTypeToUsage.put(2, 6);
            mMapStreamTypeToUsage.put(3, 1);
            mMapStreamTypeToUsage.put(4, 4);
            mMapStreamTypeToUsage.put(5, 5);
            mMapStreamTypeToUsage.put(8, 3);
        }

        public Builder addFlags(int i) {
            this.mFlags = (i & b.a) | this.mFlags;
            return this;
        }

        public TPNativeAudioAttributes build() {
            TPNativeAudioAttributes tPNativeAudioAttributes = new TPNativeAudioAttributes();
            tPNativeAudioAttributes.mContentType = this.mContentType;
            tPNativeAudioAttributes.mUsage = this.mUsage;
            tPNativeAudioAttributes.mFlags = this.mFlags;
            return tPNativeAudioAttributes;
        }

        public Builder setContentType(@TPNativeAudioAttributeContentType int i) {
            if (!TPNativeAudioAttributes.mMapContentTypeToString.containsKey(Integer.valueOf(i))) {
                i = 0;
            }
            this.mContentType = i;
            return this;
        }

        public Builder setFlags(int i) {
            this.mFlags = i & b.a;
            return this;
        }

        public Builder setLegacyStreamType(@TPNativeAudioAttributeStreamType int i) {
            if (mMapStreamTypeToContentType.containsKey(Integer.valueOf(i))) {
                this.mContentType = mMapStreamTypeToContentType.get(Integer.valueOf(i)).intValue();
            } else {
                this.mContentType = 0;
            }
            if (mMapStreamTypeToUsage.containsKey(Integer.valueOf(i))) {
                this.mUsage = mMapStreamTypeToUsage.get(Integer.valueOf(i)).intValue();
            } else {
                this.mUsage = 0;
            }
            return this;
        }

        public Builder setUsage(@TPNativeAudioAttributeUsage int i) {
            if (!TPNativeAudioAttributes.mMapUsageToString.containsKey(Integer.valueOf(i))) {
                i = 0;
            }
            this.mUsage = i;
            return this;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface TPNativeAudioAttributeContentType {
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface TPNativeAudioAttributeFlag {
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface TPNativeAudioAttributeStreamType {
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface TPNativeAudioAttributeUsage {
    }

    static {
        mMapContentTypeToString.put(0, "TP_NATIVE_CONTENT_UNKNOWN");
        mMapContentTypeToString.put(1, "TP_NATIVE_CONTENT_SPEECH");
        mMapContentTypeToString.put(2, "TP_NATIVE_CONTENT_MUSIC");
        mMapContentTypeToString.put(3, "TP_NATIVE_CONTENT_MOVIE");
        mMapContentTypeToString.put(4, "TP_NATIVE_CONTENT_SONIFICATION");
        mMapUsageToString.put(0, "TP_NATIVE_USAGE_UNKNOWN");
        mMapUsageToString.put(1, "TP_NATIVE_USAGE_MEDIA");
        mMapUsageToString.put(2, "TP_NATIVE_USAGE_VOICE_COMMUNICATION");
        mMapUsageToString.put(3, "TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING");
        mMapUsageToString.put(4, "TP_NATIVE_USAGE_ALARM");
        mMapUsageToString.put(5, "TP_NATIVE_USAGE_NOTIFICATION");
        mMapUsageToString.put(6, "TP_NATIVE_USAGE_NOTIFICATION_RINGTONE");
        mMapUsageToString.put(7, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST");
        mMapUsageToString.put(8, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT");
        mMapUsageToString.put(9, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED");
        mMapUsageToString.put(10, "TP_NATIVE_USAGE_NOTIFICATION_EVENT");
        mMapUsageToString.put(11, "TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY");
        mMapUsageToString.put(12, "TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE");
        mMapUsageToString.put(13, "TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION");
        mMapUsageToString.put(14, "TP_NATIVE_USAGE_GAME");
        mMapUsageToString.put(16, "TP_NATIVE_USAGE_ASSISTANT");
    }

    private TPNativeAudioAttributes() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
    }

    public static String contentTypeToString(@TPNativeAudioAttributeContentType int i) {
        if (mMapContentTypeToString.containsKey(Integer.valueOf(i))) {
            return mMapContentTypeToString.get(Integer.valueOf(i));
        }
        return "unknown content type" + i;
    }

    public static String usageToString(@TPNativeAudioAttributeUsage int i) {
        if (mMapUsageToString.containsKey(Integer.valueOf(i))) {
            return mMapUsageToString.get(Integer.valueOf(i));
        }
        return "unknown usage " + i;
    }

    @TPNativeAudioAttributeContentType
    public int getContentType() {
        return this.mContentType;
    }

    public int getFlags() {
        return this.mFlags & b.a;
    }

    @TPNativeAudioAttributeUsage
    public int getUsage() {
        return this.mUsage;
    }

    public String toString() {
        return "AudioAttributes: usage=" + usageToString(this.mUsage) + " content=" + contentTypeToString(this.mContentType) + " flags=0x" + Integer.toHexString(this.mFlags).toUpperCase();
    }
}
