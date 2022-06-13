.class public Lcom/tencent/liteav/renderer/h;
.super Ljava/lang/Object;
.source "TXTweenFilter.java"


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:[F

.field private k:[F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private final p:[F

.field private q:Ljava/nio/FloatBuffer;

.field private r:[F

.field private s:[F

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/liteav/renderer/h;->c:I

    .line 23
    iput v0, p0, Lcom/tencent/liteav/renderer/h;->d:I

    .line 24
    iput v0, p0, Lcom/tencent/liteav/renderer/h;->e:I

    .line 25
    iput v0, p0, Lcom/tencent/liteav/renderer/h;->f:I

    .line 26
    sget v1, Lcom/tencent/liteav/renderer/h;->b:I

    iput v1, p0, Lcom/tencent/liteav/renderer/h;->g:I

    .line 27
    iput v0, p0, Lcom/tencent/liteav/renderer/h;->h:I

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->i:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 29
    iput-object v2, p0, Lcom/tencent/liteav/renderer/h;->j:[F

    new-array v2, v1, [F

    .line 30
    iput-object v2, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    iput v2, p0, Lcom/tencent/liteav/renderer/h;->l:F

    .line 32
    iput v2, p0, Lcom/tencent/liteav/renderer/h;->m:F

    .line 33
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->n:Z

    const/4 v2, 0x1

    .line 34
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    const/16 v2, 0x14

    new-array v2, v2, [F

    .line 134
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/tencent/liteav/renderer/h;->p:[F

    new-array v2, v1, [F

    .line 174
    iput-object v2, p0, Lcom/tencent/liteav/renderer/h;->r:[F

    new-array v1, v1, [F

    .line 175
    iput-object v1, p0, Lcom/tencent/liteav/renderer/h;->s:[F

    const/16 v1, -0x3039

    .line 178
    iput v1, p0, Lcom/tencent/liteav/renderer/h;->u:I

    .line 179
    iput v1, p0, Lcom/tencent/liteav/renderer/h;->v:I

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    .line 187
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->p:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 189
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    .line 190
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/h;->p:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->s:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(ILjava/lang/String;)I
    .locals 3

    .line 365
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 367
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 368
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    .line 370
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 371
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXTweenFilter"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 381
    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/renderer/h;->a(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 385
    invoke-direct {p0, v1, p2}, Lcom/tencent/liteav/renderer/h;->a(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 390
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 391
    invoke-direct {p0, v2}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    const-string v2, "TXTweenFilter"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 393
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 396
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 397
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 398
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 399
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v3, 0x8b82

    .line 401
    invoke-static {v1, v3, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 402
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    const-string p1, "Could not link program: "

    .line 403
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 413
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXTweenFilter"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b([F)V
    .locals 12

    .line 79
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->d:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tencent/liteav/renderer/h;->c:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 83
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->e:I

    .line 84
    iget v1, p0, Lcom/tencent/liteav/renderer/h;->f:I

    .line 87
    iget v2, p0, Lcom/tencent/liteav/renderer/h;->h:I

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 88
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->f:I

    .line 89
    iget v1, p0, Lcom/tencent/liteav/renderer/h;->e:I

    .line 92
    :cond_2
    iget v2, p0, Lcom/tencent/liteav/renderer/h;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 93
    iget v4, p0, Lcom/tencent/liteav/renderer/h;->d:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    int-to-float v1, v1

    div-float/2addr v5, v1

    .line 96
    iget v6, p0, Lcom/tencent/liteav/renderer/h;->g:I

    sget v7, Lcom/tencent/liteav/renderer/h;->a:I

    if-ne v6, v7, :cond_3

    mul-float v6, v2, v1

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_4

    goto :goto_0

    :cond_3
    mul-float v6, v2, v1

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    :cond_4
    move v2, v5

    .line 110
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 112
    iget-boolean v4, p0, Lcom/tencent/liteav/renderer/h;->i:Z

    if-eqz v4, :cond_7

    .line 113
    iget v4, p0, Lcom/tencent/liteav/renderer/h;->h:I

    rem-int/lit16 v4, v4, 0xb4

    const/high16 v6, -0x40800000    # -1.0f

    if-nez v4, :cond_6

    .line 114
    iget-object v4, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    invoke-static {v4, v5, v6, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_1

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    invoke-static {v4, v5, v3, v6, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 120
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    mul-float/2addr v0, v2

    iget v6, p0, Lcom/tencent/liteav/renderer/h;->c:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/liteav/renderer/h;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v4, v5, v0, v1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 125
    iget-object v6, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    const/4 v7, 0x0

    iget v0, p0, Lcom/tencent/liteav/renderer/h;->h:I

    int-to-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/tencent/liteav/renderer/h;->j:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/liteav/renderer/h;->k:[F

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_8
    :goto_2
    return-void
.end method

.method private d()V
    .locals 14

    .line 307
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reloadFrameBuffer. size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXTweenFilter"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/h;->e()V

    const/4 v0, 0x1

    new-array v2, v0, [I

    new-array v3, v0, [I

    const/4 v4, 0x0

    .line 315
    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 316
    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 318
    aget v0, v2, v4

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->u:I

    .line 319
    aget v0, v3, v4

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->v:I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameBuffer id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/h;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", texture id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/h;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->u:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture mFrameBufferTextureID"

    .line 322
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    .line 323
    iget v8, p0, Lcom/tencent/liteav/renderer/h;->c:I

    iget v9, p0, Lcom/tencent/liteav/renderer/h;->d:I

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 325
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 327
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 329
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 331
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 333
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->v:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 336
    iget v3, p0, Lcom/tencent/liteav/renderer/h;->u:I

    invoke-static {v2, v0, v1, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 338
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 339
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 341
    iput-boolean v4, p0, Lcom/tencent/liteav/renderer/h;->n:Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 350
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x3039

    if-eq v0, v3, :cond_0

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 353
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 354
    iput v3, p0, Lcom/tencent/liteav/renderer/h;->v:I

    .line 356
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->u:I

    if-eq v0, v3, :cond_1

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 359
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 360
    iput v3, p0, Lcom/tencent/liteav/renderer/h;->u:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/tencent/liteav/renderer/h;->g:I

    return-void
.end method

.method public a(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 37
    iget v3, v0, Lcom/tencent/liteav/renderer/h;->c:I

    if-ne v1, v3, :cond_0

    iget v3, v0, Lcom/tencent/liteav/renderer/h;->d:I

    if-ne v2, v3, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output resolution change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/liteav/renderer/h;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/renderer/h;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TXTweenFilter"

    invoke-static {v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput v1, v0, Lcom/tencent/liteav/renderer/h;->c:I

    .line 42
    iput v2, v0, Lcom/tencent/liteav/renderer/h;->d:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_1

    .line 46
    iget-object v4, v0, Lcom/tencent/liteav/renderer/h;->j:[F

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 47
    iput v3, v0, Lcom/tencent/liteav/renderer/h;->l:F

    .line 48
    iput v3, v0, Lcom/tencent/liteav/renderer/h;->m:F

    goto :goto_0

    .line 50
    :cond_1
    iget-object v12, v0, Lcom/tencent/liteav/renderer/h;->j:[F

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 51
    iput v3, v0, Lcom/tencent/liteav/renderer/h;->l:F

    .line 52
    iput v3, v0, Lcom/tencent/liteav/renderer/h;->m:F

    :goto_0
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/h;->n:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/h;->i:Z

    return-void
.end method

.method public a([F)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/tencent/liteav/renderer/h;->s:[F

    return-void
.end method

.method public a()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    return v0
.end method

.method public b()V
    .locals 4

    .line 268
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    if-eqz v0, :cond_0

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 269
    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    goto :goto_0

    :cond_0
    const-string v0, "varying highp vec2 vTextureCoord;\n \nuniform sampler2D sTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 271
    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    .line 274
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    const-string v1, "TXTweenFilter"

    if-nez v0, :cond_1

    const-string v0, "failed creating program"

    .line 275
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "aPosition"

    .line 278
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->y:I

    const-string v0, "glGetAttribLocation aPosition"

    .line 279
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->y:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "Could not get attrib location for aPosition"

    .line 281
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 284
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    const-string v3, "aTextureCoord"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->z:I

    const-string v0, "glGetAttribLocation aTextureCoord"

    .line 285
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 286
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->z:I

    if-ne v0, v2, :cond_3

    const-string v0, "Could not get attrib location for aTextureCoord"

    .line 287
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    const-string v3, "uMVPMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->w:I

    const-string v0, "glGetUniformLocation uMVPMatrix"

    .line 292
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->w:I

    if-ne v0, v2, :cond_4

    const-string v0, "Could not get attrib location for uMVPMatrix"

    .line 294
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 298
    :cond_4
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    const-string v3, "uSTMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/h;->x:I

    const-string v0, "glGetUniformLocation uSTMatrix"

    .line 299
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->x:I

    if-ne v0, v2, :cond_5

    const-string v0, "Could not get attrib location for uSTMatrix"

    .line 301
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/tencent/liteav/renderer/h;->h:I

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 58
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/h;->f:I

    if-ne p2, v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input resolution change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/h;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXTweenFilter"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput p1, p0, Lcom/tencent/liteav/renderer/h;->e:I

    .line 63
    iput p2, p0, Lcom/tencent/liteav/renderer/h;->f:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 345
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 346
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/h;->e()V

    return-void
.end method

.method public c(I)V
    .locals 10

    .line 204
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->c:I

    iget v1, p0, Lcom/tencent/liteav/renderer/h;->d:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 205
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 206
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 208
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 209
    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    const v1, 0x8d65

    const/16 v3, 0xde1

    const v4, 0x84c0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 214
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 217
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iget v4, p0, Lcom/tencent/liteav/renderer/h;->y:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    iget-object v9, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maPosition"

    .line 223
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 224
    iget p1, p0, Lcom/tencent/liteav/renderer/h;->y:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maPositionHandle"

    .line 225
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    iget v4, p0, Lcom/tencent/liteav/renderer/h;->z:I

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/tencent/liteav/renderer/h;->q:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maTextureHandle"

    .line 230
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 231
    iget p1, p0, Lcom/tencent/liteav/renderer/h;->z:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maTextureHandle"

    .line 232
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->r:[F

    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 235
    iget-object p1, p0, Lcom/tencent/liteav/renderer/h;->r:[F

    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->b([F)V

    .line 236
    iget p1, p0, Lcom/tencent/liteav/renderer/h;->w:I

    iget-object v0, p0, Lcom/tencent/liteav/renderer/h;->r:[F

    const/4 v4, 0x1

    invoke-static {p1, v4, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 237
    iget p1, p0, Lcom/tencent/liteav/renderer/h;->x:I

    iget-object v0, p0, Lcom/tencent/liteav/renderer/h;->s:[F

    invoke-static {p1, v4, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glDrawArrays"

    .line 238
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v4, 0x4

    .line 239
    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 240
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/h;->a(Ljava/lang/String;)V

    .line 241
    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/h;->o:Z

    if-eqz p1, :cond_1

    .line 242
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 244
    :cond_1
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_1
    return-void
.end method

.method public d(I)I
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/h;->d()V

    .line 251
    iget v0, p0, Lcom/tencent/liteav/renderer/h;->v:I

    const/16 v1, -0x3039

    if-ne v0, v1, :cond_0

    const-string v0, "TXTweenFilter"

    const-string v1, "invalid frame buffer id"

    .line 252
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const v1, 0x8d40

    .line 255
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/h;->c(I)V

    const/4 p1, 0x0

    .line 259
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 261
    iget p1, p0, Lcom/tencent/liteav/renderer/h;->u:I

    return p1
.end method
