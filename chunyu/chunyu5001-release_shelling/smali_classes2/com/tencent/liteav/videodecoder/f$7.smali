.class Lcom/tencent/liteav/videodecoder/f$7;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Ljava/nio/ByteBuffer;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/f$7;->a:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/f$7;->b:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/tencent/liteav/videodecoder/f$7;->c:Z

    iput-boolean p5, p0, Lcom/tencent/liteav/videodecoder/f$7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    const-string v1, "start decoder."

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;)Lcom/tencent/liteav/videodecoder/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;Lcom/tencent/liteav/videodecoder/g;)V

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/ref/WeakReference;)V

    .line 119
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->c(Lcom/tencent/liteav/videodecoder/f;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)I

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->d(Lcom/tencent/liteav/videodecoder/f;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->e(Lcom/tencent/liteav/videodecoder/f;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;Z)V

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->f(Lcom/tencent/liteav/videodecoder/f;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v2}, Lcom/tencent/liteav/videodecoder/f;->g(Lcom/tencent/liteav/videodecoder/f;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videodecoder/f;->b(Lcom/tencent/liteav/videodecoder/f;II)V

    .line 123
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/f$7;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/f$7;->b:Ljava/nio/ByteBuffer;

    iget-boolean v3, p0, Lcom/tencent/liteav/videodecoder/f$7;->c:Z

    iget-boolean v4, p0, Lcom/tencent/liteav/videodecoder/f$7;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$7;->e:Lcom/tencent/liteav/videodecoder/f;

    const-string v1, "start decoder finish."

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/String;)V

    return-void
.end method
