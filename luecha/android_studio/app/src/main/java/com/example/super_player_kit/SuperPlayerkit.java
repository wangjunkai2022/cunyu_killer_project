package com.example.super_player_kit;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.example.super_player_kit.MySvgaPlayer;
import com.example.super_player_kit.WebpPlayer;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.rtmp.ITXLivePlayListener;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SuperPlayerkit implements PlatformView, MethodChannel.MethodCallHandler, ITXLivePlayListener {
    private static final String TAG = SuperPlayerkit.class.getName();
    private FrameLayout _view;
    private Context mContext;
    private MethodChannel mMethodChannel;
    private VideoPlayer mVideoPlayer;
    private Handler _mainHandler = new Handler(Looper.getMainLooper());
    private HashMap<Integer, MySvgaPlayer> _svgaPlayers = new HashMap<>();
    private int _seedID_svgaPlayer = 0;
    private HashMap<Integer, WebpPlayer> _webpPlayers = new HashMap<>();
    private int _seedID_webpPlayer = 0;

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewAttached(View view) {
        PlatformView.CC.$default$onFlutterViewAttached(this, view);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewDetached() {
        PlatformView.CC.$default$onFlutterViewDetached(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        PlatformView.CC.$default$onInputConnectionLocked(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        PlatformView.CC.$default$onInputConnectionUnlocked(this);
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onNetStatus(Bundle bundle) {
    }

    private synchronized VideoPlayer getVideoPlayer() {
        if (this.mVideoPlayer == null) {
            this.mVideoPlayer = new VideoPlayer(this.mContext, this._view);
        }
        return this.mVideoPlayer;
    }

    private MySvgaPlayer createSvgaPlayer() {
        final MySvgaPlayer mySvgaPlayer = new MySvgaPlayer(this.mContext, this._view);
        synchronized (this._svgaPlayers) {
            int i = this._seedID_svgaPlayer;
            this._seedID_svgaPlayer = i + 1;
            mySvgaPlayer.tagID = i;
            this._svgaPlayers.put(Integer.valueOf(mySvgaPlayer.tagID), mySvgaPlayer);
        }
        mySvgaPlayer.setCallback(new MySvgaPlayer.Callback() { // from class: com.example.super_player_kit.SuperPlayerkit.1
            @Override // com.example.super_player_kit.MySvgaPlayer.Callback
            public void onFinished() {
                SuperPlayerkit.this._mainHandler.post(new Runnable() { // from class: com.example.super_player_kit.SuperPlayerkit.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SuperPlayerkit.this.mMethodChannel.invokeMethod("svgaComplete", Integer.valueOf(mySvgaPlayer.tagID));
                    }
                });
            }
        });
        return mySvgaPlayer;
    }

    private WebpPlayer createWebpPlayer() {
        final WebpPlayer webpPlayer = new WebpPlayer(this.mContext, this._view);
        synchronized (this._webpPlayers) {
            int i = this._seedID_webpPlayer;
            this._seedID_webpPlayer = i + 1;
            webpPlayer.tagID = i;
            this._webpPlayers.put(Integer.valueOf(webpPlayer.tagID), webpPlayer);
        }
        webpPlayer.setCallback(new WebpPlayer.Callback() { // from class: com.example.super_player_kit.SuperPlayerkit.2
            @Override // com.example.super_player_kit.WebpPlayer.Callback
            public void onFinished() {
                SuperPlayerkit.this._mainHandler.post(new Runnable() { // from class: com.example.super_player_kit.SuperPlayerkit.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SuperPlayerkit.this.mMethodChannel.invokeMethod("webpComplete", Integer.valueOf(webpPlayer.tagID));
                    }
                });
            }
        });
        return webpPlayer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperPlayerkit(Context context, BinaryMessenger binaryMessenger, int i, Map<String, Object> map) {
        this.mMethodChannel = new MethodChannel(binaryMessenger, "super_player_kit_" + i);
        this.mMethodChannel.setMethodCallHandler(this);
        this.mContext = context;
        this._view = new FrameLayout(context);
        this._view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = TAG;
        Log.i(str, "---- onMethodCall ----" + methodCall.method);
        if ("play".equals(methodCall.method)) {
            String str2 = (String) methodCall.arguments;
            String str3 = TAG;
            Log.i(str3, "开始播放:" + str2);
            result.success(Integer.valueOf(getVideoPlayer().playLiveURL(str2, TCUrlUtil.getPlayType(str2), this)));
        } else if ("resume".equals(methodCall.method)) {
            VideoPlayer videoPlayer = this.mVideoPlayer;
            if (videoPlayer != null) {
                videoPlayer.resume();
            }
        } else if ("pause".equals(methodCall.method)) {
            VideoPlayer videoPlayer2 = this.mVideoPlayer;
            if (videoPlayer2 != null) {
                videoPlayer2.pause();
            }
        } else if ("stopPlay".equals(methodCall.method)) {
            VideoPlayer videoPlayer3 = this.mVideoPlayer;
            if (videoPlayer3 != null) {
                videoPlayer3.stopPlay();
            }
        } else if ("setMute".equals(methodCall.method)) {
            int parseInt = Integer.parseInt(methodCall.arguments.toString());
            VideoPlayer videoPlayer4 = this.mVideoPlayer;
            if (videoPlayer4 != null) {
                boolean z = true;
                if (1 != parseInt) {
                    z = false;
                }
                videoPlayer4.setMute(z);
            }
        } else if ("playSvga".equals(methodCall.method)) {
            HashMap hashMap = (HashMap) methodCall.arguments;
            String str4 = (String) hashMap.get("filename");
            String str5 = (String) hashMap.get("waterMaskName");
            int intValue = ((Integer) hashMap.get("loops")).intValue();
            boolean booleanValue = ((Boolean) hashMap.get("fullScreen")).booleanValue();
            String str6 = TAG;
            Log.i(str6, "开始播放SVGA:" + str4 + ",去水印:" + str5);
            MySvgaPlayer createSvgaPlayer = createSvgaPlayer();
            createSvgaPlayer.play(str4, str5, intValue, booleanValue);
            result.success(Integer.valueOf(createSvgaPlayer.tagID));
        } else {
            WebpPlayer webpPlayer = null;
            MySvgaPlayer mySvgaPlayer = null;
            if ("stopSvga".equals(methodCall.method)) {
                int parseInt2 = Integer.parseInt(methodCall.arguments.toString());
                synchronized (this._svgaPlayers) {
                    if (this._svgaPlayers.containsKey(Integer.valueOf(parseInt2))) {
                        mySvgaPlayer = this._svgaPlayers.get(Integer.valueOf(parseInt2));
                        this._svgaPlayers.remove(Integer.valueOf(parseInt2));
                    }
                }
                if (mySvgaPlayer != null) {
                    mySvgaPlayer.stop();
                }
            } else if ("release".equals(methodCall.method)) {
                release();
            } else if ("playWebp".equals(methodCall.method)) {
                HashMap hashMap2 = (HashMap) methodCall.arguments;
                String str7 = (String) hashMap2.get("filename");
                int intValue2 = ((Integer) hashMap2.get("loops")).intValue();
                boolean booleanValue2 = ((Boolean) hashMap2.get("fullScreen")).booleanValue();
                String str8 = TAG;
                Log.i(str8, "开始播放Webp:" + str7);
                WebpPlayer createWebpPlayer = createWebpPlayer();
                createWebpPlayer.play(str7, intValue2, booleanValue2);
                result.success(Integer.valueOf(createWebpPlayer.tagID));
            } else if ("stopWebp".equals(methodCall.method)) {
                int parseInt3 = Integer.parseInt(methodCall.arguments.toString());
                synchronized (this._webpPlayers) {
                    if (this._webpPlayers.containsKey(Integer.valueOf(parseInt3))) {
                        webpPlayer = this._webpPlayers.get(Integer.valueOf(parseInt3));
                        this._webpPlayers.remove(Integer.valueOf(parseInt3));
                    }
                }
                if (webpPlayer != null) {
                    webpPlayer.stop();
                }
            } else {
                result.notImplemented();
            }
        }
    }

    private void release() {
        for (MySvgaPlayer mySvgaPlayer : this._svgaPlayers.values()) {
            mySvgaPlayer.stop();
        }
        this._svgaPlayers.clear();
        for (WebpPlayer webpPlayer : this._webpPlayers.values()) {
            webpPlayer.stop();
        }
        this._webpPlayers.clear();
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this._view;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.dispose();
        }
        this.mVideoPlayer = null;
        release();
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onPlayEvent(int i, Bundle bundle) {
        if (i != 2005) {
            String str = TAG;
            TXCLog.d(str, "onPlayEvent:i=" + i + "bundle=" + bundle.toString());
        }
        if (i == 2003) {
            this.mMethodChannel.invokeMethod("firstFrame", null);
        } else if (i == -2301) {
            this.mMethodChannel.invokeMethod("disconnect", null);
        }
    }
}
