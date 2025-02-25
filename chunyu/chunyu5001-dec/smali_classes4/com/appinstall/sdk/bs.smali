.class public Lcom/appinstall/sdk/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/bs$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    iput-wide p1, p0, Lcom/appinstall/sdk/bs;->a:J

    return-void
.end method

.method private a(I)[B
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/sdk/br;

    iget-object v2, v1, Lcom/appinstall/sdk/br;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lcom/appinstall/sdk/br;->b:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/bs$a;

    invoke-virtual {p1}, Lcom/appinstall/sdk/bs$a;->a()[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/sdk/br;

    iget-object v1, v1, Lcom/appinstall/sdk/br;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/appinstall/sdk/bs;->a:J

    invoke-virtual {p0}, Lcom/appinstall/sdk/bs;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(I[B)V
    .locals 4

    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lcom/appinstall/sdk/br;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/appinstall/sdk/bs$a;

    invoke-direct {v2, v0}, Lcom/appinstall/sdk/bs$a;-><init>([B)V

    invoke-direct {p2, v1, v2}, Lcom/appinstall/sdk/br;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/sdk/br;

    iget-object v1, v1, Lcom/appinstall/sdk/br;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([B)V
    .locals 1

    const v0, 0x3ae21354

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/appinstall/sdk/bs;->b(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/appinstall/sdk/bs;->a(I[B)V

    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/appinstall/sdk/bs;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 5

    iget-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x20

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appinstall/sdk/br;

    iget-object v3, v3, Lcom/appinstall/sdk/br;->b:Ljava/lang/Object;

    check-cast v3, Lcom/appinstall/sdk/bs$a;

    iget-object v3, v3, Lcom/appinstall/sdk/bs$a;->a:[B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appinstall/sdk/bs;->f()Lcom/appinstall/sdk/bs;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    const v0, 0x3ae21354

    invoke-direct {p0, v0}, Lcom/appinstall/sdk/bs;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/nio/ByteBuffer;
    .locals 7

    iget-object v0, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/appinstall/sdk/bs;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appinstall/sdk/br;

    add-int/lit8 v6, v4, 0x1

    iget-object v5, v5, Lcom/appinstall/sdk/br;->b:Ljava/lang/Object;

    check-cast v5, Lcom/appinstall/sdk/bs$a;

    iget-object v5, v5, Lcom/appinstall/sdk/bs$a;->a:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v0, v4

    move v4, v6

    goto :goto_0

    :cond_0
    const/16 v3, 0x18

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide v2, 0x20676953204b5041L

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide v2, 0x3234206b636f6c42L    # 7.465385175170059E-67

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v4

    return-object v0
.end method

.method public f()Lcom/appinstall/sdk/bs;
    .locals 6

    new-instance v0, Lcom/appinstall/sdk/bs;

    iget-wide v1, p0, Lcom/appinstall/sdk/bs;->a:J

    invoke-direct {v0, v1, v2}, Lcom/appinstall/sdk/bs;-><init>(J)V

    iget-object v1, p0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appinstall/sdk/br;

    iget-object v3, v0, Lcom/appinstall/sdk/bs;->b:Ljava/util/List;

    new-instance v4, Lcom/appinstall/sdk/br;

    iget-object v5, v2, Lcom/appinstall/sdk/br;->a:Ljava/lang/Object;

    iget-object v2, v2, Lcom/appinstall/sdk/br;->b:Ljava/lang/Object;

    invoke-direct {v4, v5, v2}, Lcom/appinstall/sdk/br;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
