package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface DrawMode {
    }

    public static Projection createEquirectangular(int i) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i);
    }

    public static Projection createEquirectangular(float f, int i, int i2, float f2, float f3, int i3) {
        int i4;
        int i5;
        int i6;
        float f4 = f;
        int i7 = i;
        int i8 = i2;
        Assertions.checkArgument(f4 > 0.0f);
        Assertions.checkArgument(i7 >= 1);
        Assertions.checkArgument(i8 >= 1);
        Assertions.checkArgument(f2 > 0.0f && f2 <= 180.0f);
        Assertions.checkArgument(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians((double) f2);
        float radians2 = (float) Math.toRadians((double) f3);
        float f5 = radians / ((float) i7);
        float f6 = radians2 / ((float) i8);
        int i9 = i8 + 1;
        int i10 = ((i9 * 2) + 2) * i7;
        float[] fArr = new float[i10 * 3];
        float[] fArr2 = new float[i10 * 2];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i7) {
            float f7 = radians / 2.0f;
            float f8 = (((float) i11) * f5) - f7;
            int i14 = i11 + 1;
            float f9 = (((float) i14) * f5) - f7;
            int i15 = i13;
            int i16 = i12;
            int i17 = 0;
            while (i17 < i9) {
                int i18 = i15;
                int i19 = 2;
                int i20 = i16;
                int i21 = 0;
                while (i21 < i19) {
                    if (i21 == 0) {
                        f9 = f8;
                    }
                    float f10 = ((float) i17) * f6;
                    int i22 = i20 + 1;
                    double d = (double) f4;
                    double d2 = (double) ((f10 + 3.1415927f) - (radians2 / 2.0f));
                    double d3 = (double) f9;
                    fArr[i20] = -((float) (Math.sin(d2) * d * Math.cos(d3)));
                    int i23 = i22 + 1;
                    fArr[i22] = (float) (d * Math.sin(d3));
                    int i24 = i23 + 1;
                    fArr[i23] = (float) (d * Math.cos(d2) * Math.cos(d3));
                    int i25 = i18 + 1;
                    fArr2[i18] = f10 / radians2;
                    int i26 = i25 + 1;
                    fArr2[i25] = (((float) (i11 + i21)) * f5) / radians;
                    if (i17 == 0 && i21 == 0) {
                        i6 = i2;
                        i5 = i17;
                    } else {
                        i6 = i2;
                        i5 = i17;
                        if (!(i5 == i6 && i21 == 1)) {
                            i4 = 2;
                            i18 = i26;
                            i20 = i24;
                            i21++;
                            f8 = f8;
                            i17 = i5;
                            i19 = i4;
                            i11 = i11;
                            i9 = i9;
                            f6 = f6;
                            i14 = i14;
                            radians = radians;
                            f5 = f5;
                            i8 = i6;
                            f4 = f;
                        }
                    }
                    System.arraycopy(fArr, i24 - 3, fArr, i24, 3);
                    i24 += 3;
                    i4 = 2;
                    System.arraycopy(fArr2, i26 - 2, fArr2, i26, 2);
                    i26 += 2;
                    i18 = i26;
                    i20 = i24;
                    i21++;
                    f8 = f8;
                    i17 = i5;
                    i19 = i4;
                    i11 = i11;
                    i9 = i9;
                    f6 = f6;
                    i14 = i14;
                    radians = radians;
                    f5 = f5;
                    i8 = i6;
                    f4 = f;
                }
                i17++;
                i8 = i8;
                i16 = i20;
                i15 = i18;
                f6 = f6;
                f5 = f5;
                f4 = f;
            }
            f4 = f;
            i7 = i;
            i12 = i16;
            i13 = i15;
            i11 = i14;
        }
        return new Projection(new Mesh(new SubMesh(0, fArr, fArr2, 1)), i3);
    }

    public Projection(Mesh mesh, int i) {
        this(mesh, mesh, i);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i;
        this.singleMesh = mesh == mesh2;
    }

    /* loaded from: classes2.dex */
    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i, float[] fArr, float[] fArr2, int i2) {
            this.textureId = i;
            Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i2;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Mesh {
        private final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }

        public SubMesh getSubMesh(int i) {
            return this.subMeshes[i];
        }
    }
}
