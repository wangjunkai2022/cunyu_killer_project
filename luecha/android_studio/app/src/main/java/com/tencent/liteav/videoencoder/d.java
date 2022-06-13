package com.tencent.liteav.videoencoder;

import android.media.MediaFormat;
import com.tencent.liteav.basic.structs.TXSNALPacket;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIVideoEncoderListener.java */
/* loaded from: classes5.dex */
public interface d {
    void a(int i);

    void a(int i, long j, long j2);

    void a(MediaFormat mediaFormat);

    void a(TXSNALPacket tXSNALPacket, int i);

    void b(int i);
}
