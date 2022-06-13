package com.tencent.liteav.network;

import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXIMessageNotifyListener.java */
/* loaded from: classes5.dex */
public interface k {
    void onMetaDataMessage(HashMap<String, String> hashMap);

    void onSEIMessage(byte[] bArr);
}
