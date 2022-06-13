package com.example.flutterimagecompress.handle;

import android.content.Context;
import com.umeng.analytics.pro.c;
import java.io.OutputStream;
import kotlin.Metadata;

/* compiled from: FormatHandler.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001JP\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H&JX\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"Lcom/example/flutterimagecompress/handle/FormatHandler;", "", "type", "", "getType", "()I", "typeName", "", "getTypeName", "()Ljava/lang/String;", "handleByteArray", "", c.R, "Landroid/content/Context;", "byteArray", "", "outputStream", "Ljava/io/OutputStream;", "minWidth", "minHeight", "quality", "rotate", "keepExif", "", "inSampleSize", "handleFile", "path", "numberOfRetries", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface FormatHandler {
    int getType();

    String getTypeName();

    void handleByteArray(Context context, byte[] bArr, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5);

    void handleFile(Context context, String str, OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6);
}
