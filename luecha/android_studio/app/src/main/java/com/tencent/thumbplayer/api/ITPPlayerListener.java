package com.tencent.thumbplayer.api;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ITPPlayerListener {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnAudioFrameOutputListener {
        void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnAudioProcessFrameOutputListener {
        TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnCompletionListener {
        void onCompletion(ITPPlayer iTPPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnDemuxerListener {
        TPRemoteSdpInfo onSdpExchange(ITPPlayer iTPPlayer, String str, int i);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnDetailInfoListener {
        void onDetailInfo(ITPPlayer iTPPlayer, TPPlayerDetailInfo tPPlayerDetailInfo);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnErrorListener {
        void onError(ITPPlayer iTPPlayer, int i, int i2, long j, long j2);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnEventRecordListener {
        void onDrmInfo(ITPPlayer iTPPlayer, TPDrmInfo tPDrmInfo);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnInfoListener {
        void onInfo(ITPPlayer iTPPlayer, int i, long j, long j2, Object obj);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnPreparedListener {
        void onPrepared(ITPPlayer iTPPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnSeekCompleteListener {
        void onSeekComplete(ITPPlayer iTPPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnStateChangeListener {
        void onStateChange(int i, int i2);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnStopAsyncCompleteListener {
        void onStopAsyncComplete(ITPPlayer iTPPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnSubtitleDataListener {
        void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnSubtitleFrameOutListener {
        void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnVideoFrameOutListener {
        void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnVideoProcessFrameOutputListener {
        TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface IOnVideoSizeChangedListener {
        void onVideoSizeChanged(ITPPlayer iTPPlayer, long j, long j2);
    }
}
