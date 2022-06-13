package com.tencent.liteav.basic.e;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCTextureRotationUtil.java */
/* loaded from: classes5.dex */
public class i {
    public static final float[] a = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    public static final float[] b = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
    public static final float[] c = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    public static final float[] d = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] e = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};

    private static float a(float f) {
        return f == 0.0f ? 1.0f : 0.0f;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCTextureRotationUtil.java */
    /* renamed from: com.tencent.liteav.basic.e.i$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[h.values().length];

        static {
            try {
                a[h.ROTATION_90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[h.ROTATION_180.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[h.ROTATION_270.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[h.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static float[] a(h hVar, boolean z, boolean z2) {
        float[] fArr;
        int i = AnonymousClass1.a[hVar.ordinal()];
        if (i == 1) {
            fArr = (float[]) b.clone();
        } else if (i == 2) {
            fArr = (float[]) c.clone();
        } else if (i != 3) {
            fArr = (float[]) a.clone();
        } else {
            fArr = (float[]) d.clone();
        }
        if (z) {
            fArr = new float[]{a(fArr[0]), fArr[1], a(fArr[2]), fArr[3], a(fArr[4]), fArr[5], a(fArr[6]), fArr[7]};
        }
        return z2 ? new float[]{fArr[0], a(fArr[1]), fArr[2], a(fArr[3]), fArr[4], a(fArr[5]), fArr[6], a(fArr[7])} : fArr;
    }
}
