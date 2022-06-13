package com.example.flutterimagecompress.ext;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.example.flutterimagecompress.FlutterImageCompressPlugin;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BitmapCompressExt.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002\u001a\u001a\u0010\b\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003\u001a>\u0010\r\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u001a4\u0010\r\u001a\u00020\u0013*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003\u001a\u0012\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0003¨\u0006\u0014"}, d2 = {"convertFormatIndexToFormat", "Landroid/graphics/Bitmap$CompressFormat;", "type", "", "log", "", "any", "", "calcScale", "", "Landroid/graphics/Bitmap;", "minWidth", "minHeight", "compress", "quality", "rotate", "outputStream", "Ljava/io/OutputStream;", "format", "", "flutter_image_compress_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BitmapCompressExtKt {
    public static /* synthetic */ byte[] compress$default(Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 8) != 0) {
            i4 = 0;
        }
        return compress(bitmap, i, i2, i3, i4, i5);
    }

    public static final byte[] compress(Bitmap bitmap, int i, int i2, int i3, int i4, int i5) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        compress(bitmap, i, i2, i3, i4, byteArrayOutputStream, i5);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "outputStream.toByteArray()");
        return byteArray;
    }

    public static final void compress(Bitmap bitmap, int i, int i2, int i3, int i4, OutputStream outputStream, int i5) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        float width = (float) bitmap.getWidth();
        float height = (float) bitmap.getHeight();
        log(Intrinsics.stringPlus("src width = ", Float.valueOf(width)));
        log(Intrinsics.stringPlus("src height = ", Float.valueOf(height)));
        float calcScale = calcScale(bitmap, i, i2);
        log(Intrinsics.stringPlus("scale = ", Float.valueOf(calcScale)));
        float f = width / calcScale;
        float f2 = height / calcScale;
        log(Intrinsics.stringPlus("dst width = ", Float.valueOf(f)));
        log(Intrinsics.stringPlus("dst height = ", Float.valueOf(f2)));
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) f, (int) f2, true);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(this,…t(), destH.toInt(), true)");
        rotate(createScaledBitmap, i4).compress(convertFormatIndexToFormat(i5), i3, outputStream);
    }

    private static final void log(Object obj) {
        if (FlutterImageCompressPlugin.Companion.getShowLog()) {
            PrintStream printStream = System.out;
            if (obj == null) {
                obj = "null";
            }
            printStream.println(obj);
        }
    }

    public static final Bitmap rotate(Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        if (i % 360 == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate((float) i);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "{\n    val matrix = Matri…eight, matrix, false)\n  }");
        return createBitmap;
    }

    public static final float calcScale(Bitmap bitmap, int i, int i2) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        float width = ((float) bitmap.getWidth()) / ((float) i);
        float height = ((float) bitmap.getHeight()) / ((float) i2);
        log(Intrinsics.stringPlus("width scale = ", Float.valueOf(width)));
        log(Intrinsics.stringPlus("height scale = ", Float.valueOf(height)));
        return Math.max(1.0f, Math.min(width, height));
    }

    public static final Bitmap.CompressFormat convertFormatIndexToFormat(int i) {
        if (i != 1) {
            return i != 3 ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.PNG;
    }
}
