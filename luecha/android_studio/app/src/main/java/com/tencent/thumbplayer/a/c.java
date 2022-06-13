package com.tencent.thumbplayer.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import com.tencent.thumbplayer.a.b;
import com.tencent.thumbplayer.adapter.a.a;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c implements b.a, a {
    private Map<Integer, TPCaptureCallBack> a = new HashMap();
    private String b;
    private FileDescriptor c;
    private AssetFileDescriptor d;

    public c(AssetFileDescriptor assetFileDescriptor) {
        this.d = assetFileDescriptor;
    }

    public c(FileDescriptor fileDescriptor) {
        this.c = fileDescriptor;
    }

    public c(String str) {
        this.b = str;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a() {
        this.a.clear();
    }

    @Override // com.tencent.thumbplayer.a.b.a
    public void a(int i, int i2) {
        TPCaptureCallBack tPCaptureCallBack = this.a.get(Integer.valueOf(i));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoFailed(i2);
        }
    }

    @Override // com.tencent.thumbplayer.a.b.a
    public void a(int i, long j, int i2, int i3, Bitmap bitmap, long j2) {
        TPCaptureCallBack tPCaptureCallBack = this.a.get(Integer.valueOf(i));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoSuccess(bitmap);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a(long j, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        b.d dVar = new b.d();
        dVar.a = this.b;
        dVar.b = this.c;
        dVar.c = this.d;
        dVar.d = j;
        dVar.e = tPImageGeneratorParams.width;
        dVar.f = tPImageGeneratorParams.height;
        this.a.put(Integer.valueOf(b.a().a(dVar, this)), tPCaptureCallBack);
    }
}
