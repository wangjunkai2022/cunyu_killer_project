package com.example.flutterimagecompress.handle.heif;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.heifwriter.HeifWriter;
import com.example.flutterimagecompress.ext.BitmapCompressExtKt;
import com.example.flutterimagecompress.handle.FormatHandler;
import com.example.flutterimagecompress.logger.LogExtKt;
import com.example.flutterimagecompress.util.TmpFileUtil;
import com.umeng.analytics.pro.c;
import java.io.File;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeifHandler.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JB\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002JB\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002J8\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002JP\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u0004H\u0016JX\u0010!\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006%"}, d2 = {"Lcom/example/flutterimagecompress/handle/heif/HeifHandler;", "Lcom/example/flutterimagecompress/handle/FormatHandler;", "()V", "type", "", "getType", "()I", "typeName", "", "getTypeName", "()Ljava/lang/String;", "compress", "", "arr", "", "minWidth", "minHeight", "quality", "rotate", "inSampleSize", "targetPath", "path", "convertToHeif", "bitmap", "Landroid/graphics/Bitmap;", "handleByteArray", c.R, "Landroid/content/Context;", "byteArray", "outputStream", "Ljava/io/OutputStream;", "keepExif", "", "handleFile", "numberOfRetries", "makeOption", "Landroid/graphics/BitmapFactory$Options;", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HeifHandler implements FormatHandler {
    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public int getType() {
        return 2;
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public String getTypeName() {
        return "heif";
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public void handleByteArray(Context context, byte[] bArr, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(bArr, "byteArray");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        File createTmpFile = TmpFileUtil.INSTANCE.createTmpFile(context);
        String absolutePath = createTmpFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "tmpFile.absolutePath");
        compress(bArr, i, i2, i3, i4, i5, absolutePath);
        outputStream.write(FilesKt.readBytes(createTmpFile));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void compress(byte[] bArr, int i, int i2, int i3, int i4, int i5, String str) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, makeOption(i5));
        Intrinsics.checkNotNullExpressionValue(decodeByteArray, "bitmap");
        convertToHeif(decodeByteArray, i, i2, i4, str, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void compress(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str, makeOption(i5));
        Intrinsics.checkNotNullExpressionValue(decodeFile, "bitmap");
        convertToHeif(decodeFile, i, i2, i4, str2, i3);
    }

    private final BitmapFactory.Options makeOption(int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inSampleSize = i;
        if (Build.VERSION.SDK_INT < 23) {
            options.inDither = true;
        }
        return options;
    }

    private final void convertToHeif(Bitmap bitmap, int i, int i2, int i3, String str, int i4) {
        float width = (float) bitmap.getWidth();
        float height = (float) bitmap.getHeight();
        LogExtKt.log(this, Intrinsics.stringPlus("src width = ", Float.valueOf(width)));
        LogExtKt.log(this, Intrinsics.stringPlus("src height = ", Float.valueOf(height)));
        float calcScale = BitmapCompressExtKt.calcScale(bitmap, i, i2);
        LogExtKt.log(this, Intrinsics.stringPlus("scale = ", Float.valueOf(calcScale)));
        float f = width / calcScale;
        float f2 = height / calcScale;
        LogExtKt.log(this, Intrinsics.stringPlus("dst width = ", Float.valueOf(f)));
        LogExtKt.log(this, Intrinsics.stringPlus("dst height = ", Float.valueOf(f2)));
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) f, (int) f2, true);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(bitma…t(), destH.toInt(), true)");
        Bitmap rotate = BitmapCompressExtKt.rotate(createScaledBitmap, i3);
        HeifWriter build = new HeifWriter.Builder(str, rotate.getWidth(), rotate.getHeight(), 2).setQuality(i4).setMaxImages(1).build();
        build.start();
        build.addBitmap(rotate);
        build.stop(5000);
        build.close();
    }

    @Override // com.example.flutterimagecompress.handle.FormatHandler
    public void handleFile(Context context, String str, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Intrinsics.checkNotNullParameter(str, "path");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        File createTmpFile = TmpFileUtil.INSTANCE.createTmpFile(context);
        String absolutePath = createTmpFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "tmpFile.absolutePath");
        compress(str, i, i2, i3, i4, i5, absolutePath);
        outputStream.write(FilesKt.readBytes(createTmpFile));
    }
}
