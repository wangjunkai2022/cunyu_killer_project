.class public Lcom/tencent/liteav/basic/e/g;
.super Ljava/lang/Object;
.source "TXCOpenGlUtils.java"


# static fields
.field public static a:Ljava/nio/FloatBuffer;

.field public static b:Ljava/nio/FloatBuffer;

.field public static c:Ljava/nio/FloatBuffer;

.field public static d:Ljava/nio/FloatBuffer;

.field public static e:Ljava/nio/FloatBuffer;

.field private static f:[F

.field private static g:[F

.field private static h:[F

.field private static i:[F

.field private static j:[F

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 65
    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/liteav/basic/e/g;->f:[F

    new-array v1, v0, [F

    .line 66
    fill-array-data v1, :array_1

    sput-object v1, Lcom/tencent/liteav/basic/e/g;->g:[F

    new-array v1, v0, [F

    .line 67
    fill-array-data v1, :array_2

    sput-object v1, Lcom/tencent/liteav/basic/e/g;->h:[F

    new-array v1, v0, [F

    .line 68
    fill-array-data v1, :array_3

    sput-object v1, Lcom/tencent/liteav/basic/e/g;->i:[F

    new-array v0, v0, [F

    .line 69
    fill-array-data v0, :array_4

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->j:[F

    .line 70
    sget-object v0, Lcom/tencent/liteav/basic/e/g;->f:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->a:Ljava/nio/FloatBuffer;

    .line 71
    sget-object v0, Lcom/tencent/liteav/basic/e/g;->g:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->b:Ljava/nio/FloatBuffer;

    .line 72
    sget-object v0, Lcom/tencent/liteav/basic/e/g;->h:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->c:Ljava/nio/FloatBuffer;

    .line 73
    sget-object v0, Lcom/tencent/liteav/basic/e/g;->i:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->d:Ljava/nio/FloatBuffer;

    .line 74
    sget-object v0, Lcom/tencent/liteav/basic/e/g;->j:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/g;->e:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    .line 473
    sput v0, Lcom/tencent/liteav/basic/e/g;->k:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 263
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 266
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    .line 267
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    .line 269
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x812f

    const/16 v4, 0x2802

    .line 271
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 273
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 275
    aget v0, v1, v2

    return v0
.end method

.method public static a(IIII)I
    .locals 1

    const/4 v0, 0x0

    .line 187
    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/liteav/basic/e/g;->a(IIIILjava/nio/IntBuffer;)I

    move-result p0

    return p0
.end method

.method public static a(IIIILjava/nio/IntBuffer;)I
    .locals 11

    .line 179
    invoke-static {}, Lcom/tencent/liteav/basic/e/g;->b()I

    move-result v0

    const/16 v1, 0xde1

    .line 180
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1401

    move v4, p2

    move v5, p0

    move v6, p1

    move v8, p3

    move-object v10, p4

    .line 181
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 p0, 0x0

    .line 182
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 389
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 390
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 391
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x0

    const v1, 0x8b81

    .line 392
    invoke-static {p1, v1, v0, p0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 393
    aget v0, v0, p0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compilation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load Shader Failed"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b31

    .line 405
    invoke-static {p0, v1}, Lcom/tencent/liteav/basic/e/g;->a(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "Vertex Shader Failed"

    .line 407
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const v3, 0x8b30

    .line 410
    invoke-static {p1, v3}, Lcom/tencent/liteav/basic/e/g;->a(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Fragment Shader Failed"

    .line 412
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 416
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 418
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 419
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 421
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    .line 423
    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 424
    aget v0, v0, v2

    if-gtz v0, :cond_2

    const-string p0, "Linking Failed"

    .line 425
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 428
    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 429
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 170
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 174
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 483
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    return-void
.end method

.method public static a(II)V
    .locals 3

    const v0, 0x8d40

    .line 494
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 p1, 0x0

    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 495
    invoke-static {v0, v1, v2, p0, p1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 496
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 442
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpenGlUtils"

    .line 445
    invoke-static {v0, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 290
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 291
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    .line 292
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    .line 294
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x812f

    const/16 v4, 0x2802

    .line 296
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 298
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 300
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 301
    aget v0, v1, v2

    return v0
.end method

.method public static b(I)V
    .locals 3

    const v0, 0x8d40

    .line 500
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 p0, 0x0

    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 501
    invoke-static {v0, v1, v2, p0, p0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 502
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public static c()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 477
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 478
    aget v0, v1, v2

    return v0
.end method

.method public static d()Ljava/lang/Object;
    .locals 2

    .line 506
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 507
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    .line 510
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method
