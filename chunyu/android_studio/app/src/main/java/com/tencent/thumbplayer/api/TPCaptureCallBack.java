package com.tencent.thumbplayer.api;

import android.graphics.Bitmap;

/* loaded from: classes2.dex */
public interface TPCaptureCallBack {
    void onCaptureVideoFailed(int i);

    void onCaptureVideoSuccess(Bitmap bitmap);
}
