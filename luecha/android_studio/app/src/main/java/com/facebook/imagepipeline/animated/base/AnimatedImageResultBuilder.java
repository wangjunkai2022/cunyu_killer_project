package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import java.util.List;

/* loaded from: classes2.dex */
public class AnimatedImageResultBuilder {
    private List<CloseableReference<Bitmap>> mDecodedFrames;
    private int mFrameForPreview;
    private final AnimatedImage mImage;
    private CloseableReference<Bitmap> mPreviewBitmap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnimatedImageResultBuilder(AnimatedImage animatedImage) {
        this.mImage = animatedImage;
    }

    public AnimatedImage getImage() {
        return this.mImage;
    }

    public CloseableReference<Bitmap> getPreviewBitmap() {
        return CloseableReference.cloneOrNull(this.mPreviewBitmap);
    }

    public AnimatedImageResultBuilder setPreviewBitmap(CloseableReference<Bitmap> closeableReference) {
        this.mPreviewBitmap = CloseableReference.cloneOrNull(closeableReference);
        return this;
    }

    public int getFrameForPreview() {
        return this.mFrameForPreview;
    }

    public AnimatedImageResultBuilder setFrameForPreview(int i) {
        this.mFrameForPreview = i;
        return this;
    }

    public List<CloseableReference<Bitmap>> getDecodedFrames() {
        return CloseableReference.cloneOrNull(this.mDecodedFrames);
    }

    public AnimatedImageResultBuilder setDecodedFrames(List<CloseableReference<Bitmap>> list) {
        this.mDecodedFrames = CloseableReference.cloneOrNull(list);
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<com.facebook.common.references.CloseableReference<android.graphics.Bitmap>>, com.facebook.common.references.CloseableReference<android.graphics.Bitmap>] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public com.facebook.imagepipeline.animated.base.AnimatedImageResult build() {
        /*
            r3 = this;
            r0 = 0
            com.facebook.imagepipeline.animated.base.AnimatedImageResult r1 = new com.facebook.imagepipeline.animated.base.AnimatedImageResult     // Catch: all -> 0x0015
            r1.<init>(r3)     // Catch: all -> 0x0015
            com.facebook.common.references.CloseableReference<android.graphics.Bitmap> r2 = r3.mPreviewBitmap
            com.facebook.common.references.CloseableReference.closeSafely(r2)
            r3.mPreviewBitmap = r0
            java.util.List<com.facebook.common.references.CloseableReference<android.graphics.Bitmap>> r2 = r3.mDecodedFrames
            com.facebook.common.references.CloseableReference.closeSafely(r2)
            r3.mDecodedFrames = r0
            return r1
        L_0x0015:
            r1 = move-exception
            com.facebook.common.references.CloseableReference<android.graphics.Bitmap> r2 = r3.mPreviewBitmap
            com.facebook.common.references.CloseableReference.closeSafely(r2)
            r3.mPreviewBitmap = r0
            java.util.List<com.facebook.common.references.CloseableReference<android.graphics.Bitmap>> r2 = r3.mDecodedFrames
            com.facebook.common.references.CloseableReference.closeSafely(r2)
            r3.mDecodedFrames = r0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.animated.base.AnimatedImageResultBuilder.build():com.facebook.imagepipeline.animated.base.AnimatedImageResult");
    }
}
