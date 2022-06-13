package com.tencent.liteav.audio.impl.Record;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIAudioPcmRecordListener.java */
/* loaded from: classes5.dex */
public interface c {
    void onAudioRecordError(int i, String str);

    void onAudioRecordPCM(byte[] bArr, int i, long j);

    void onAudioRecordStart();

    void onAudioRecordStop();
}
