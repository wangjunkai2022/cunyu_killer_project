package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public class AnimatedImageResult {
    @Nullable
    private List<CloseableReference<Bitmap>> mDecodedFrames;
    private final int mFrameForPreview;
    private final AnimatedImage mImage;
    @Nullable
    private CloseableReference<Bitmap> mPreviewBitmap;

    public AnimatedImageResult(AnimatedImageResultBuilder animatedImageResultBuilder) {
        this.mImage = (AnimatedImage) Preconditions.checkNotNull(animatedImageResultBuilder.getImage());
        this.mFrameForPreview = animatedImageResultBuilder.getFrameForPreview();
        this.mPreviewBitmap = animatedImageResultBuilder.getPreviewBitmap();
        this.mDecodedFrames = animatedImageResultBuilder.getDecodedFrames();
    }

    private AnimatedImageResult(AnimatedImage animatedImage) {
        this.mImage = (AnimatedImage) Preconditions.checkNotNull(animatedImage);
        this.mFrameForPreview = 0;
    }

    public static AnimatedImageResult forAnimatedImage(AnimatedImage animatedImage) {
        return new AnimatedImageResult(animatedImage);
    }

    public static AnimatedImageResultBuilder newBuilder(AnimatedImage animatedImage) {
        return new AnimatedImageResultBuilder(animatedImage);
    }

    public AnimatedImage getImage() {
        return this.mImage;
    }

    public int getFrameForPreview() {
        return this.mFrameForPreview;
    }

    @Nullable
    public synchronized CloseableReference<Bitmap> getDecodedFrame(int i) {
        if (this.mDecodedFrames == null) {
            return null;
        }
        return CloseableReference.cloneOrNull(this.mDecodedFrames.get(i));
    }

    public synchronized boolean hasDecodedFrame(int i) {
        boolean z;
        if (this.mDecodedFrames != null) {
            if (this.mDecodedFrames.get(i) != null) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized CloseableReference<Bitmap> getPreviewBitmap() {
        return CloseableReference.cloneOrNull(this.mPreviewBitmap);
    }

    public synchronized void dispose() {
        CloseableReference.closeSafely(this.mPreviewBitmap);
        this.mPreviewBitmap = null;
        CloseableReference.closeSafely(this.mDecodedFrames);
        this.mDecodedFrames = null;
    }
}
