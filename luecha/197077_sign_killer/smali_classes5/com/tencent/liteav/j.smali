.class public abstract Lcom/tencent/liteav/j;
.super Ljava/lang/Object;
.source "TXIPlayer.java"


# instance fields
.field protected b:Lcom/tencent/liteav/d;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/j;->b:Lcom/tencent/liteav/d;

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/j;->c:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/tencent/liteav/j;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/j;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public abstract a(Ljava/lang/String;I)I
.end method

.method public abstract a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I
.end method

.method public a(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public abstract a(Z)I
.end method

.method public a()V
    .locals 2

    const-string v0, "TXIPlayer"

    const-string v1, "pause not support"

    .line 57
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/j;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public abstract a(Lcom/tencent/liteav/basic/e/k;)V
.end method

.method public a(Lcom/tencent/liteav/d;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/j;->b:Lcom/tencent/liteav/d;

    .line 45
    iget-object p1, p0, Lcom/tencent/liteav/j;->b:Lcom/tencent/liteav/d;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/tencent/liteav/d;

    invoke-direct {p1}, Lcom/tencent/liteav/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/j;->b:Lcom/tencent/liteav/d;

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/tencent/liteav/j;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    return-void
.end method

.method public a(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V
    .locals 0

    return-void
.end method

.method public abstract a(ZI)V
.end method

.method public b()V
    .locals 2

    const-string v0, "TXIPlayer"

    const-string v1, "resume not support"

    .line 61
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .locals 1

    const-string p1, "TXIPlayer"

    const-string v0, "rate not implement"

    .line 112
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract c()Z
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d(I)V
.end method

.method public d(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract e()I
.end method

.method public abstract e(I)I
.end method

.method public e(Z)V
    .locals 1

    const-string p1, "TXIPlayer"

    const-string v0, "autoPlay not implement"

    .line 108
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 1

    const-string p1, "TXIPlayer"

    const-string v0, "seek not support"

    .line 71
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public abstract j()I
.end method

.method public w()Lcom/tencent/liteav/d;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/j;->b:Lcom/tencent/liteav/d;

    return-object v0
.end method
