.class public final Lcom/google/android/exoplayer2/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/GlUtil$Uniform;,
        Lcom/google/android/exoplayer2/util/GlUtil$Attribute;
    }
.end annotation


# static fields
.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final TAG:Ljava/lang/String; = "GlUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->strlen([B)I

    move-result p0

    return p0
.end method

.method private static addShader(ILjava/lang/String;I)V
    .locals 4

    .line 381
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 382
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 383
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const v3, 0x8b81

    .line 386
    invoke-static {p0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 387
    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    .line 388
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", source: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/GlUtil;->throwGlError(Ljava/lang/String;)V

    .line 391
    :cond_0
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 392
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 393
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static checkGlError()V
    .locals 3

    .line 264
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "glError "

    .line 265
    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, "GlUtil"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static compileProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 294
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 295
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    const v1, 0x8b31

    .line 298
    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->addShader(ILjava/lang/String;I)V

    const p0, 0x8b30

    .line 299
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->addShader(ILjava/lang/String;I)V

    .line 302
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const/4 v1, 0x0

    aput v1, p1, v1

    const v2, 0x8b82

    .line 304
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 305
    aget p1, p1, v1

    if-eq p1, p0, :cond_1

    const-string p0, "Unable to link shader program: \n"

    .line 306
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->throwGlError(Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return v0
.end method

.method public static compileProgram([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "\n"

    .line 283
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil;->compileProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static createBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 356
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 357
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1

    .line 347
    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static createExternalTexture()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 366
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 367
    aget v2, v1, v0

    const v3, 0x8d65

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2601

    const/16 v4, 0x2801

    .line 368
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 370
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x812f

    const/16 v4, 0x2802

    .line 372
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 374
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 376
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 377
    aget v0, v1, v0

    return v0
.end method

.method public static getAttributes(I)[Lcom/google/android/exoplayer2/util/GlUtil$Attribute;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x8b89

    .line 316
    invoke-static {p0, v2, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 317
    aget v2, v0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 321
    aget v2, v0, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    move v3, v1

    .line 322
    :goto_0
    aget v4, v0, v1

    if-ge v3, v4, :cond_0

    .line 323
    new-instance v4, Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    invoke-direct {v4, p0, v3}, Lcom/google/android/exoplayer2/util/GlUtil$Attribute;-><init>(II)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 318
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected two attributes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUniforms(I)[Lcom/google/android/exoplayer2/util/GlUtil$Uniform;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x8b86

    .line 331
    invoke-static {p0, v2, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 333
    aget v2, v0, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    move v3, v1

    .line 334
    :goto_0
    aget v4, v0, v1

    if-ge v3, v4, :cond_0

    .line 335
    new-instance v4, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    invoke-direct {v4, p0, v3}, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;-><init>(II)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static isProtectedContentExtensionSupported(Landroid/content/Context;)Z
    .locals 4

    .line 222
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return v1

    .line 225
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 232
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v2, :cond_3

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 240
    :cond_3
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 241
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "EGL_EXT_protected_content"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isSurfacelessContextExtensionSupported()Z
    .locals 3

    .line 249
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    .line 252
    :cond_0
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v2, 0x3055

    .line 253
    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "EGL_KHR_surfaceless_context"

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static strlen([B)I
    .locals 2

    const/4 v0, 0x0

    .line 405
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 406
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static throwGlError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GlUtil"

    .line 397
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
