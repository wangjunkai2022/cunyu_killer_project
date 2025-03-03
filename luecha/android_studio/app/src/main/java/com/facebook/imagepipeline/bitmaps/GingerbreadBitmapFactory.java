package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;

/* loaded from: classes2.dex */
public class GingerbreadBitmapFactory extends PlatformBitmapFactory {
    @Override // com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory
    public CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config) {
        return CloseableReference.of(Bitmap.createBitmap(i, i2, config), SimpleBitmapReleaser.getInstance());
    }
}
