package com.tencent.thumbplayer.adapter.strategy.utils;

import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPErrorCode;
import com.tencent.thumbplayer.api.TPFeatureType;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPropertyID;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPThreadPriority;
import com.tencent.thumbplayer.api.TPVideoSeiH264Type;
import com.tencent.thumbplayer.api.TPVideoSeiHevcType;
import com.tencent.thumbplayer.api.connection.TPPlayerConnectionConstant;
import com.tencent.thumbplayer.core.common.TPDetailInfo;
import com.tencent.thumbplayer.core.common.TPNativeAudioAttributes;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPNativeKeyMap {
    public static final int INVALID_VALUE = -1;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapAudioCodecType {
        @TPCommonEnum.InnerAudioCodecType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapAudioDecoderType {
        @TPCommonEnum.InnerAudioDecoderType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapAudioSampleFormat {
        @TPCommonEnum.InnerAudioSampleFormat
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 1, searchClass = TPCommonEnum.class, tpDefValue = 1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapBufferStrategy {
        @TPCommonEnum.InnerBufferStrategy
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapCodecType {
        @TPCommonEnum.InnerVideoCodecType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerConnectionConstant.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapConnectionAction {
        @TPCommonEnum.NativeConnectionAction
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerConnectionConstant.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapConnectionConfig {
        @TPCommonEnum.NativeConnectionConfig
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapDemuxerType {
        @TPCommonEnum.InnerDemuxerType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerDetailInfo.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapDetailInfoType {
        @TPDetailInfo.TPDetailInfoType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapDrmType {
        @TPCommonEnum.InnerDrmType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 1001, searchClass = TPErrorCode.class, tpDefValue = 1001, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapErrorType {
        @TPCommonEnum.NativeErrorType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPFeatureType.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapFeatureType {
        @TPCommonEnum.InnerFeatureType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapHdrType {
        @TPCommonEnum.InnerHDRType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface MapInitConfig {
        String keyName();

        @TPCommonEnum.OptionalIdType
        int type();

        @TPCommonEnum.NativeInitConfig
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapMediaType {
        @TPCommonEnum.InnerMediaType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerMsg.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapMsgInfo {
        @TPCommonEnum.NativeMsgInfo
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface MapOptionalId {
        String keyName();

        @TPCommonEnum.OptionalIdType
        int type();

        @TPCommonEnum.NativeOptionalId
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapPixelFormat {
        @TPCommonEnum.InnerPixelFormat
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPPropertyID.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapPropertyId {
        @TPCommonEnum.NativePropertyId
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapReduceLantencyType {
        @TPCommonEnum.InnerReduceLantencyType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPDrmInfo.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapReportDrmType {
        @TPGeneralPlayFlowParams.TPDrmType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 2, searchClass = ITPPlayer.class, tpDefValue = 2, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapSeekMode {
        @TPCommonEnum.NativeSeekMode
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleRenderModel.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapSubtitleFontStyle {
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleFrameBuffer.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapSubtitleFormat {
        @TPCommonEnum.InnerSubtitleFormat
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleRenderModel.class, tpDefValue = -1, valueClass = long.class)
    /* loaded from: classes5.dex */
    public @interface MapSubtitleRenderParams {
        long value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = ITPPlayer.class, tpDefValue = 1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapSwitchDefMode {
        @TPCommonEnum.NativeSwitchDefMode
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapTPAudioAttributeContentType {
        @TPNativeAudioAttributes.TPNativeAudioAttributeContentType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapTPAudioAttributeFlag {
        @TPNativeAudioAttributes.TPNativeAudioAttributeFlag
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPAudioAttributes.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapTPAudioAttributeStreamType {
        @TPNativeAudioAttributes.TPNativeAudioAttributeStreamType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapTPAudioAttributeUsage {
        @TPNativeAudioAttributes.TPNativeAudioAttributeUsage
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPThreadPriority.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapThreadPriorityType {
        @TPCommonEnum.InnerThreadPriority
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = 2, searchClass = TPCommonEnum.class, tpDefValue = 2, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapVideoColorSpace {
        @TPCommonEnum.InnerVideoColorSpace
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapVideoDecoderType {
        @TPCommonEnum.InnerVideoDecoderType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPVideoSeiH264Type.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapVideoH264SeiType {
        @TPCommonEnum.InnerVideoH264SeiType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @SearchConfig(nativeDefValue = -1, searchClass = TPVideoSeiHevcType.class, tpDefValue = -1, valueClass = int.class)
    /* loaded from: classes5.dex */
    public @interface MapVideoHevcSeiType {
        @TPCommonEnum.InnerVideoHevcSeiType
        int value();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    @interface SearchConfig {
        long nativeDefValue();

        Class<?> searchClass();

        long tpDefValue();

        Class<? extends Number> valueClass();
    }
}
