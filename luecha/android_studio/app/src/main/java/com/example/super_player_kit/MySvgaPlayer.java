package com.example.super_player_kit;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGADynamicEntity;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.utils.log.SVGALogger;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class MySvgaPlayer {
    private Callback _callback;
    private SVGADrawable _drawable;
    private String _filename;
    private ViewGroup _parent;
    private SVGAImageView _svgaImageView;
    public int tagID;
    private String TAG = MySvgaPlayer.class.getName();
    private Handler _mainHandler = new Handler(Looper.getMainLooper());
    private boolean _isPlaying = false;
    private Object _lock = new Object();
    private SVGAParser _parser = SVGAParser.Companion.shareParser();

    /* loaded from: classes2.dex */
    public interface Callback {
        void onFinished();
    }

    public MySvgaPlayer(Context context, ViewGroup viewGroup) {
        this._parent = viewGroup;
        this._svgaImageView = new SVGAImageView(context);
        this._svgaImageView.setLoops(1);
        this._parser.init(context);
        SVGALogger.INSTANCE.setLogEnabled(true);
    }

    public void play(String str, String str2, int i, boolean z) {
        boolean playSvga = playSvga(str, str2, i, z);
        String str3 = this.TAG;
        Log.e(str3, "svga播放" + playSvga);
        if (!playSvga) {
            this._mainHandler.postDelayed(new Runnable() { // from class: com.example.super_player_kit.MySvgaPlayer.1
                @Override // java.lang.Runnable
                public void run() {
                    MySvgaPlayer.this.finished();
                }
            }, 1000);
        }
    }

    public void finished() {
        stop();
        Callback callback = this._callback;
        if (callback != null) {
            callback.onFinished();
        }
    }

    private boolean playSvga(final String str, final String str2, int i, boolean z) {
        String str3 = this.TAG;
        Log.e(str3, "svga播放" + str + "还未结束。");
        if (this._isPlaying) {
            String str4 = this.TAG;
            Log.e(str4, "svga播放" + str + "还未结束。");
            return false;
        }
        this._filename = str;
        this._svgaImageView.setLoops(i);
        if (z) {
            this._svgaImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            this._svgaImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        try {
            try {
                this._parser.decodeFromInputStream(new FileInputStream(this._filename), this._filename, new SVGAParser.ParseCompletion() { // from class: com.example.super_player_kit.MySvgaPlayer.2
                    @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                    public void onComplete(final SVGAVideoEntity sVGAVideoEntity) {
                        MySvgaPlayer.this._mainHandler.post(new Runnable() { // from class: com.example.super_player_kit.MySvgaPlayer.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MySvgaPlayer.this._svgaImageView != null) {
                                    SVGADynamicEntity sVGADynamicEntity = new SVGADynamicEntity();
                                    if (!TextUtils.isEmpty(str2)) {
                                        for (String str5 : str2.split(",")) {
                                            sVGADynamicEntity.setHidden(true, str5);
                                        }
                                    }
                                    MySvgaPlayer.this._drawable = new SVGADrawable(sVGAVideoEntity, sVGADynamicEntity);
                                    if (MySvgaPlayer.this._svgaImageView.getParent() == null) {
                                        MySvgaPlayer.this._parent.addView(MySvgaPlayer.this._svgaImageView);
                                    }
                                    MySvgaPlayer.this._svgaImageView.setImageDrawable(MySvgaPlayer.this._drawable);
                                    MySvgaPlayer.this._svgaImageView.setCallback(new SVGACallback() { // from class: com.example.super_player_kit.MySvgaPlayer.2.1.1
                                        @Override // com.opensource.svgaplayer.SVGACallback
                                        public void onPause() {
                                        }

                                        @Override // com.opensource.svgaplayer.SVGACallback
                                        public void onRepeat() {
                                        }

                                        @Override // com.opensource.svgaplayer.SVGACallback
                                        public void onStep(int i2, double d) {
                                        }

                                        @Override // com.opensource.svgaplayer.SVGACallback
                                        public void onFinished() {
                                            MySvgaPlayer.this.finished();
                                        }
                                    });
                                    MySvgaPlayer.this._svgaImageView.startAnimation();
                                    MySvgaPlayer.this._isPlaying = true;
                                }
                            }
                        });
                    }

                    @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                    public void onError() {
                        String str5 = MySvgaPlayer.this.TAG;
                        Log.e(str5, "svga文件解析错误" + str);
                    }
                }, true, null, null);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public synchronized void stop() {
        this._mainHandler.post(new Runnable() { // from class: com.example.super_player_kit.MySvgaPlayer.3
            @Override // java.lang.Runnable
            public void run() {
                MySvgaPlayer.this._isPlaying = false;
                if (MySvgaPlayer.this._svgaImageView != null) {
                    MySvgaPlayer.this._svgaImageView.stopAnimation();
                    MySvgaPlayer.this._svgaImageView.setCallback(null);
                    MySvgaPlayer.this._svgaImageView.setImageDrawable(null);
                    if (MySvgaPlayer.this._svgaImageView.getParent() != null) {
                        MySvgaPlayer.this._parent.removeView(MySvgaPlayer.this._svgaImageView);
                    }
                    MySvgaPlayer.this._svgaImageView = null;
                }
            }
        });
    }

    public void setCallback(Callback callback) {
        this._callback = callback;
    }
}
