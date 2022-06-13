package com.tencent.liteav.audio.impl.Record;

/* compiled from: TXIAudioPcmRecordListener.java */
/* loaded from: classes2.dex */
public interface c {
    void onAudioRecordError(int i, String str);

    void onAudioRecordPCM(byte[] bArr, int i, long j);

    void onAudioRecordStart();

    void onAudioRecordStop();
}
