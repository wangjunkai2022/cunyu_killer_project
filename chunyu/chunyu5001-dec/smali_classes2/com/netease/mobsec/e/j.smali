.class public Lcom/netease/mobsec/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0xc8

.field public static b:I = 0x3e9

.field public static c:I = 0x3ea

.field public static d:I = 0x3eb

.field public static e:I = 0x3ec

.field public static f:Ljava/lang/String; = "ok"

.field public static g:Ljava/lang/String; = "pruduct number error"

.field public static h:Ljava/lang/String; = "init error"

.field public static i:Ljava/lang/String; = "init context is null,error"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x18

    :try_start_0
    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/netease/mobsec/e/j;->a(J)[B

    move-result-object v1

    invoke-static {v3, v4}, Lcom/netease/mobsec/e/j;->a(J)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/mobsec/e/j;->a([B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "7pNRBg3m2HgFFIuxSjcxnlGvyRGAnrBY"

    :try_start_1
    array-length v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v6, v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v4, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/netease/mobsec/e/j;->b([B)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x10

    invoke-static {v1, v5, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/netease/mobsec/e/j;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a([B[B)[B
    .locals 7

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    div-int/lit8 v4, v3, 0x2

    aget-byte v5, p1, v4

    and-int/lit8 v5, v5, 0x10

    ushr-int/lit8 v5, v5, 0x4

    aget-byte v6, p1, v4

    and-int/lit8 v6, v6, 0x20

    ushr-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v6, p1, v4

    and-int/lit8 v6, v6, 0x40

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0x80

    ushr-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x10

    ushr-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x20

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x40

    ushr-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0x80

    ushr-int/2addr v4, v2

    or-int/2addr v4, v5

    aget-byte v5, v1, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_1

    :cond_0
    div-int/lit8 v4, v3, 0x2

    aget-byte v5, p1, v4

    and-int/lit8 v5, v5, 0x1

    shl-int/2addr v5, v2

    aget-byte v6, p1, v4

    and-int/lit8 v6, v6, 0x2

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    aget-byte v6, p1, v4

    and-int/lit8 v6, v6, 0x4

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aget-byte v6, p1, v4

    and-int/lit8 v6, v6, 0x8

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x2

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x4

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    aget-byte v5, v1, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
