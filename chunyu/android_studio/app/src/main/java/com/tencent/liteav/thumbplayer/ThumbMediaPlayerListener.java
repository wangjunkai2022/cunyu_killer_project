package com.tencent.liteav.thumbplayer;

import android.graphics.Rect;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.txcplayer.j;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
class ThumbMediaPlayerListener implements ITPPlayerListener.IOnAudioFrameOutputListener, ITPPlayerListener.IOnAudioProcessFrameOutputListener, ITPPlayerListener.IOnCompletionListener, ITPPlayerListener.IOnErrorListener, ITPPlayerListener.IOnInfoListener, ITPPlayerListener.IOnPreparedListener, ITPPlayerListener.IOnSeekCompleteListener, ITPPlayerListener.IOnStateChangeListener, ITPPlayerListener.IOnStopAsyncCompleteListener, ITPPlayerListener.IOnSubtitleDataListener, ITPPlayerListener.IOnSubtitleFrameOutListener, ITPPlayerListener.IOnVideoFrameOutListener, ITPPlayerListener.IOnVideoProcessFrameOutputListener, ITPPlayerListener.IOnVideoSizeChangedListener {
    private final String TAG = ThumbMediaPlayerListener.class.getName();
    private final WeakReference<ThumbMediaPlayer> mThumbMediaPlayer;

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioProcessFrameOutputListener
    public TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return tPPostProcessFrameBuffer;
    }

    public ThumbMediaPlayerListener(ThumbMediaPlayer thumbMediaPlayer) {
        this.mThumbMediaPlayer = new WeakReference<>(thumbMediaPlayer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachToPlayer() {
        ITPPlayer tPPPlayer;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null && (tPPPlayer = thumbMediaPlayer.getTPPPlayer()) != null) {
            tPPPlayer.setOnPreparedListener(this);
            tPPPlayer.setOnCompletionListener(this);
            tPPPlayer.setOnInfoListener(this);
            tPPPlayer.setOnErrorListener(this);
            tPPPlayer.setOnSeekCompleteListener(this);
            tPPPlayer.setOnVideoSizeChangedListener(this);
            tPPPlayer.setOnSubtitleDataListener(this);
            tPPPlayer.setOnSubtitleFrameOutListener(this);
            tPPPlayer.setOnVideoFrameOutListener(this);
            tPPPlayer.setOnAudioFrameOutputListener(this);
            tPPPlayer.setOnVideoProcessFrameOutputListener(this);
            tPPPlayer.setOnAudioProcessFrameOutputListener(this);
            tPPPlayer.setOnPlayerStateChangeListener(this);
            tPPPlayer.setOnStopAsyncCompleteListener(this);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnPreparedListener
    public void onPrepared(ITPPlayer iTPPlayer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onPrepared");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnPrepared();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnCompletionListener
    public void onCompletion(ITPPlayer iTPPlayer) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnCompletion();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoSizeChangedListener
    public void onVideoSizeChanged(ITPPlayer iTPPlayer, long j, long j2) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            String str = this.TAG;
            TXCLog.i(str, "ThumbMediaPlayerListener on:videoSizeChanged:width:" + j + ":height:" + j2);
            thumbMediaPlayer.notifyOnVideoSizeChanged((int) j, (int) j2, thumbMediaPlayer.getVideoSarNum(), thumbMediaPlayer.getVideoSarDen(), null);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnInfoListener
    public void onInfo(ITPPlayer iTPPlayer, int i, long j, long j2, Object obj) {
        String[] split;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            int transferInfo = transferInfo(i);
            int i2 = (int) j;
            if (obj != null && (obj instanceof TPPlayerMsg.TPCDNURLInfo)) {
                TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) obj;
                TXCLog.i(this.TAG, "onInfo TPCDNURLInfo:cdnIp:" + tPCDNURLInfo.cdnIp + ":uIp:" + tPCDNURLInfo.uIp + ": url: " + tPCDNURLInfo.url + ":errorStr: " + tPCDNURLInfo.errorStr);
            }
            if (obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) obj;
                thumbMediaPlayer.updateBitrate(tPDownLoadProgressInfo.totalFileSize);
                long j3 = (long) tPDownLoadProgressInfo.downloadSpeedKBps;
                if (j3 < 0 && tPDownLoadProgressInfo.extraInfo != null && (split = tPDownLoadProgressInfo.extraInfo.split(",")) != null) {
                    int length = split.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            String str = split[i3];
                            if (str != null && str.contains("httpAvgSpeedKB")) {
                                j3 = Long.valueOf(str.substring(str.indexOf(":") + 1, str.length()).trim()).longValue();
                                break;
                            }
                            i3++;
                        } else {
                            break;
                        }
                    }
                }
                thumbMediaPlayer.updateTcpSpeed(j3 * 1024);
                TXCLog.i(this.TAG, "onInfo TPDownLoadProgressInfo:currentDownloadSize:" + tPDownLoadProgressInfo.currentDownloadSize + ":downloadSpeedKBps:" + tPDownLoadProgressInfo.downloadSpeedKBps + ": playableDurationMS: " + tPDownLoadProgressInfo.playableDurationMS + ":totalFileSize: " + tPDownLoadProgressInfo.totalFileSize + ":extraInfo:" + tPDownLoadProgressInfo.extraInfo);
            }
            if (obj instanceof TPPlayerMsg.TPProtocolInfo) {
                TPPlayerMsg.TPProtocolInfo tPProtocolInfo = (TPPlayerMsg.TPProtocolInfo) obj;
                TXCLog.i(this.TAG, "onInfo TPProtocolInfo:protocolName:" + tPProtocolInfo.protocolName + ":protocolVersion:" + tPProtocolInfo.protocolVersion);
            }
            if (obj instanceof TPPlayerMsg.TPVideoCropInfo) {
                TPPlayerMsg.TPVideoCropInfo tPVideoCropInfo = (TPPlayerMsg.TPVideoCropInfo) obj;
                TXCLog.i(this.TAG, "onInfo TPVideoCropInfo:cropBottom:" + tPVideoCropInfo.cropBottom + ":cropLeft:" + tPVideoCropInfo.cropLeft + ": cropRight: " + tPVideoCropInfo.cropRight + ":cropTop: " + tPVideoCropInfo.cropTop + ":height:" + tPVideoCropInfo.height + ":width:" + tPVideoCropInfo.width);
            }
            if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
                TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            }
            thumbMediaPlayer.notifyOnInfo(transferInfo, i2, 0, obj);
        }
    }

    private int transferInfo(int i) {
        if (i == 3) {
            TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_ASYNC_CALL_SWITCH_DEFINITION");
        } else if (i == 4) {
            TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_ASYNC_CALL_SELECT_TRACK");
        } else if (i == 200) {
            return 2007;
        } else {
            if (i == 201) {
                return 2014;
            }
            if (i == 251) {
                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_ADAPTIVE_SWITCH_DEF_START");
            } else if (i == 252) {
                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_ADAPTIVE_SWITCH_DEF_END");
            } else if (i == 1013) {
                TXCLog.i(this.TAG, "TP_PLAYER_INFO_RETRY_PLAYER_START");
            } else if (i != 1014) {
                switch (i) {
                    case -1:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_UNKNOWN");
                        break;
                    case 154:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_EOS");
                        break;
                    case 207:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_ASYNC_CALL_SWITCH_DEFINITION");
                        break;
                    case 505:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_MEDIA_DRM_INFO");
                        break;
                    case 1000:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_PLAYER_TYPE");
                        break;
                    case 1001:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_ALL_DOWNLOAD_FINISH");
                        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
                        if (thumbMediaPlayer != null) {
                            thumbMediaPlayer.updateTcpSpeed(0);
                            break;
                        }
                        break;
                    case 1002:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_PLAY_CDN_URL_UPDATE");
                        break;
                    case 1003:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_PLAY_CDN_INFO_UPDATE");
                        break;
                    case 1004:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_DOWNLOAD_STATUS_UPDATE");
                        break;
                    case 1005:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_PROTOCOL_UPDATE");
                        break;
                    case 1006:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_DOWNLOAD_PROGRESS_UPDATE");
                        return 1006;
                    case 1007:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_URL_EXPIRED");
                        break;
                    case 1008:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_NO_MORE_DATA");
                        break;
                    case 1009:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_IS_USE_PROXY");
                        break;
                    case 1010:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_NETWORK_SUPPORT_BITRATE");
                        break;
                    case 5001:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_PREPARE_TIMEOUT");
                        break;
                    case 5002:
                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_BUFFER_TIMEOUT");
                        break;
                    default:
                        switch (i) {
                            case 101:
                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_FIRST_CLIP_OPENED");
                                break;
                            case 102:
                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_VIDEO_KEY_PACKET_READ");
                                break;
                            case 103:
                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_FIRST_AUDIO_DECODER_START");
                                break;
                            case 104:
                                return 2008;
                            case 105:
                            case 107:
                                break;
                            case 106:
                                ThumbMediaPlayer thumbMediaPlayer2 = this.mThumbMediaPlayer.get();
                                if (thumbMediaPlayer2 != null) {
                                    thumbMediaPlayer2.onReceiveFirstVideoRenderEvent();
                                    break;
                                }
                                break;
                            default:
                                switch (i) {
                                    case 150:
                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_CURRENT_LOOP_START");
                                        break;
                                    case 151:
                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_CURRENT_LOOP_END");
                                        break;
                                    case 152:
                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_CLIP_EOS");
                                        break;
                                    default:
                                        switch (i) {
                                            case 203:
                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_AUDIO_DECODER_TYPE");
                                                break;
                                            case 204:
                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG1_VIDEO_DECODER_TYPE");
                                                break;
                                            case 205:
                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_AUDIO_SW_DECODING_SLOW");
                                                break;
                                            default:
                                                switch (i) {
                                                    case 209:
                                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG2_DROP_FRAME");
                                                        break;
                                                    case 210:
                                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_AUDIO_PASS_THROUGH_START");
                                                        break;
                                                    case 211:
                                                        TXCLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_AUDIO_PASS_THROUGH_STOP");
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 500:
                                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_VIDEO_CROP");
                                                                break;
                                                            case 501:
                                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_PRIVATE_HLS_TAG");
                                                                break;
                                                            case 502:
                                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_MEDIA_CODEC_INFO");
                                                                break;
                                                            case 503:
                                                                TXCLog.i(this.TAG, "TP_PLAYER_INFO_OBJECT_VIDEO_SEI");
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                }
            } else {
                TXCLog.i(this.TAG, "TP_PLAYER_INFO_RETRY_PLAYER_STOP");
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnErrorListener
    public void onError(ITPPlayer iTPPlayer, int i, int i2, long j, long j2) {
        ThumbMediaPlayer thumbMediaPlayer;
        if (i != 1000 && (thumbMediaPlayer = this.mThumbMediaPlayer.get()) != null) {
            int transferError = transferError(i, i2);
            String str = this.TAG;
            TXCLog.i(str, "ThumbMediaPlayerListener onError:errorType" + i + ": errorCode:" + i2 + ": arg1:" + j + ": arg2" + j2);
            thumbMediaPlayer.notifyOnError(transferError, (int) j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0091 A[PHI: r1 
      PHI: (r1v1 int) = (r1v0 int), (r1v0 int), (r1v2 int), (r1v3 int), (r1v4 int) binds: [B:70:0x012d, B:42:0x0084, B:45:0x008f, B:44:0x008c, B:43:0x0089] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private int transferError(int r9, int r10) {
        /*
        // Method dump skipped, instructions count: 438
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.thumbplayer.ThumbMediaPlayerListener.transferError(int, int):int");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSeekCompleteListener
    public void onSeekComplete(ITPPlayer iTPPlayer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onSeekComplete");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnSeekComplete();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
    public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onAudioFrameOut");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStateChangeListener
    public void onStateChange(int i, int i2) {
        String str = this.TAG;
        TXCLog.i(str, "ThumbMediaPlayerListener onStateChange:preState" + i + ": curState:" + i2);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStopAsyncCompleteListener
    public void onStopAsyncComplete(ITPPlayer iTPPlayer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onStopAsyncComplete");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleDataListener
    public void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null && tPSubtitleData != null) {
            String str = this.TAG;
            TXCLog.i(str, "ThumbMediaPlayerListener onSubtitleData:" + tPSubtitleData.subtitleData);
            thumbMediaPlayer.notifyOnTimedText(new j(new Rect(0, 0, 1, 1), tPSubtitleData.subtitleData));
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleFrameOutListener
    public void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onSubtitleFrameOut");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoFrameOutListener
    public void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onVideoFrameOut");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoProcessFrameOutputListener
    public TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        TXCLog.i(this.TAG, "ThumbMediaPlayerListener onVideoProcessFrameOut");
        return tPPostProcessFrameBuffer;
    }
}
