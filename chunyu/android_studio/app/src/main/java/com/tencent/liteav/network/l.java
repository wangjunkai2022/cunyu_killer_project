package com.tencent.liteav.network;

import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.structs.a;

/* compiled from: TXIStreamDownloaderListener.java */
/* loaded from: classes2.dex */
public interface l {
    void onPullAudio(a aVar);

    void onPullNAL(TXSNALPacket tXSNALPacket);
}
