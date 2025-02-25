.class public Lcom/netease/mobsec/d/g/g;
.super Lcom/netease/mobsec/d/g/c$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/d/g/f;Lcom/netease/mobsec/d/g/c$b;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/mobsec/d/g/c$c;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-boolean v1, p2, Lcom/netease/mobsec/d/g/c$b;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v1, p2, Lcom/netease/mobsec/d/g/c$b;->c:J

    iget p2, p2, Lcom/netease/mobsec/d/g/c$b;->e:I

    int-to-long v3, p2

    mul-long/2addr p3, v3

    add-long/2addr v1, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/netease/mobsec/d/g/c$c;->a:J

    const-wide/16 p2, 0x4

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Lcom/netease/mobsec/d/g/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/netease/mobsec/d/g/c$c;->b:J

    const-wide/16 p2, 0x8

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Lcom/netease/mobsec/d/g/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/netease/mobsec/d/g/c$c;->c:J

    const-wide/16 p2, 0x14

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/mobsec/d/g/c$c;->d:J

    return-void
.end method
