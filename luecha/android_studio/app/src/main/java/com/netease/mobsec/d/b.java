package com.netease.mobsec.d;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b extends RuntimeException {
    public b(String str, String[] strArr, String[] strArr2) {
        super("Could not find '" + str + "'. Looked for: " + Arrays.toString(strArr) + ", but only found: " + Arrays.toString(strArr2) + ".");
    }
}
