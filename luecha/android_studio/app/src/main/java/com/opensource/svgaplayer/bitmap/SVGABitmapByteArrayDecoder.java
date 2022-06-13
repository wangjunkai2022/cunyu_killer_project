package com.opensource.svgaplayer.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: SVGABitmapByteArrayDecoder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;", "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;", "", "()V", "onDecode", "Landroid/graphics/Bitmap;", "data", "ops", "Landroid/graphics/BitmapFactory$Options;", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class SVGABitmapByteArrayDecoder extends SVGABitmapDecoder<byte[]> {
    public static final SVGABitmapByteArrayDecoder INSTANCE = new SVGABitmapByteArrayDecoder();

    private SVGABitmapByteArrayDecoder() {
    }

    public Bitmap onDecode(byte[] bArr, BitmapFactory.Options options) {
        Intrinsics.checkParameterIsNotNull(bArr, "data");
        Intrinsics.checkParameterIsNotNull(options, "ops");
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }
}
