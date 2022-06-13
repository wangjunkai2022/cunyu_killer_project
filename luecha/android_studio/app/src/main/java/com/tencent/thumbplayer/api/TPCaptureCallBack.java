package com.tencent.thumbplayer.api;

import android.graphics.Bitmap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TPCaptureCallBack {
    void onCaptureVideoFailed(int i);

    void onCaptureVideoSuccess(Bitmap bitmap);
}
