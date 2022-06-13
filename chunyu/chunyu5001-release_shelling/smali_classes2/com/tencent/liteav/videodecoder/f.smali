.class public Lcom/tencent/liteav/videodecoder/f;
.super Lcom/tencent/liteav/videodecoder/e;
.source "TXCVideoMediaCodecDecoderWrapper.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/tencent/liteav/videodecoder/g;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/Surface;

.field private e:Lorg/json/JSONArray;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)I
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->config(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videodecoder/e;->start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;)Lcom/tencent/liteav/videodecoder/g;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/videodecoder/f;->b:Lcom/tencent/liteav/videodecoder/g;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;II)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/e;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/videodecoder/g;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videodecoder/f;Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->enableLimitDecCache(Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decoder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVideoMediaCodecWrapper"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)I
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->config(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/videodecoder/f;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;II)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/e;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/videodecoder/g;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videodecoder/f;Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->enableLimitDecCache(Z)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videodecoder/f;)Landroid/view/Surface;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/videodecoder/f;->d:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/liteav/videodecoder/f;)Lorg/json/JSONArray;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/videodecoder/f;->e:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videodecoder/f;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/liteav/videodecoder/f;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videodecoder/f;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/liteav/videodecoder/f;->g:I

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videodecoder/f;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/liteav/videodecoder/f;->h:I

    return p0
.end method

.method static synthetic h(Lcom/tencent/liteav/videodecoder/f;)V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/tencent/liteav/videodecoder/e;->stop()V

    return-void
.end method


# virtual methods
.method public GetDecodeCost()I
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/tencent/liteav/videodecoder/e;->GetDecodeCost()I

    move-result v0

    return v0
.end method

.method public a(II)V
    .locals 1

    .line 100
    iput p1, p0, Lcom/tencent/liteav/videodecoder/f;->g:I

    .line 101
    iput p2, p0, Lcom/tencent/liteav/videodecoder/f;->h:I

    .line 102
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videodecoder/f$6;-><init>(Lcom/tencent/liteav/videodecoder/f;II)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f;->e:Lorg/json/JSONArray;

    .line 79
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$4;-><init>(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public config(Landroid/view/Surface;)I
    .locals 1

    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f;->d:Landroid/view/Surface;

    .line 67
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$3;-><init>(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/f;->i:Z

    .line 146
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$9;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$9;-><init>(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableLimitDecCache(Z)V
    .locals 1

    .line 89
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/f;->f:Z

    .line 90
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$5;-><init>(Lcom/tencent/liteav/videodecoder/f;Z)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videodecoder/g;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f;->b:Lcom/tencent/liteav/videodecoder/g;

    .line 45
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$1;-><init>(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/videodecoder/g;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNotifyListener(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f;->c:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videodecoder/f$2;-><init>(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
    .locals 7

    .line 112
    iput-boolean p4, p0, Lcom/tencent/liteav/videodecoder/f;->i:Z

    .line 113
    new-instance v6, Lcom/tencent/liteav/videodecoder/f$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/videodecoder/f$7;-><init>(Lcom/tencent/liteav/videodecoder/f;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)V

    invoke-direct {p0, v6}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .locals 1

    .line 132
    new-instance v0, Lcom/tencent/liteav/videodecoder/f$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videodecoder/f$8;-><init>(Lcom/tencent/liteav/videodecoder/f;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
