package com.tencent.thumbplayer.a;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class a {
    public static Bitmap a(TPVideoFrame tPVideoFrame) {
        if (tPVideoFrame.data.length <= 0 || tPVideoFrame.height == 0 || tPVideoFrame.width == 0) {
            return null;
        }
        return a(tPVideoFrame.data[0], tPVideoFrame.width, tPVideoFrame.height, tPVideoFrame.rotation);
    }

    private static Bitmap a(byte[] bArr, int i, int i2, int i3) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        createBitmap.copyPixelsFromBuffer(wrap);
        if (i3 == 0) {
            return createBitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate((float) i3);
        return Bitmap.createBitmap(createBitmap, 0, 0, createBitmap.getWidth(), createBitmap.getHeight(), matrix, true);
    }

    public static Bitmap[] b(TPVideoFrame tPVideoFrame) {
        if (tPVideoFrame.data.length <= 0 || tPVideoFrame.height == 0 || tPVideoFrame.width == 0) {
            return null;
        }
        Bitmap[] bitmapArr = new Bitmap[tPVideoFrame.data.length];
        for (int i = 0; i < tPVideoFrame.data.length; i++) {
            bitmapArr[i] = a(tPVideoFrame.data[i], tPVideoFrame.width, tPVideoFrame.height, tPVideoFrame.rotation);
        }
        return bitmapArr;
    }
}
