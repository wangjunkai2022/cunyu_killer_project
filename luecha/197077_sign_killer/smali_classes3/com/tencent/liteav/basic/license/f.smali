.class public Lcom/tencent/liteav/basic/license/f;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#PART#"

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/license/f;->a:[B

    return-void
.end method

.method public static a([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 48
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "RSA/None/PKCS1Padding"

    .line 51
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 53
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/tencent/liteav/basic/license/f;->a:[B

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 60
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/license/f;->a([B[B)[B

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    array-length v1, p0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_a

    .line 66
    aget-byte v6, p0, v4

    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x1

    if-ne v4, v7, :cond_2

    sub-int v6, v1, v5

    .line 70
    new-array v6, v6, [B

    .line 71
    array-length v7, v6

    invoke-static {p0, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-static {v6, p1}, Lcom/tencent/liteav/basic/license/f;->a([B[B)[B

    move-result-object v5

    .line 73
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-byte v9, v5, v7

    .line 74
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int v5, v4, v0

    add-int/lit8 v4, v5, -0x1

    goto :goto_3

    .line 78
    :cond_2
    sget-object v7, Lcom/tencent/liteav/basic/license/f;->a:[B

    aget-byte v7, v7, v3

    if-ne v6, v7, :cond_6

    if-le v0, v8, :cond_5

    add-int v6, v4, v0

    if-ge v6, v1, :cond_6

    move v7, v3

    move v6, v8

    :goto_2
    if-ge v6, v0, :cond_7

    .line 84
    sget-object v9, Lcom/tencent/liteav/basic/license/f;->a:[B

    aget-byte v9, v9, v6

    add-int v10, v4, v6

    aget-byte v10, p0, v10

    if-eq v9, v10, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v0, -0x1

    if-ne v6, v9, :cond_4

    move v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v3

    :cond_7
    :goto_4
    if-eqz v7, :cond_9

    sub-int v6, v4, v5

    .line 99
    new-array v6, v6, [B

    .line 100
    array-length v7, v6

    invoke-static {p0, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    invoke-static {v6, p1}, Lcom/tencent/liteav/basic/license/f;->a([B[B)[B

    move-result-object v5

    .line 102
    array-length v6, v5

    move v7, v3

    :goto_5
    if-ge v7, v6, :cond_8

    aget-byte v9, v5, v7

    .line 103
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/2addr v4, v0

    add-int/lit8 v5, v4, -0x1

    move v11, v5

    move v5, v4

    move v4, v11

    :cond_9
    add-int/2addr v4, v8

    goto :goto_0

    .line 109
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [B

    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    add-int/lit8 v1, v3, 0x1

    .line 112
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p0, v3

    move v3, v1

    goto :goto_6

    :cond_b
    return-object p0
.end method
