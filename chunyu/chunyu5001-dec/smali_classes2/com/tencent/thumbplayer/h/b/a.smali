.class public final Lcom/tencent/thumbplayer/h/b/a;
.super Lcom/tencent/thumbplayer/h/b/f;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/h/b/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/h/b/f;-><init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/h/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/h/f/a;->a(Lcom/tencent/thumbplayer/h/b/f;Lcom/tencent/thumbplayer/h/b/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tencent/thumbplayer/h/f/a$b;->d:Lcom/tencent/thumbplayer/h/f/a$b;

    return-object p1

    :cond_0
    sget-object p1, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCodecWrapper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
