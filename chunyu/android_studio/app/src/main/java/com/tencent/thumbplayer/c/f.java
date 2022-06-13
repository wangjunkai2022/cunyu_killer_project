package com.tencent.thumbplayer.c;

/* loaded from: classes2.dex */
class f {
    public static String a = "base_video";
    private static int b;
    private static int c;
    private static int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        if (i == 1) {
            int i2 = d;
            d = i2 + 1;
            return i2;
        } else if (i == 2) {
            int i3 = b;
            b = i3 + 1;
            return i3;
        } else if (i != 3) {
            return -1;
        } else {
            int i4 = c;
            c = i4 + 1;
            return i4;
        }
    }
}
