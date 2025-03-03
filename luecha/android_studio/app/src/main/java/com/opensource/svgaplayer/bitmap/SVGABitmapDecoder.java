package com.opensource.svgaplayer.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: SVGABitmapDecoder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\u001f\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\rH&¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "decodeBitmapFrom", "Landroid/graphics/Bitmap;", "data", "reqWidth", "", "reqHeight", "(Ljava/lang/Object;II)Landroid/graphics/Bitmap;", "onDecode", "ops", "Landroid/graphics/BitmapFactory$Options;", "(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public abstract class SVGABitmapDecoder<T> {
    public abstract Bitmap onDecode(T t, BitmapFactory.Options options);

    public final Bitmap decodeBitmapFrom(T t, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = i > 0 && i2 > 0;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap onDecode = onDecode(t, options);
        if (!options.inJustDecodeBounds) {
            return onDecode;
        }
        options.inSampleSize = BitmapSampleSizeCalculator.INSTANCE.calculate(options, i, i2);
        options.inJustDecodeBounds = false;
        return onDecode(t, options);
    }
}
