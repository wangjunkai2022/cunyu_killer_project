.class public Lcom/tencent/liteav/muxer/c;
.super Ljava/lang/Object;
.source "TXCMP4Muxer.java"

# interfaces
.implements Lcom/tencent/liteav/muxer/a;


# instance fields
.field private a:I

.field private b:Lcom/tencent/liteav/muxer/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/tencent/liteav/muxer/c;->a:I

    const-string v1, "TXCMP4Muxer: use sw model "

    const-string v2, "TXCMP4Muxer"

    if-eqz p2, :cond_2

    const-string v3, "TXCMP4Muxer: use hw model "

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    .line 39
    invoke-static {p1}, Lcom/tencent/liteav/muxer/c;->a(Landroid/content/Context;)Z

    move-result p1

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  useSW:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 42
    iput v0, p0, Lcom/tencent/liteav/muxer/c;->a:I

    .line 43
    new-instance p1, Lcom/tencent/liteav/muxer/d;

    invoke-direct {p1}, Lcom/tencent/liteav/muxer/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    .line 44
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    iput v4, p0, Lcom/tencent/liteav/muxer/c;->a:I

    .line 47
    new-instance p1, Lcom/tencent/liteav/muxer/b;

    invoke-direct {p1}, Lcom/tencent/liteav/muxer/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    .line 48
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    iput v4, p0, Lcom/tencent/liteav/muxer/c;->a:I

    .line 34
    new-instance p1, Lcom/tencent/liteav/muxer/b;

    invoke-direct {p1}, Lcom/tencent/liteav/muxer/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    .line 35
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    iput v0, p0, Lcom/tencent/liteav/muxer/c;->a:I

    .line 29
    new-instance p1, Lcom/tencent/liteav/muxer/d;

    invoke-direct {p1}, Lcom/tencent/liteav/muxer/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    .line 30
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/basic/f/c;->a(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/basic/f/c;->d()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/muxer/a;->a()I

    move-result v0

    return v0
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/muxer/a;->a(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXCMP4Muxer : setTargetPath ():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMP4Muxer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/muxer/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a([BIIJI)V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/muxer/a;->a([BIIJI)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/muxer/a;->b()I

    move-result v0

    return v0
.end method

.method public b(Landroid/media/MediaFormat;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/muxer/a;->b(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public b([BIIJI)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/muxer/a;->b([BIIJI)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/muxer/c;->b:Lcom/tencent/liteav/muxer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/muxer/a;->c()Z

    move-result v0

    return v0
.end method
