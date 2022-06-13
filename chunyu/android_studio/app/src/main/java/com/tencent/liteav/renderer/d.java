package com.tencent.liteav.renderer;

import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.view.TextureView;
import com.tencent.liteav.basic.log.TXCLog;

/* compiled from: TXCTextureViewWrapper.java */
/* loaded from: classes2.dex */
public class d {
    private TextureView a;
    private Handler b;
    private int c;
    private int d;
    private int e = 640;
    private int f = 480;
    private int g = 0;
    private int h = 0;
    private int i = 1;
    private int j = 0;
    private float k = 1.0f;
    private int l = 0;

    public d(TextureView textureView) {
        this.c = 0;
        this.d = 0;
        this.a = textureView;
        this.c = textureView.getWidth();
        this.d = textureView.getHeight();
        this.b = new Handler(textureView.getContext().getMainLooper());
    }

    public void a(final int i) {
        try {
            this.b.post(new Runnable() { // from class: com.tencent.liteav.renderer.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.b(i);
                }
            });
        } catch (Exception e) {
            TXCLog.e("TXCTextureViewWrapper", "set render mode failed", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
        if (r6 < r0) goto L_0x0061;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0073, code lost:
        if (r6 < r0) goto L_0x0061;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void b(int r6) {
        /*
            r5 = this;
            r5.i = r6
            android.view.TextureView r0 = r5.a
            if (r0 == 0) goto L_0x008f
            r0 = 1
            r1 = 90
            r2 = 270(0x10e, float:3.78E-43)
            r3 = 180(0xb4, float:2.52E-43)
            r4 = 1065353216(0x3f800000, float:1.0)
            if (r6 != r0) goto L_0x0039
            int r6 = r5.j
            if (r6 == 0) goto L_0x0077
            if (r6 != r3) goto L_0x0019
            goto L_0x0077
        L_0x0019:
            if (r6 == r2) goto L_0x001d
            if (r6 != r1) goto L_0x0077
        L_0x001d:
            int r6 = r5.g
            if (r6 == 0) goto L_0x0038
            int r0 = r5.h
            if (r0 != 0) goto L_0x0026
            goto L_0x0038
        L_0x0026:
            int r1 = r5.d
            float r1 = (float) r1
            float r6 = (float) r6
            float r1 = r1 / r6
            int r6 = r5.c
            float r6 = (float) r6
            float r0 = (float) r0
            float r6 = r6 / r0
            int r0 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x0036
        L_0x0034:
            r4 = r6
            goto L_0x0077
        L_0x0036:
            r4 = r1
            goto L_0x0077
        L_0x0038:
            return
        L_0x0039:
            if (r6 != 0) goto L_0x0077
            int r6 = r5.g
            if (r6 == 0) goto L_0x0076
            int r6 = r5.h
            if (r6 != 0) goto L_0x0044
            goto L_0x0076
        L_0x0044:
            int r6 = r5.j
            if (r6 == 0) goto L_0x0063
            if (r6 != r3) goto L_0x004b
            goto L_0x0063
        L_0x004b:
            if (r6 == r2) goto L_0x004f
            if (r6 != r1) goto L_0x0077
        L_0x004f:
            int r6 = r5.d
            float r6 = (float) r6
            int r0 = r5.g
            float r0 = (float) r0
            float r6 = r6 / r0
            int r0 = r5.c
            float r0 = (float) r0
            int r1 = r5.h
            float r1 = (float) r1
            float r0 = r0 / r1
            int r1 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r1 >= 0) goto L_0x0034
        L_0x0061:
            r4 = r0
            goto L_0x0077
        L_0x0063:
            int r6 = r5.d
            float r6 = (float) r6
            int r0 = r5.h
            float r0 = (float) r0
            float r6 = r6 / r0
            int r0 = r5.c
            float r0 = (float) r0
            int r1 = r5.g
            float r1 = (float) r1
            float r0 = r0 / r1
            int r1 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r1 >= 0) goto L_0x0034
            goto L_0x0061
        L_0x0076:
            return
        L_0x0077:
            float r6 = r5.k
            r0 = 0
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L_0x007f
            float r4 = -r4
        L_0x007f:
            android.view.TextureView r6 = r5.a
            r6.setScaleX(r4)
            android.view.TextureView r6 = r5.a
            float r0 = java.lang.Math.abs(r4)
            r6.setScaleY(r0)
            r5.k = r4
        L_0x008f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.renderer.d.b(int):void");
    }

    public void c(final int i) {
        try {
            this.b.post(new Runnable() { // from class: com.tencent.liteav.renderer.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.d(i);
                }
            });
        } catch (Exception e) {
            TXCLog.e("TXCTextureViewWrapper", "set render rotation failed.", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
        if (r5 > r2) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0043, code lost:
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0049, code lost:
        if (r5 < r2) goto L_0x0041;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void d(int r5) {
        /*
            r4 = this;
            int r5 = r5 % 360
            r4.j = r5
            android.view.TextureView r0 = r4.a
            if (r0 == 0) goto L_0x008e
            r0 = 1
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r5 == 0) goto L_0x004d
            r2 = 180(0xb4, float:2.52E-43)
            if (r5 != r2) goto L_0x0012
            goto L_0x004d
        L_0x0012:
            r2 = 270(0x10e, float:3.78E-43)
            if (r5 == r2) goto L_0x001a
            r2 = 90
            if (r5 != r2) goto L_0x0076
        L_0x001a:
            int r2 = r4.g
            if (r2 == 0) goto L_0x004c
            int r2 = r4.h
            if (r2 != 0) goto L_0x0023
            goto L_0x004c
        L_0x0023:
            android.view.TextureView r2 = r4.a
            int r5 = 360 - r5
            float r5 = (float) r5
            r2.setRotation(r5)
            int r5 = r4.d
            float r5 = (float) r5
            int r2 = r4.g
            float r2 = (float) r2
            float r5 = r5 / r2
            int r2 = r4.c
            float r2 = (float) r2
            int r3 = r4.h
            float r3 = (float) r3
            float r2 = r2 / r3
            int r3 = r4.i
            if (r3 != r0) goto L_0x0045
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 <= 0) goto L_0x0043
        L_0x0041:
            r1 = r2
            goto L_0x0076
        L_0x0043:
            r1 = r5
            goto L_0x0076
        L_0x0045:
            if (r3 != 0) goto L_0x0076
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
            goto L_0x0041
        L_0x004c:
            return
        L_0x004d:
            android.view.TextureView r2 = r4.a
            int r5 = 360 - r5
            float r5 = (float) r5
            r2.setRotation(r5)
            int r5 = r4.i
            if (r5 != r0) goto L_0x005a
            goto L_0x0076
        L_0x005a:
            if (r5 != 0) goto L_0x0076
            int r5 = r4.g
            if (r5 == 0) goto L_0x0075
            int r0 = r4.h
            if (r0 != 0) goto L_0x0065
            goto L_0x0075
        L_0x0065:
            int r1 = r4.d
            float r1 = (float) r1
            float r0 = (float) r0
            float r1 = r1 / r0
            int r0 = r4.c
            float r0 = (float) r0
            float r5 = (float) r5
            float r0 = r0 / r5
            int r5 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r5 >= 0) goto L_0x0076
            r1 = r0
            goto L_0x0076
        L_0x0075:
            return
        L_0x0076:
            float r5 = r4.k
            r0 = 0
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 >= 0) goto L_0x007e
            float r1 = -r1
        L_0x007e:
            android.view.TextureView r5 = r4.a
            r5.setScaleX(r1)
            android.view.TextureView r5 = r4.a
            float r0 = java.lang.Math.abs(r1)
            r5.setScaleY(r0)
            r4.k = r1
        L_0x008e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.renderer.d.d(int):void");
    }

    private void a() {
        try {
            a(new Runnable() { // from class: com.tencent.liteav.renderer.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d dVar = d.this;
                    dVar.c(dVar.e, d.this.f);
                    d dVar2 = d.this;
                    dVar2.b(dVar2.i);
                    d dVar3 = d.this;
                    dVar3.d(dVar3.j);
                }
            });
        } catch (Exception e) {
            TXCLog.e("TXCTextureViewWrapper", "adjust video size failed.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, int i2) {
        int i3;
        int i4;
        if (this.a != null && i != 0 && i2 != 0 && (i3 = this.c) != 0 && (i4 = this.d) != 0) {
            double d = ((double) i2) / ((double) i);
            if (i4 > ((int) (((double) i3) * d))) {
                this.g = i3;
                this.h = (int) (((double) i3) * d);
            } else {
                this.g = (int) (((double) i4) / d);
                this.h = i4;
            }
            int i5 = this.c;
            int i6 = this.g;
            int i7 = this.d;
            int i8 = this.h;
            Matrix matrix = new Matrix();
            this.a.getTransform(matrix);
            matrix.setScale(((float) i6) / ((float) i5), ((float) i8) / ((float) i7));
            matrix.postTranslate(((float) (i5 - i6)) / 2.0f, ((float) (i7 - i8)) / 2.0f);
            this.a.setTransform(matrix);
            this.a.requestLayout();
        }
    }

    public void a(final boolean z) {
        try {
            this.b.post(new Runnable() { // from class: com.tencent.liteav.renderer.d.4
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.a != null) {
                        d dVar = d.this;
                        dVar.k = Math.abs(dVar.k);
                        if (z) {
                            d dVar2 = d.this;
                            dVar2.k = -dVar2.k;
                        }
                        d.this.a.setScaleX(d.this.k);
                        d.this.a.setScaleY(Math.abs(d.this.k));
                    }
                }
            });
        } catch (Exception e) {
            TXCLog.e("TXCTextureViewWrapper", "set mirror failed.", e);
        }
    }

    public void a(int i, int i2) {
        TXCLog.w("TXCTextureViewWrapper", "vrender: set view size:" + i + "," + i2);
        this.c = i;
        this.d = i2;
        a();
    }

    public void b(int i, int i2) {
        TXCLog.w("TXCTextureViewWrapper", "vrender: set video size:" + i + "," + i2);
        this.e = i;
        this.f = i2;
        a();
    }

    private void a(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.b.post(runnable);
        }
    }
}
