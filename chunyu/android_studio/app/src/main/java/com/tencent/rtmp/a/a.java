package com.tencent.rtmp.a;

import android.graphics.Bitmap;
import java.util.List;

/* compiled from: TXIImageSprite.java */
/* loaded from: classes2.dex */
public interface a {
    Bitmap getThumbnail(float f);

    void release();

    void setVTTUrlAndImageUrls(String str, List<String> list);
}
