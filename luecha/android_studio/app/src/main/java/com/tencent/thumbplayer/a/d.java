package com.tencent.thumbplayer.a;

import android.graphics.Bitmap;
import android.util.Log;
import com.tencent.thumbplayer.adapter.a.a;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import com.tencent.thumbplayer.core.imagegenerator.ITPImageGeneratorCallback;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGenerator;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d implements a, ITPImageGeneratorCallback {
    private long a;
    private TPImageGenerator b;
    private Map<Long, TPCaptureCallBack> c;

    public d(int i) {
        this(i, 0, 0);
    }

    public d(int i, long j, long j2) {
        this.a = 0;
        this.b = new TPImageGenerator(i, j, j2, this);
        this.c = new HashMap();
        try {
            this.b.init();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e));
        }
    }

    public d(String str) {
        this.a = 0;
        this.b = new TPImageGenerator(str, this);
        this.c = new HashMap();
        try {
            this.b.init();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "init: " + Log.getStackTraceString(e));
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a() {
        try {
            this.b.cancelAllImageGenerations();
            this.b.unInit();
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "release: " + Log.getStackTraceString(e));
        }
        this.c.clear();
        this.b = null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a(long j, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        if (tPImageGeneratorParams == null) {
            tPImageGeneratorParams = new TPImageGeneratorParams();
            tPImageGeneratorParams.format = 37;
        }
        this.a++;
        this.c.put(Long.valueOf(this.a), tPCaptureCallBack);
        try {
            this.b.generateImageAsyncAtTime(j, this.a, tPImageGeneratorParams);
        } catch (Exception e) {
            TPLogUtil.e("TPThumbPlayer[TPThumbCapture.java]", "generateImageAsyncAtTime: " + Log.getStackTraceString(e));
        }
    }

    @Override // com.tencent.thumbplayer.core.imagegenerator.ITPImageGeneratorCallback
    public void onImageGenerationCompleted(int i, long j, long j2, long j3, TPVideoFrame tPVideoFrame) {
        TPCaptureCallBack tPCaptureCallBack = this.c.get(Long.valueOf(j3));
        if (tPCaptureCallBack != null) {
            if (i == 0 && tPVideoFrame != null) {
                Bitmap a = a.a(tPVideoFrame);
                if (a != null) {
                    tPCaptureCallBack.onCaptureVideoSuccess(a);
                } else {
                    i = 1000001;
                }
            }
            tPCaptureCallBack.onCaptureVideoFailed(i);
        }
        this.c.remove(Long.valueOf(j3));
    }
}
