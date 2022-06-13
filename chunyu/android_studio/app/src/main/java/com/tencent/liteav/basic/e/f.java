package com.tencent.liteav.basic.e;

import android.opengl.GLES20;
import com.tencent.liteav.basic.log.TXCLog;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.LinkedList;

/* compiled from: TXCGPUFilter.java */
/* loaded from: classes2.dex */
public class f {
    protected int a;
    protected int b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    protected boolean g;
    protected FloatBuffer h;
    protected FloatBuffer i;
    protected float[] j;
    protected float[] k;
    protected a l;
    protected int m;
    protected int n;
    protected boolean o;
    protected boolean p;
    protected boolean q;
    private final LinkedList<Runnable> r;
    private final String s;
    private final String t;
    private boolean u;
    private int v;
    private float[] w;

    /* compiled from: TXCGPUFilter.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i);
    }

    public void c() {
    }

    protected void i() {
    }

    protected void j() {
    }

    public f() {
        this("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "varying lowp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}", false);
    }

    public f(String str, String str2) {
        this(str, str2, false);
    }

    public f(String str, String str2, boolean z) {
        this.u = false;
        this.v = -1;
        this.w = null;
        this.m = -1;
        this.n = -1;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = new LinkedList<>();
        this.s = str;
        this.t = str2;
        this.q = z;
        if (true == z) {
            TXCLog.i("TXCGPUFilter", "set Oes fileter");
        }
        this.h = ByteBuffer.allocateDirect(i.e.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.j = i.e;
        this.h.put(this.j).position(0);
        this.i = ByteBuffer.allocateDirect(i.a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.k = i.a(h.NORMAL, false, true);
        this.i.put(this.k).position(0);
    }

    public boolean a() {
        this.a = g.a(this.s, this.t);
        if (this.a == 0 || !b()) {
            this.g = false;
        } else {
            this.g = true;
        }
        c();
        return this.g;
    }

    public void a(boolean z) {
        this.o = z;
    }

    public void a(a aVar) {
        this.u = aVar != null;
        this.l = aVar;
    }

    public boolean b() {
        this.b = GLES20.glGetAttribLocation(this.a, "position");
        this.c = GLES20.glGetUniformLocation(this.a, "inputImageTexture");
        this.v = GLES20.glGetUniformLocation(this.a, "textureTransform");
        this.d = GLES20.glGetAttribLocation(this.a, "inputTextureCoordinate");
        return true;
    }

    public void d() {
        GLES20.glDeleteProgram(this.a);
        e();
        this.g = false;
    }

    public void e() {
        f();
        this.f = -1;
        this.e = -1;
    }

    public void f() {
        int i = this.m;
        if (i != -1) {
            GLES20.glDeleteFramebuffers(1, new int[]{i}, 0);
            this.m = -1;
        }
        int i2 = this.n;
        if (i2 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            this.n = -1;
        }
    }

    public void a(int i, int i2) {
        if (this.f != i2 || this.e != i) {
            this.e = i;
            this.f = i2;
            if (this.o) {
                if (this.m != -1) {
                    f();
                }
                int[] iArr = new int[1];
                GLES20.glGenFramebuffers(1, iArr, 0);
                this.m = iArr[0];
                this.n = g.a(i, i2, 6408, 6408);
                GLES20.glBindFramebuffer(36160, this.m);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.n, 0);
                GLES20.glBindFramebuffer(36160, 0);
            }
        }
    }

    public void a(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        float[] fArr;
        GLES20.glUseProgram(this.a);
        k();
        if (this.g) {
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.b, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.b);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.d);
            int i2 = this.v;
            if (i2 >= 0 && (fArr = this.w) != null) {
                GLES20.glUniformMatrix4fv(i2, 1, false, fArr, 0);
            }
            if (i != -1) {
                GLES20.glActiveTexture(33984);
                if (true == this.q) {
                    GLES20.glBindTexture(36197, i);
                } else {
                    GLES20.glBindTexture(3553, i);
                }
                GLES20.glUniform1i(this.c, 0);
            }
            i();
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.b);
            GLES20.glDisableVertexAttribArray(this.d);
            j();
            if (true == this.q) {
                GLES20.glBindTexture(36197, 0);
            } else {
                GLES20.glBindTexture(3553, 0);
            }
        }
    }

    public void g() {
        if (this.k != null) {
            for (int i = 0; i < 8; i += 2) {
                float[] fArr = this.k;
                fArr[i] = 1.0f - fArr[i];
            }
            a(this.j, this.k);
        }
    }

    public void h() {
        if (this.k != null) {
            for (int i = 1; i < 8; i += 2) {
                float[] fArr = this.k;
                fArr[i] = 1.0f - fArr[i];
            }
            a(this.j, this.k);
        }
    }

    public int b(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (!this.g) {
            return -1;
        }
        a(i, floatBuffer, floatBuffer2);
        a aVar = this.l;
        if (!(aVar instanceof a)) {
            return 1;
        }
        aVar.a(i);
        return 1;
    }

    public int a(int i) {
        return b(i, this.h, this.i);
    }

    protected void k() {
        while (!this.r.isEmpty()) {
            this.r.removeFirst().run();
        }
    }

    public int a(int i, int i2, int i3) {
        if (!this.g) {
            return -1;
        }
        GLES20.glBindFramebuffer(36160, i2);
        a(i, this.h, this.i);
        a aVar = this.l;
        if (aVar instanceof a) {
            aVar.a(i3);
        }
        GLES20.glBindFramebuffer(36160, 0);
        return i3;
    }

    public int b(int i) {
        return a(i, this.m, this.n);
    }

    public int l() {
        return this.n;
    }

    public int m() {
        return this.m;
    }

    public void a(float[] fArr, float[] fArr2) {
        this.j = fArr;
        this.h = ByteBuffer.allocateDirect(i.e.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.h.put(fArr).position(0);
        this.k = fArr2;
        this.i = ByteBuffer.allocateDirect(i.a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.i.put(fArr2).position(0);
    }

    public void a(int i, int i2, int i3, float[] fArr, float f, boolean z, boolean z2) {
        float[] fArr2;
        int i4;
        if (fArr == null) {
            fArr2 = i.a(h.NORMAL, false, true);
            i4 = i;
        } else {
            i4 = i;
            fArr2 = fArr;
        }
        float f2 = (float) i4;
        int i5 = i2;
        float f3 = (float) i5;
        float f4 = f2 / f3;
        if (f4 > f) {
            i4 = (int) (f3 * f);
        } else if (f4 < f) {
            i5 = (int) (f2 / f);
        }
        float f5 = (1.0f - (((float) i4) / f2)) / 2.0f;
        float f6 = (1.0f - (((float) i5) / f3)) / 2.0f;
        for (int i6 = 0; i6 < fArr2.length / 2; i6++) {
            int i7 = i6 * 2;
            if (fArr2[i7] < 0.5f) {
                fArr2[i7] = fArr2[i7] + f5;
            } else {
                fArr2[i7] = fArr2[i7] - f5;
            }
            int i8 = i7 + 1;
            if (fArr2[i8] < 0.5f) {
                fArr2[i8] = fArr2[i8] + f6;
            } else {
                fArr2[i8] = fArr2[i8] - f6;
            }
        }
        int i9 = i3 / 90;
        for (int i10 = 0; i10 < i9; i10++) {
            float f7 = fArr2[0];
            float f8 = fArr2[1];
            fArr2[0] = fArr2[2];
            fArr2[1] = fArr2[3];
            fArr2[2] = fArr2[6];
            fArr2[3] = fArr2[7];
            fArr2[6] = fArr2[4];
            fArr2[7] = fArr2[5];
            fArr2[4] = f7;
            fArr2[5] = f8;
        }
        if (i9 == 0 || i9 == 2) {
            if (z) {
                fArr2[0] = 1.0f - fArr2[0];
                fArr2[2] = 1.0f - fArr2[2];
                fArr2[4] = 1.0f - fArr2[4];
                fArr2[6] = 1.0f - fArr2[6];
            }
            if (z2) {
                fArr2[1] = 1.0f - fArr2[1];
                fArr2[3] = 1.0f - fArr2[3];
                fArr2[5] = 1.0f - fArr2[5];
                fArr2[7] = 1.0f - fArr2[7];
            }
        } else {
            if (z2) {
                fArr2[0] = 1.0f - fArr2[0];
                fArr2[2] = 1.0f - fArr2[2];
                fArr2[4] = 1.0f - fArr2[4];
                fArr2[6] = 1.0f - fArr2[6];
            }
            if (z) {
                fArr2[1] = 1.0f - fArr2[1];
                fArr2[3] = 1.0f - fArr2[3];
                fArr2[5] = 1.0f - fArr2[5];
                fArr2[7] = 1.0f - fArr2[7];
            }
        }
        a((float[]) i.e.clone(), fArr2);
    }

    public void a(final int i, final float f) {
        a(new Runnable() { // from class: com.tencent.liteav.basic.e.f.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1f(i, f);
            }
        });
    }

    public void a(Runnable runnable) {
        synchronized (this.r) {
            this.r.addLast(runnable);
        }
    }
}
