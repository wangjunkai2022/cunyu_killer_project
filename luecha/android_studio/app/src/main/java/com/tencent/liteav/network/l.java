package com.tencent.liteav.network;

import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.structs.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIStreamDownloaderListener.java */
/* loaded from: classes5.dex */
public interface l {
    void onPullAudio(a aVar);

    void onPullNAL(TXSNALPacket tXSNALPacket);
}
