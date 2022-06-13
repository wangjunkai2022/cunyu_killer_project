package com.tencent.liteav.basic;

import com.tencent.liteav.TXLiteAVExternalDecoderFactoryInterface;

/* compiled from: TXLiteAVBasic.java */
/* loaded from: classes2.dex */
public class a {
    private static TXLiteAVExternalDecoderFactoryInterface a;

    public static synchronized boolean a() {
        synchronized (a.class) {
            if (a != null) {
                return true;
            }
            return false;
        }
    }

    public static synchronized void a(TXLiteAVExternalDecoderFactoryInterface tXLiteAVExternalDecoderFactoryInterface) {
        synchronized (a.class) {
            a = tXLiteAVExternalDecoderFactoryInterface;
        }
    }

    public static synchronized TXLiteAVExternalDecoderFactoryInterface b() {
        TXLiteAVExternalDecoderFactoryInterface tXLiteAVExternalDecoderFactoryInterface;
        synchronized (a.class) {
            tXLiteAVExternalDecoderFactoryInterface = a;
        }
        return tXLiteAVExternalDecoderFactoryInterface;
    }
}
