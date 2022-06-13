package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class StreamEncoder implements Encoder<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final ArrayPool byteArrayPool;

    public StreamEncoder(ArrayPool arrayPool) {
        this.byteArrayPool = arrayPool;
    }

    public boolean encode(InputStream inputStream, File file, Options options) {
        boolean z;
        byte[] bArr;
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        try {
            bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
            z = false;
            fileOutputStream = null;
        } catch (IOException unused) {
        }
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        this.byteArrayPool.put(bArr);
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        this.byteArrayPool.put(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                z = true;
                fileOutputStream2.close();
            } catch (IOException e3) {
                e = e3;
            }
            this.byteArrayPool.put(bArr);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
