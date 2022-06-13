package com.example.super_player_kit;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.humrousz.sequence.AnimationImageView;
import com.humrousz.sequence.AnimationSequenceDrawable;
import com.humrousz.sequence.FrescoSequence;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class WebpPlayer {
    private Callback _callback;
    private AnimationSequenceDrawable _drawable;
    private String _filename;
    private AnimationImageView _imageView;
    private ViewGroup _parent;
    public int tagID;
    private String TAG = MySvgaPlayer.class.getName();
    private boolean _isPlaying = false;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onFinished();
    }

    public WebpPlayer(Context context, ViewGroup viewGroup) {
        this._parent = viewGroup;
        this._imageView = new AnimationImageView(context);
    }

    public void play(String str, int i, boolean z) {
        if (!playWebp(str, i, z)) {
            new Handler().postDelayed(new Runnable() { // from class: com.example.super_player_kit.WebpPlayer.1
                @Override // java.lang.Runnable
                public void run() {
                    WebpPlayer.this.finished();
                }
            }, 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finished() {
        stop();
        Callback callback = this._callback;
        if (callback != null) {
            callback.onFinished();
        }
    }

    private boolean playWebp(String str, int i, boolean z) {
        if (this._isPlaying) {
            String str2 = this.TAG;
            Log.e(str2, "svga播放" + str + "还未结束。");
            return false;
        }
        this._filename = str;
        if (z) {
            this._imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            this._imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(this._filename);
            try {
                this._isPlaying = true;
                this._drawable = new AnimationSequenceDrawable(FrescoSequence.getSequenceFactory(1).createSequence(fileInputStream));
                this._drawable.setLoopCount(i);
                this._drawable.setLoopBehavior(1);
                this._imageView.setImageDrawable(this._drawable);
                if (this._imageView.getParent() == null) {
                    this._parent.addView(this._imageView);
                }
                this._drawable.setOnFinishedListener(new AnimationSequenceDrawable.OnFinishedListener() { // from class: com.example.super_player_kit.WebpPlayer.2
                    @Override // com.humrousz.sequence.AnimationSequenceDrawable.OnFinishedListener
                    public void onFinished(AnimationSequenceDrawable animationSequenceDrawable) {
                        WebpPlayer.this.finished();
                    }
                });
                return true;
            } finally {
                try {
                    fileInputStream.close();
                } catch (IOException unused) {
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public synchronized void stop() {
        this._isPlaying = false;
        if (this._imageView != null) {
            this._imageView.stopAnimation();
            if (this._imageView.getParent() != null) {
                this._parent.removeView(this._imageView);
            }
            this._imageView = null;
        }
        if (this._drawable != null) {
            this._drawable.setOnFinishedListener(null);
            this._drawable = null;
        }
    }

    public void setCallback(Callback callback) {
        this._callback = callback;
    }
}
