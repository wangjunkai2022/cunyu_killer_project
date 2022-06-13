package com.example.flutterimagecompress.handle.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.example.flutterimagecompress.exif.ExifKeeper;
import com.example.flutterimagecompress.ext.BitmapCompressExtKt;
import com.example.flutterimagecompress.handle.FormatHandler;
import com.example.flutterimagecompress.logger.LogExtKt;
import com.umeng.analytics.pro.c;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommonHandler.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J:\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0002JP\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016JX\u0010 \u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006#"}, d2 = {"Lcom/example/flutterimagecompress/handle/common/CommonHandler;", "Lcom/example/flutterimagecompress/handle/FormatHandler;", "type", "", "(I)V", "bitmapFormat", "Landroid/graphics/Bitmap$CompressFormat;", "getBitmapFormat", "()Landroid/graphics/Bitmap$CompressFormat;", "getType", "()I", "typeName", "", "getTypeName", "()Ljava/lang/String;", "compress", "", "arr", "minWidth", "minHeight", "quality", "rotate", "inSampleSize", "handleByteArray", "", c.R, "Landroid/content/Context;", "byteArray", "outputStream", "Ljava/io/OutputStream;", "keepExif", "", "handleFile", "path", "numberOfRetries", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CommonHandler implements FormatHandler {
    private final int type;

    public CommonHandler(int i) {
        this.type = i;
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public int getType() {
        return this.type;
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public String getTypeName() {
        int type = getType();
        if (type != 1) {
            return type != 3 ? "jpeg" : "webp";
        }
        return "png";
    }

    private final Bitmap.CompressFormat getBitmapFormat() {
        int type = getType();
        if (type == 1) {
            return Bitmap.CompressFormat.PNG;
        }
        if (type != 3) {
            return Bitmap.CompressFormat.JPEG;
        }
        return Bitmap.CompressFormat.WEBP;
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public void handleByteArray(Context context, byte[] bArr, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(bArr, "byteArray");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        byte[] compress = compress(bArr, i, i2, i3, i4, i5);
        if (!z || getBitmapFormat() != Bitmap.CompressFormat.JPEG) {
            outputStream.write(compress);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(compress);
        outputStream.write(new ExifKeeper(bArr).writeToOutputStream(context, byteArrayOutputStream).toByteArray());
    }

    static /* synthetic */ byte[] compress$default(CommonHandler commonHandler, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 16) != 0) {
            i4 = 0;
        }
        return commonHandler.compress(bArr, i, i2, i3, i4, i5);
    }

    private final byte[] compress(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inSampleSize = i5;
        if (Build.VERSION.SDK_INT < 23) {
            options.inDither = true;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        float width = (float) decodeByteArray.getWidth();
        float height = (float) decodeByteArray.getHeight();
        LogExtKt.log(this, Intrinsics.stringPlus("src width = ", Float.valueOf(width)));
        LogExtKt.log(this, Intrinsics.stringPlus("src height = ", Float.valueOf(height)));
        Intrinsics.checkNotNullExpressionValue(decodeByteArray, "bitmap");
        float calcScale = BitmapCompressExtKt.calcScale(decodeByteArray, i, i2);
        LogExtKt.log(this, Intrinsics.stringPlus("scale = ", Float.valueOf(calcScale)));
        float f = width / calcScale;
        float f2 = height / calcScale;
        LogExtKt.log(this, Intrinsics.stringPlus("dst width = ", Float.valueOf(f)));
        LogExtKt.log(this, Intrinsics.stringPlus("dst height = ", Float.valueOf(f2)));
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, (int) f, (int) f2, true);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(bitma…t(), destH.toInt(), true)");
        BitmapCompressExtKt.rotate(createScaledBitmap, i4).compress(getBitmapFormat(), i3, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "outputStream.toByteArray()");
        return byteArray;
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public void handleFile(Context context, String str, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(str, "path");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        if (i6 > 0) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = false;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                options.inSampleSize = i5;
                if (Build.VERSION.SDK_INT < 23) {
                    options.inDither = true;
                }
                Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
                Intrinsics.checkNotNullExpressionValue(decodeFile, "bitmap");
                byte[] compress = BitmapCompressExtKt.compress(decodeFile, i, i2, i3, i4, getType());
                if (!z || getBitmapFormat() != Bitmap.CompressFormat.JPEG) {
                    outputStream.write(compress);
                    return;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byteArrayOutputStream.write(compress);
                outputStream.write(new ExifKeeper(str).writeToOutputStream(context, byteArrayOutputStream).toByteArray());
            } catch (OutOfMemoryError unused) {
                System.gc();
                handleFile(context, str, outputStream, i, i2, i3, i4, z, i5 * 2, i6 - 1);
            }
        }
    }
}
