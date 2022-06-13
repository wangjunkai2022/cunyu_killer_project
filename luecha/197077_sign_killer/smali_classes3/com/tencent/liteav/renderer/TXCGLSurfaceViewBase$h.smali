.class public Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;",
            ">;)V"
        }
    .end annotation

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0

    .line 1089
    invoke-static {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1094
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1097
    invoke-static {p1, p2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 1057
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1061
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v0, :cond_0

    .line 1063
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->e(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$g;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v1, 0x0

    .line 1064
    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->e:Z

    :cond_0
    const/4 v0, 0x0

    .line 1066
    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 901
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 902
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 903
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 907
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 910
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 912
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 913
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v2, "TXCGLSurfaceViewBase"

    const-string v3, "start() error when view is null "

    .line 914
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->c(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$e;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$e;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 917
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$f;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 919
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_1

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_2

    .line 920
    :cond_1
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v2, "createContext"

    .line 921
    invoke-direct {p0, v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 927
    iput-boolean v2, v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->f:Z

    .line 929
    :cond_3
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 908
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 6

    .line 967
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_8

    .line 970
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_7

    .line 973
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_6

    .line 976
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->h()V

    .line 977
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v0, :cond_0

    .line 979
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->e(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$g;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 980
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    .line 979
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 982
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 984
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 991
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 992
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "EGLHelper"

    const-string v3, "eglMakeCurrent"

    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 996
    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->e:Z

    :cond_3
    return v1

    .line 985
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 987
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2

    .line 974
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e()I

    move-result v0

    return v0
.end method

.method d()Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    .line 1023
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v1, :cond_3

    .line 1026
    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->f(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1027
    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->f(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1030
    :cond_0
    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->g(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1033
    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->g(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v2, v5

    .line 1036
    :cond_1
    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->g(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1037
    new-instance v3, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$l;

    invoke-direct {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$l;-><init>()V

    .line 1039
    :cond_2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public f()V
    .locals 0

    .line 1054
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->h()V

    return-void
.end method

.method public g()V
    .locals 5

    .line 1073
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$f;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1078
    :cond_0
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1082
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
