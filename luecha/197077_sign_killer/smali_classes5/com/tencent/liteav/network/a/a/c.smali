.class public final Lcom/tencent/liteav/network/a/a/c;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Lcom/tencent/liteav/network/a/c;


# static fields
.field private static final b:Ljava/util/Random;


# instance fields
.field final a:Ljava/net/InetAddress;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/liteav/network/a/a/c;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    const/16 v0, 0xa

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/network/a/a/c;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tencent/liteav/network/a/a/c;->a:Ljava/net/InetAddress;

    .line 30
    iput p2, p0, Lcom/tencent/liteav/network/a/a/c;->c:I

    return-void
.end method

.method private a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/tencent/liteav/network/a/a/c;->a:Ljava/net/InetAddress;

    const/16 v4, 0x35

    invoke-direct {v0, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 55
    iget p1, p0, Lcom/tencent/liteav/network/a/a/c;->c:I

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 56
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 57
    new-instance p1, Ljava/net/DatagramPacket;

    const/16 v0, 0x5dc

    new-array v2, v0, [B

    invoke-direct {p1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 58
    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 60
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 65
    :cond_0
    throw p1
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/network/a/b;Lcom/tencent/liteav/network/a/d;)[Lcom/tencent/liteav/network/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    sget-object p2, Lcom/tencent/liteav/network/a/a/c;->b:Ljava/util/Random;

    monitor-enter p2

    .line 38
    :try_start_0
    sget-object v0, Lcom/tencent/liteav/network/a/a/c;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 39
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object p2, p1, Lcom/tencent/liteav/network/a/b;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/lang/String;I)[B

    move-result-object p2

    .line 41
    invoke-direct {p0, p2}, Lcom/tencent/liteav/network/a/a/c;->a([B)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    iget-object p1, p1, Lcom/tencent/liteav/network/a/b;->a:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/network/a/a/b;->a([BILjava/lang/String;)[Lcom/tencent/liteav/network/a/e;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p2, Lcom/tencent/liteav/network/a/a;

    iget-object p1, p1, Lcom/tencent/liteav/network/a/b;->a:Ljava/lang/String;

    const-string v0, "cant get answer"

    invoke-direct {p2, p1, v0}, Lcom/tencent/liteav/network/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
