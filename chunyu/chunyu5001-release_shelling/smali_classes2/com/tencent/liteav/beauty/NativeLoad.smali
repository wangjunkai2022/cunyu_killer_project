.class public Lcom/tencent/liteav/beauty/NativeLoad;
.super Ljava/lang/Object;
.source "NativeLoad.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeLoad"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 18
    invoke-static {}, Lcom/tencent/liteav/beauty/NativeLoad;->OnLoadBeauty()V

    const-string v0, "NativeLoad"

    const-string v1, "NativeLoad: load jni"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native OnLoadBeauty()V
.end method

.method public static native nativeClearQueue()V
.end method

.method public static native nativeDeleteYuv2Yuv()V
.end method

.method public static native nativeGlMapBufferToQueue(IILjava/nio/ByteBuffer;)V
.end method

.method public static native nativeGlReadPixs(II[B)V
.end method

.method public static native nativeGlReadPixsFromQueue(II[B)Z
.end method

.method public static native nativeGlReadPixsToQueue(II)V
.end method

.method public static native nativeLoadGLProgram(I)I
.end method

.method public static native nativeglTexImage2D(IIIIIIII[BI)V
.end method
