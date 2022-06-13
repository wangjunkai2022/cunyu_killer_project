package com.tencent.thumbplayer.tplayer.a;

import com.tencent.thumbplayer.utils.TPLogUtil;

/* loaded from: classes2.dex */
public class k {
    public static a a(int i) {
        if (i == 0) {
            return new n();
        }
        if (i == 1) {
            return new e();
        }
        if (i == 2) {
            return new f();
        }
        TPLogUtil.e("TPReporterFactory", "Type is not match ReporterType, return null");
        return null;
    }
}
