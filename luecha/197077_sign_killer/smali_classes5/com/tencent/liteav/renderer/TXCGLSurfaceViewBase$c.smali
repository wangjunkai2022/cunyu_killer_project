.class Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"

# interfaces
.implements Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;->a:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 1195
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$1;)V
    .locals 0

    .line 1194
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1198
    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;->a:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    invoke-static {v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->h(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 1201
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$c;->a:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    .line 1202
    invoke-static {v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->h(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1201
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .line 1207
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DefaultContextFactory"

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const-string p2, "eglDestroyContex"

    invoke-static {p2, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
