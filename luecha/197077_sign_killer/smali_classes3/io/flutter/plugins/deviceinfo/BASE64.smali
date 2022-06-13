.class public Lio/flutter/plugins/deviceinfo/BASE64;
.super Ljava/lang/Object;
.source "BASE64.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/deviceinfo/BASE64;->alphabet:[C

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 6
    sput-object v1, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    sget-object v2, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 66
    sget-object v1, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    move v1, v0

    :goto_2
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    .line 68
    sget-object v2, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    add-int/lit8 v3, v1, 0x1a

    sub-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    move v1, v0

    :goto_3
    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 70
    sget-object v2, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    add-int/lit8 v3, v1, 0x34

    sub-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    :cond_3
    sget-object v0, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 72
    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 7

    .line 36
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 37
    array-length v1, p0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-lez v1, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 39
    :cond_0
    array-length v1, p0

    if-le v1, v3, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 41
    :cond_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 45
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_3

    .line 46
    sget-object v5, Lio/flutter/plugins/deviceinfo/BASE64;->codes:[B

    aget-char v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    if-ltz v5, :cond_2

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v5

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v5, v2, 0x1

    shr-int v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 53
    aput-byte v6, v0, v2

    move v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_3
    array-length p0, v0

    if-ne v2, p0, :cond_4

    return-object v0

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/Error;

    const-string v0, "miscalculated data length!"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([B)[C
    .locals 10

    .line 9
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 10
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 13
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    .line 15
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    .line 16
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x2

    .line 20
    array-length v8, p0

    if-ge v6, v8, :cond_1

    .line 21
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    add-int/lit8 v6, v3, 0x3

    .line 24
    sget-object v8, Lio/flutter/plugins/deviceinfo/BASE64;->alphabet:[C

    const/16 v9, 0x40

    if-eqz v7, :cond_2

    and-int/lit8 v7, v4, 0x3f

    goto :goto_3

    :cond_2
    move v7, v9

    :goto_3
    aget-char v7, v8, v7

    aput-char v7, v0, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 26
    sget-object v7, Lio/flutter/plugins/deviceinfo/BASE64;->alphabet:[C

    if-eqz v5, :cond_3

    and-int/lit8 v9, v4, 0x3f

    :cond_3
    aget-char v5, v7, v9

    aput-char v5, v0, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x1

    .line 28
    sget-object v6, Lio/flutter/plugins/deviceinfo/BASE64;->alphabet:[C

    and-int/lit8 v7, v4, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v0, v5

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x0

    and-int/lit8 v4, v4, 0x3f

    .line 30
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_4
    return-object v0
.end method
