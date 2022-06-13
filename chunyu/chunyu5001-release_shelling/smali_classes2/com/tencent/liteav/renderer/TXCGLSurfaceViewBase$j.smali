.class Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "GLThreadManager"


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$1;)V
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    const/high16 v0, 0x20000

    .line 857
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c:I

    const/4 v0, 0x1

    .line 858
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->e:Z

    .line 859
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 804
    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;Z)Z

    .line 805
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 806
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    .line 808
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 839
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->d:Z

    if-nez v0, :cond_3

    .line 840
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c()V

    const/16 v0, 0x1f01

    .line 841
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->e:Z

    .line 845
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 847
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->e:Z

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->f:Z

    .line 853
    iput-boolean v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 832
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 835
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c()V

    .line 836
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)Z
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c()V

    .line 817
    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->e:Z

    if-eqz p1, :cond_1

    return v1

    .line 820
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    if-eqz p1, :cond_2

    .line 821
    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h()V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 812
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    .line 813
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method

.method public c(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 827
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->g:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;

    .line 829
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
