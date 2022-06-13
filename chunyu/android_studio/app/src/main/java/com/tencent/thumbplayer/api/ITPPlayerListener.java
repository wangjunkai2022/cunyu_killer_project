package com.tencent.thumbplayer.api;

/* loaded from: classes2.dex */
public class ITPPlayerListener {

    /* loaded from: classes2.dex */
    public interface IOnAudioFrameOutputListener {
        void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface IOnAudioProcessFrameOutputListener {
        TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface IOnCompletionListener {
        void onCompletion(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes2.dex */
    public interface IOnDemuxerListener {
        TPRemoteSdpInfo onSdpExchange(ITPPlayer iTPPlayer, String str, int i);
    }

    /* loaded from: classes2.dex */
    public interface IOnDetailInfoListener {
        void onDetailInfo(ITPPlayer iTPPlayer, TPPlayerDetailInfo tPPlayerDetailInfo);
    }

    /* loaded from: classes2.dex */
    public interface IOnErrorListener {
        void onError(ITPPlayer iTPPlayer, int i, int i2, long j, long j2);
    }

    /* loaded from: classes2.dex */
    public interface IOnEventRecordListener {
        void onDrmInfo(ITPPlayer iTPPlayer, TPDrmInfo tPDrmInfo);
    }

    /* loaded from: classes2.dex */
    public interface IOnInfoListener {
        void onInfo(ITPPlayer iTPPlayer, int i, long j, long j2, Object obj);
    }

    /* loaded from: classes2.dex */
    public interface IOnPreparedListener {
        void onPrepared(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes2.dex */
    public interface IOnSeekCompleteListener {
        void onSeekComplete(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes2.dex */
    public interface IOnStateChangeListener {
        void onStateChange(int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface IOnStopAsyncCompleteListener {
        void onStopAsyncComplete(ITPPlayer iTPPlayer);
    }

    /* loaded from: classes2.dex */
    public interface IOnSubtitleDataListener {
        void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData);
    }

    /* loaded from: classes2.dex */
    public interface IOnSubtitleFrameOutListener {
        void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface IOnVideoFrameOutListener {
        void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface IOnVideoProcessFrameOutputListener {
        TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer);
    }

    /* loaded from: classes2.dex */
    public interface IOnVideoSizeChangedListener {
        void onVideoSizeChanged(ITPPlayer iTPPlayer, long j, long j2);
    }
}
