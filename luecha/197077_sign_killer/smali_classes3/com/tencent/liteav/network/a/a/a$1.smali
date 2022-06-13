.class final Lcom/tencent/liteav/network/a/a/a$1;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"

# interfaces
.implements Lcom/tencent/liteav/network/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/a/a/a;->c()Lcom/tencent/liteav/network/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/network/a/b;Lcom/tencent/liteav/network/a/d;)[Lcom/tencent/liteav/network/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/tencent/liteav/network/a/a/a;->b()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/tencent/liteav/network/a/a/a;->a()[Ljava/net/InetAddress;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 160
    new-instance v1, Lcom/tencent/liteav/network/a/a/c;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lcom/tencent/liteav/network/a/a/c;-><init>(Ljava/net/InetAddress;)V

    .line 161
    invoke-interface {v1, p1, p2}, Lcom/tencent/liteav/network/a/c;->a(Lcom/tencent/liteav/network/a/b;Lcom/tencent/liteav/network/a/d;)[Lcom/tencent/liteav/network/a/e;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cant get local dns server"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
