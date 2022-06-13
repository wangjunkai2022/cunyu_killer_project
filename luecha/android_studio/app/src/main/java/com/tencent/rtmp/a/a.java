package com.tencent.rtmp.a;

import android.graphics.Bitmap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIImageSprite.java */
/* loaded from: classes5.dex */
public interface a {
    Bitmap getThumbnail(float f);

    void release();

    void setVTTUrlAndImageUrls(String str, List<String> list);
}
