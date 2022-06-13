.class public Lcom/tencent/liteav/basic/e/b;
.super Ljava/lang/Object;
.source "EGL14Helper.java"


# static fields
.field private static a:I = 0x2

.field private static final b:Ljava/lang/String;

.field private static k:[I

.field private static l:[I


# instance fields
.field private c:Landroid/opengl/EGLDisplay;

.field private d:Landroid/opengl/EGLContext;

.field private e:Landroid/opengl/EGLConfig;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/opengl/EGLSurface;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 193
    const-class v0, Lcom/tencent/liteav/basic/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v1, v0, [I

    const/16 v2, 0x3024

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    const/16 v5, 0x8

    aput v5, v1, v4

    const/16 v6, 0x3023

    const/4 v7, 0x2

    aput v6, v1, v7

    const/4 v8, 0x3

    aput v5, v1, v8

    const/16 v9, 0x3022

    const/4 v10, 0x4

    aput v9, v1, v10

    const/4 v11, 0x5

    aput v5, v1, v11

    const/16 v12, 0x3021

    const/4 v13, 0x6

    aput v12, v1, v13

    const/4 v14, 0x7

    aput v5, v1, v14

    const/16 v15, 0x3025

    aput v15, v1, v5

    const/16 v16, 0x9

    aput v3, v1, v16

    const/16 v16, 0xa

    const/16 v17, 0x3026

    aput v17, v1, v16

    const/16 v16, 0xb

    aput v3, v1, v16

    const/16 v16, 0xc

    const/16 v17, 0x3040

    aput v17, v1, v16

    .line 204
    sget v0, Lcom/tencent/liteav/basic/e/b;->a:I

    if-ne v0, v7, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/16 v0, 0x44

    :goto_0
    const/16 v17, 0xd

    aput v0, v1, v17

    const/16 v0, 0xe

    const/16 v17, 0x3142

    aput v17, v1, v0

    const/16 v0, 0xf

    aput v4, v1, v0

    const/16 v0, 0x10

    const/16 v17, 0x3038

    aput v17, v1, v0

    sput-object v1, Lcom/tencent/liteav/basic/e/b;->k:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x3033

    aput v1, v0, v3

    aput v4, v0, v4

    aput v2, v0, v7

    aput v5, v0, v8

    aput v6, v0, v10

    aput v5, v0, v11

    aput v9, v0, v13

    aput v5, v0, v14

    aput v12, v0, v5

    const/16 v1, 0x9

    aput v5, v0, v1

    const/16 v1, 0xa

    aput v15, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 216
    sget v2, Lcom/tencent/liteav/basic/e/b;->a:I

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0x44

    :goto_1
    aput v10, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3142

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/liteav/basic/e/b;->l:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    .line 195
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/tencent/liteav/basic/e/b;->f:I

    .line 198
    iput v0, p0, Lcom/tencent/liteav/basic/e/b;->g:I

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/tencent/liteav/basic/e/b;->j:I

    return-void
.end method

.method private static a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/basic/e/c;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 p2, 0x2

    const/16 v2, 0x3038

    aput v2, v0, p2

    .line 167
    invoke-static {p0, p1, p3, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 168
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->g()V

    return-object p0
.end method

.method public static a(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/e/b;
    .locals 1

    .line 21
    new-instance v0, Lcom/tencent/liteav/basic/e/b;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/e/b;-><init>()V

    .line 22
    iput p3, v0, Lcom/tencent/liteav/basic/e/b;->f:I

    .line 23
    iput p4, v0, Lcom/tencent/liteav/basic/e/b;->g:I

    .line 24
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 95
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    .line 96
    iget-object v4, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v4, v5, :cond_0

    .line 97
    sget-object v4, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const-string v5, "unable to get EGL14 display"

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 101
    iget-object v6, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x1

    invoke-static {v6, v5, v3, v5, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    .line 102
    iput-object v5, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    .line 104
    sget-object v5, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const-string v6, "unable to initialize EGL14"

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 107
    iput-object v0, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    goto :goto_1

    :cond_2
    new-array v0, v7, [Landroid/opengl/EGLConfig;

    new-array v14, v7, [I

    .line 112
    iget-object v8, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    if-nez v2, :cond_3

    sget-object v5, Lcom/tencent/liteav/basic/e/b;->l:[I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/tencent/liteav/basic/e/b;->k:[I

    :goto_0
    move-object v9, v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    const/4 v15, 0x0

    move-object v11, v0

    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    .line 116
    :cond_4
    aget-object v0, v0, v3

    iput-object v0, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    :goto_1
    if-eqz p2, :cond_5

    .line 119
    iput-boolean v7, v1, Lcom/tencent/liteav/basic/e/b;->h:Z

    move-object/from16 v0, p2

    goto :goto_2

    .line 122
    :cond_5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :goto_2
    const/4 v5, 0x3

    .line 128
    :try_start_0
    iget-object v6, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v8, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    invoke-static {v6, v8, v4, v0}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;
    :try_end_0
    .catch Lcom/tencent/liteav/basic/e/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 130
    :catch_0
    sget-object v6, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const-string v8, "failed to create EGLContext of OpenGL ES 2.0, try 3.0"

    invoke-static {v6, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_1
    iget-object v6, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v8, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    invoke-static {v6, v8, v5, v0}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;ILandroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;
    :try_end_1
    .catch Lcom/tencent/liteav/basic/e/c; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    new-array v0, v7, [I

    const/16 v6, 0x3038

    aput v6, v0, v3

    if-nez v2, :cond_6

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v2, 0x3057

    aput v2, v0, v3

    .line 143
    iget v2, v1, Lcom/tencent/liteav/basic/e/b;->f:I

    aput v2, v0, v7

    const/16 v2, 0x3056

    aput v2, v0, v4

    iget v2, v1, Lcom/tencent/liteav/basic/e/b;->g:I

    aput v2, v0, v5

    const/4 v2, 0x4

    aput v6, v0, v2

    .line 148
    iget-object v2, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v4, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    invoke-static {v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    goto :goto_4

    .line 150
    :cond_6
    iget-object v4, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v5, v1, Lcom/tencent/liteav/basic/e/b;->e:Landroid/opengl/EGLConfig;

    invoke-static {v4, v5, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    .line 151
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/basic/e/b;->a()V

    .line 152
    iget-object v0, v1, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    iget-object v4, v1, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/basic/e/b;->a()V

    return v3

    :cond_7
    return v7

    :catch_1
    move-exception v0

    .line 134
    sget-object v2, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to create EGLContext of 3.0. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/liteav/basic/e/c;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v1, Lcom/tencent/liteav/basic/e/c;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/basic/e/c;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 45
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 47
    sget-object v1, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 55
    sget-object v0, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/tencent/liteav/basic/e/b;->b:Ljava/lang/String;

    const-string v1, "eglMakeCurrent failed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Lcom/tencent/liteav/basic/util/e;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 65
    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    const/4 v3, 0x0

    const/16 v4, 0x3057

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    const/4 v5, 0x1

    const/16 v6, 0x3056

    invoke-static {v2, v4, v6, v0, v5}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 68
    new-instance v1, Lcom/tencent/liteav/basic/util/e;

    aget v2, v0, v3

    aget v0, v0, v5

    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/basic/util/e;-><init>(II)V

    return-object v1

    .line 70
    :cond_0
    new-instance v0, Lcom/tencent/liteav/basic/util/e;

    invoke-direct {v0, v3, v3}, Lcom/tencent/liteav/basic/util/e;-><init>(II)V

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 82
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    .line 83
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 87
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    return-void
.end method

.method public e()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/b;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/opengl/EGLContext;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/b;->d:Landroid/opengl/EGLContext;

    return-object v0
.end method
