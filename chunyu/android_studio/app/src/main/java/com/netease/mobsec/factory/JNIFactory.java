package com.netease.mobsec.factory;

/* loaded from: classes2.dex */
public class JNIFactory {
    private static JNIFactory a;

    private JNIFactory() {
    }

    public static JNIFactory getInstance() {
        if (a == null) {
            a = new JNIFactory();
        }
        return a;
    }

    public native String w230921e1b36f7799(Object obj, String[] strArr);

    public native String w238jfd9349jdj394(Object obj, String[] strArr);
}
