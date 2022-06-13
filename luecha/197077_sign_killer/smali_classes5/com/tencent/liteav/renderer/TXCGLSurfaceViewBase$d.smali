.class Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$d;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"

# interfaces
.implements Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$1;)V
    .locals 0

    .line 1232
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    const/4 v0, 0x0

    .line 1238
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TXCGLSurfaceViewBase"

    const-string p3, "eglCreateWindowSurface"

    .line 1246
    invoke-static {p2, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 1254
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
