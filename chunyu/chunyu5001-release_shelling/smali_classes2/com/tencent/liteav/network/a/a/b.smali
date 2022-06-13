.class public final Lcom/tencent/liteav/network/a/a/b;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# direct methods
.method private static a(Ljava/io/DataInputStream;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    .line 119
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    add-int/2addr v0, p0

    .line 120
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/network/a/a/b;->a([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 127
    :cond_1
    new-array v0, v0, [B

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 129
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static a([BILjava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0xc0

    const-string v2, ""

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_1

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 153
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {p0, v0, p2}, Lcom/tencent/liteav/network/a/a/b;->a([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Lcom/tencent/liteav/network/a/a;

    const-string p1, "Cyclic offsets detected."

    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/network/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 163
    :cond_2
    new-instance v1, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p1, v0

    .line 164
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/network/a/a/b;->a([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static a(Ljava/io/DataInputStream;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    .line 173
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 177
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "[.\u3002\uff0e\uff61]"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 60
    invoke-static {v3}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 61
    array-length v4, v3

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 62
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 4

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 27
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    new-instance v2, Lcom/tencent/liteav/network/a/b/a;

    invoke-direct {v2}, Lcom/tencent/liteav/network/a/b/a;-><init>()V

    const/16 v3, 0x8

    .line 31
    invoke-virtual {v2, v3}, Lcom/tencent/liteav/network/a/b/a;->a(I)Lcom/tencent/liteav/network/a/b/a;

    int-to-short p1, p1

    .line 34
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 35
    invoke-virtual {v2}, Lcom/tencent/liteav/network/a/b/a;->a()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 47
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 49
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 50
    invoke-static {v0, p0}, Lcom/tencent/liteav/network/a/a/b;->b(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a([BILjava/lang/String;)[Lcom/tencent/liteav/network/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 83
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    shr-int/lit8 v0, p1, 0x8

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    .line 92
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    .line 94
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 96
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 99
    invoke-static {v1, p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/DataInputStream;[BI)V

    .line 101
    invoke-static {v1, p0, p2}, Lcom/tencent/liteav/network/a/a/b;->b(Ljava/io/DataInputStream;[BI)[Lcom/tencent/liteav/network/a/e;

    move-result-object p0

    return-object p0

    .line 87
    :cond_2
    new-instance p0, Lcom/tencent/liteav/network/a/a;

    const-string p1, "the dns server cant support recursion "

    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/network/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_3
    new-instance p0, Lcom/tencent/liteav/network/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the answer id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not match "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/network/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/io/DataInputStream;[B)Lcom/tencent/liteav/network/a/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 194
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 196
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    const/16 v3, 0x10

    shl-long/2addr v0, v3

    .line 197
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 198
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 212
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object p0, p1

    goto :goto_1

    .line 207
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 203
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 204
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 219
    new-instance p1, Lcom/tencent/liteav/network/a/e;

    long-to-int v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/network/a/e;-><init>(Ljava/lang/String;IIJ)V

    return-object p1

    .line 217
    :cond_3
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "no record"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 71
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private static b(Ljava/io/DataInputStream;[BI)[Lcom/tencent/liteav/network/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-array v0, p2, [Lcom/tencent/liteav/network/a/e;

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_0

    add-int/lit8 p2, v1, 0x1

    .line 185
    invoke-static {p0, p1}, Lcom/tencent/liteav/network/a/a/b;->b(Ljava/io/DataInputStream;[B)Lcom/tencent/liteav/network/a/e;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method
