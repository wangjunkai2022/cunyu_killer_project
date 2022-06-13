package com.humrousz.sequence;

import android.graphics.Bitmap;
import com.facebook.animated.gif.GifImage;
import com.facebook.animated.webp.WebPImage;
import com.facebook.imagepipeline.animated.base.AnimatedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FrescoSequence extends BaseAnimationSequence {
    public static final int GIF = 2;
    public static final int WEBP = 1;
    private AnimatedImage mWebpImage;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ImageType {
    }

    @Override // com.humrousz.sequence.BaseAnimationSequence
    public boolean isOpaque() {
        return false;
    }

    public FrescoSequence(AnimatedImage animatedImage) {
        this(animatedImage.getWidth(), animatedImage.getHeight(), animatedImage.getFrameCount(), animatedImage.getLoopCount());
        this.mWebpImage = animatedImage;
    }

    private FrescoSequence(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    @Override // com.humrousz.sequence.BaseAnimationSequence
    public long getFrame(int i, Bitmap bitmap, int i2) {
        this.mWebpImage.getFrame(i).renderFrame(this.mWebpImage.getWidth(), this.mWebpImage.getHeight(), bitmap);
        return (long) this.mWebpImage.getFrame(((i + this.mWebpImage.getFrameCount()) - 1) % this.mWebpImage.getFrameCount()).getDurationMs();
    }

    public static FrescoSequence decodeStream(InputStream inputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, bArr.length);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i != 2) {
            return decodeWebPByteArray(byteArray);
        }
        return decodeGifPByteArray(byteArray);
    }

    public static FrescoSequence decodeWebPByteArray(byte[] bArr) {
        return new FrescoSequence(WebPImage.create(bArr));
    }

    public static FrescoSequence decodeGifPByteArray(byte[] bArr) {
        return new FrescoSequence(GifImage.create(bArr));
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FrescoWebpSequenceFactory extends BaseSequenceFactory {
        @Override // com.humrousz.sequence.BaseSequenceFactory
        public BaseAnimationSequence createSequence(InputStream inputStream) {
            return FrescoSequence.decodeStream(inputStream, 1);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FrescoGifSequenceFactory extends BaseSequenceFactory {
        @Override // com.humrousz.sequence.BaseSequenceFactory
        public BaseAnimationSequence createSequence(InputStream inputStream) {
            return FrescoSequence.decodeStream(inputStream, 2);
        }
    }

    public static BaseSequenceFactory getSequenceFactory(int i) {
        if (i == 2) {
            return new FrescoGifSequenceFactory();
        }
        return new FrescoWebpSequenceFactory();
    }
}
