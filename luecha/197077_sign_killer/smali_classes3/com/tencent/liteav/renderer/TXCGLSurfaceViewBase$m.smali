.class Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$m;
.super Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$b;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic j:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;Z)V
    .locals 8

    .line 1180
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$m;->j:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v6, p2

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1181
    invoke-direct/range {v0 .. v7}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$b;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;IIIIII)V

    return-void
.end method
