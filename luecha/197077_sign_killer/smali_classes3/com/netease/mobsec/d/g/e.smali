.class public Lcom/netease/mobsec/d/g/e;
.super Lcom/netease/mobsec/d/g/c$b;
.source "SourceFile"


# instance fields
.field private final m:Lcom/netease/mobsec/d/g/f;


# direct methods
.method public constructor <init>(ZLcom/netease/mobsec/d/g/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/mobsec/d/g/c$b;-><init>()V

    iput-boolean p1, p0, Lcom/netease/mobsec/d/g/c$b;->a:Z

    iput-object p2, p0, Lcom/netease/mobsec/d/g/e;->m:Lcom/netease/mobsec/d/g/f;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->b:I

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->c(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/mobsec/d/g/c$b;->c:J

    const-wide/16 v1, 0x28

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->c(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/mobsec/d/g/c$b;->d:J

    const-wide/16 v1, 0x36

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->e:I

    const-wide/16 v1, 0x38

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->f:I

    const-wide/16 v1, 0x3a

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->g:I

    const-wide/16 v1, 0x3c

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->h:I

    const-wide/16 v1, 0x3e

    invoke-virtual {p2, v0, v1, v2}, Lcom/netease/mobsec/d/g/f;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/netease/mobsec/d/g/c$b;->i:I

    return-void
.end method


# virtual methods
.method public a(JI)Lcom/netease/mobsec/d/g/c$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/netease/mobsec/d/g/b;

    iget-object v1, p0, Lcom/netease/mobsec/d/g/e;->m:Lcom/netease/mobsec/d/g/f;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mobsec/d/g/b;-><init>(Lcom/netease/mobsec/d/g/f;Lcom/netease/mobsec/d/g/c$b;JI)V

    return-object v6
.end method

.method public a(J)Lcom/netease/mobsec/d/g/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/netease/mobsec/d/g/h;

    iget-object v1, p0, Lcom/netease/mobsec/d/g/e;->m:Lcom/netease/mobsec/d/g/f;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/netease/mobsec/d/g/h;-><init>(Lcom/netease/mobsec/d/g/f;Lcom/netease/mobsec/d/g/c$b;J)V

    return-object v0
.end method

.method public a(I)Lcom/netease/mobsec/d/g/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/netease/mobsec/d/g/j;

    iget-object v1, p0, Lcom/netease/mobsec/d/g/e;->m:Lcom/netease/mobsec/d/g/f;

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mobsec/d/g/j;-><init>(Lcom/netease/mobsec/d/g/f;Lcom/netease/mobsec/d/g/c$b;I)V

    return-object v0
.end method
