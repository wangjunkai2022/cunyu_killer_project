package com.humrousz.sequence;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.humrousz.sequence.AnimationSequenceDrawable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class AnimationImageView extends AppCompatImageView {
    private static final String ANDROID_NS = "http://schemas.android.com/apk/res/android";
    private static final List<String> SUPPORTED_RESOURCE_TYPE_NAMES = Arrays.asList("raw", "drawable", "mipmap");
    private AnimationSequenceDrawable mAnimatedBgDrawable;
    private AnimationSequenceDrawable mAnimatedSrcDrawable;
    private AnimationSequenceDrawable.OnFinishedListener mDrawableFinishedListener;
    private OnFinishedListener mFinishedListener;
    private BaseSequenceFactory mSequenceFactory;
    private int mLoopCount = 1;
    private int mLoopBehavior = 3;

    /* loaded from: classes2.dex */
    public interface OnFinishedListener {
        void onFinished();
    }

    public AnimationImageView(Context context) {
        super(context);
    }

    public AnimationImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public AnimationImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mDrawableFinishedListener = new AnimationSequenceDrawable.OnFinishedListener() { // from class: com.humrousz.sequence.AnimationImageView.1
            @Override // com.humrousz.sequence.AnimationSequenceDrawable.OnFinishedListener
            public void onFinished(AnimationSequenceDrawable animationSequenceDrawable) {
                if (AnimationImageView.this.mFinishedListener != null) {
                    AnimationImageView.this.mFinishedListener.onFinished();
                }
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AnimationImageView);
            this.mLoopCount = obtainStyledAttributes.getInt(R.styleable.AnimationImageView_loopCount, -1);
            if (this.mLoopCount != -1) {
                setLoopFinite();
            } else {
                this.mLoopBehavior = obtainStyledAttributes.getInt(R.styleable.AnimationImageView_loopBehavior, 3);
            }
            this.mSequenceFactory = FrescoSequence.getSequenceFactory(obtainStyledAttributes.getInt(R.styleable.AnimationImageView_srcType, 1));
            obtainStyledAttributes.recycle();
            int attributeResourceValue = attributeSet.getAttributeResourceValue(ANDROID_NS, "src", 0);
            if (attributeResourceValue > 0) {
                if (SUPPORTED_RESOURCE_TYPE_NAMES.contains(context.getResources().getResourceTypeName(attributeResourceValue)) && !setAnimatedResource(true, attributeResourceValue)) {
                    super.setImageResource(attributeResourceValue);
                }
            }
            int attributeResourceValue2 = attributeSet.getAttributeResourceValue(ANDROID_NS, "background", 0);
            if (attributeResourceValue2 > 0) {
                if (SUPPORTED_RESOURCE_TYPE_NAMES.contains(context.getResources().getResourceTypeName(attributeResourceValue2)) && !setAnimatedResource(false, attributeResourceValue2)) {
                    super.setBackgroundResource(attributeResourceValue2);
                }
            }
        }
    }

    private boolean setAnimatedResource(boolean z, int i) {
        Resources resources = getResources();
        if (resources == null) {
            return false;
        }
        try {
            AnimationSequenceDrawable createDrawable = createDrawable(getInputStreamByResource(resources, i));
            if (z) {
                setImageDrawable(createDrawable);
                if (this.mAnimatedSrcDrawable != null) {
                    this.mAnimatedSrcDrawable.destroy();
                }
                this.mAnimatedSrcDrawable = createDrawable;
                return true;
            } else if (Build.VERSION.SDK_INT >= 16) {
                setBackground(createDrawable);
                if (this.mAnimatedBgDrawable != null) {
                    this.mAnimatedBgDrawable.destroy();
                }
                this.mAnimatedBgDrawable = createDrawable;
                return true;
            } else {
                setBackgroundDrawable(createDrawable);
                if (this.mAnimatedBgDrawable != null) {
                    this.mAnimatedBgDrawable.destroy();
                }
                this.mAnimatedBgDrawable = createDrawable;
                return true;
            }
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (!setAnimatedImageUri(this, uri)) {
            super.setImageURI(uri);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        if (!setAnimatedResource(true, i)) {
            super.setImageResource(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.view.View
    public void setBackgroundResource(int i) {
        if (!setAnimatedResource(false, i)) {
            super.setBackgroundResource(i);
        }
    }

    public boolean setImageResourceFromAssets(String str) {
        try {
            AnimationSequenceDrawable createDrawable = createDrawable(getContext().getResources().getAssets().open(str));
            setImageDrawable(createDrawable);
            if (this.mAnimatedSrcDrawable != null) {
                this.mAnimatedSrcDrawable.destroy();
            }
            this.mAnimatedSrcDrawable = createDrawable;
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean setAnimatedImageUri(ImageView imageView, Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            AnimationSequenceDrawable createDrawable = createDrawable(getInputStreamByUri(imageView.getContext(), uri));
            imageView.setImageDrawable(createDrawable);
            if (this.mAnimatedSrcDrawable != null) {
                this.mAnimatedSrcDrawable.destroy();
            }
            this.mAnimatedSrcDrawable = createDrawable;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private AnimationSequenceDrawable createDrawable(InputStream inputStream) {
        AnimationSequenceDrawable animationSequenceDrawable = new AnimationSequenceDrawable(this.mSequenceFactory.createSequence(inputStream));
        animationSequenceDrawable.setLoopCount(this.mLoopCount);
        animationSequenceDrawable.setLoopBehavior(this.mLoopBehavior);
        animationSequenceDrawable.setOnFinishedListener(this.mDrawableFinishedListener);
        return animationSequenceDrawable;
    }

    private InputStream getInputStreamByResource(Resources resources, int i) {
        return resources.openRawResource(i);
    }

    private InputStream getInputStreamByUri(Context context, Uri uri) throws IOException {
        if ("file".equals(uri.getScheme())) {
            return new FileInputStream(new File(uri.getPath()));
        }
        return context.getResources().getAssets().open(uri.getPath());
    }

    public void setLoopCount(int i) {
        this.mLoopCount = i;
        setLoopFinite();
        AnimationSequenceDrawable animationSequenceDrawable = this.mAnimatedBgDrawable;
        if (animationSequenceDrawable != null) {
            animationSequenceDrawable.setLoopCount(this.mLoopCount);
        }
        AnimationSequenceDrawable animationSequenceDrawable2 = this.mAnimatedSrcDrawable;
        if (animationSequenceDrawable2 != null) {
            animationSequenceDrawable2.setLoopCount(this.mLoopCount);
        }
    }

    public void setLoopDefault() {
        this.mLoopBehavior = 3;
    }

    public void setLoopFinite() {
        this.mLoopBehavior = 1;
    }

    public void setLoopInf() {
        this.mLoopBehavior = 2;
    }

    public void stopAnimation() {
        AnimationSequenceDrawable animationSequenceDrawable = this.mAnimatedSrcDrawable;
        if (animationSequenceDrawable != null) {
            animationSequenceDrawable.stop();
        }
    }

    public void setOnFinishedListener(OnFinishedListener onFinishedListener) {
        this.mFinishedListener = onFinishedListener;
    }

    public void setSequenceFactory(BaseSequenceFactory baseSequenceFactory) {
        if (baseSequenceFactory != null) {
            this.mSequenceFactory = baseSequenceFactory;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimationSequenceDrawable animationSequenceDrawable = this.mAnimatedBgDrawable;
        if (animationSequenceDrawable != null) {
            animationSequenceDrawable.destroy();
        }
        AnimationSequenceDrawable animationSequenceDrawable2 = this.mAnimatedSrcDrawable;
        if (animationSequenceDrawable2 != null) {
            animationSequenceDrawable2.destroy();
        }
    }
}
