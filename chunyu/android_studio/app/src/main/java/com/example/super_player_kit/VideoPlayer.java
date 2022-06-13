package com.example.super_player_kit;

import android.content.Context;
import android.media.AudioManager;
import android.view.ViewGroup;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.TXLivePlayConfig;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class VideoPlayer {
    private static TXLivePlayConfig gLivePlayConfig;
    private AudioManager mAudioManager;
    private TXLivePlayer mLivePlayer;
    private TXCloudVideoView mTXCloudVideoView;
    private static final String TAG = VideoPlayer.class.getName();
    private static List<TXLivePlayer> POOLS_PLAYER = new ArrayList();
    private static List<TXCloudVideoView> POOLS_VIDEOVIEWS = new ArrayList();

    static TXLivePlayer popPlayer(Context context) {
        synchronized (POOLS_PLAYER) {
            if (POOLS_PLAYER.size() > 0) {
                return POOLS_PLAYER.remove(0);
            }
            return new TXLivePlayer(context);
        }
    }

    static void pushPlayer(TXLivePlayer tXLivePlayer) {
        synchronized (POOLS_PLAYER) {
            POOLS_PLAYER.add(tXLivePlayer);
        }
    }

    static TXCloudVideoView popVideoView(Context context) {
        synchronized (POOLS_VIDEOVIEWS) {
            if (POOLS_VIDEOVIEWS.size() > 0) {
                return POOLS_VIDEOVIEWS.remove(0);
            }
            return new TXCloudVideoView(context);
        }
    }

    static void pushVideoView(TXCloudVideoView tXCloudVideoView) {
        synchronized (POOLS_VIDEOVIEWS) {
            POOLS_VIDEOVIEWS.add(tXCloudVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoPlayer(Context context, ViewGroup viewGroup) {
        this.mTXCloudVideoView = popVideoView(context);
        this.mTXCloudVideoView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        viewGroup.addView(this.mTXCloudVideoView, 0);
        this.mLivePlayer = popPlayer(context);
        if (gLivePlayConfig != null) {
            gLivePlayConfig = new TXLivePlayConfig();
            gLivePlayConfig.setCacheTime(1.0f);
            gLivePlayConfig.setAutoAdjustCacheTime(true);
            gLivePlayConfig.setMinAutoAdjustCacheTime(1.0f);
            gLivePlayConfig.setMaxAutoAdjustCacheTime(1.0f);
        }
        this.mLivePlayer.setConfig(gLivePlayConfig);
        this.mLivePlayer.setRenderMode(0);
        this.mLivePlayer.setRenderRotation(0);
        this.mLivePlayer.enableHardwareDecode(true);
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioManager.requestAudioFocus(null, 3, 2);
        new AudioManager.OnAudioFocusChangeListener() { // from class: com.example.super_player_kit.VideoPlayer.1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                if (i == -1 || i != -2) {
                }
            }
        };
    }

    public int playLiveURL(String str, int i, ITXLivePlayListener iTXLivePlayListener) {
        TXLivePlayer tXLivePlayer = this.mLivePlayer;
        if (tXLivePlayer == null) {
            return -1;
        }
        tXLivePlayer.setPlayerView(this.mTXCloudVideoView);
        this.mLivePlayer.setPlayListener(iTXLivePlayListener);
        return this.mLivePlayer.startPlay(str, i);
    }

    public void resume() {
        this.mLivePlayer.resume();
    }

    public void pause() {
        this.mLivePlayer.pause();
    }

    public void setMute(boolean z) {
        this.mLivePlayer.setMute(z);
    }

    public void stopPlay() {
        TXLivePlayer tXLivePlayer = this.mLivePlayer;
        if (tXLivePlayer != null) {
            tXLivePlayer.setPlayListener(null);
            this.mLivePlayer.stopPlay(false);
        }
    }

    public void dispose() {
        stopPlay();
        TXLivePlayer tXLivePlayer = this.mLivePlayer;
        if (tXLivePlayer != null) {
            pushPlayer(tXLivePlayer);
            this.mLivePlayer = null;
        }
        TXCloudVideoView tXCloudVideoView = this.mTXCloudVideoView;
        if (tXCloudVideoView != null) {
            if (tXCloudVideoView.getParent() != null) {
                ((ViewGroup) this.mTXCloudVideoView.getParent()).removeView(this.mTXCloudVideoView);
            }
            pushVideoView(this.mTXCloudVideoView);
            this.mTXCloudVideoView = null;
        }
    }
}
