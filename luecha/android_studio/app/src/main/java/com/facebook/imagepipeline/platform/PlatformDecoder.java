package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;

/* loaded from: classes2.dex */
public interface PlatformDecoder {
    CloseableReference<Bitmap> decodeFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config);

    CloseableReference<Bitmap> decodeJPEGFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, int i);
}
