.class public Ltop/niunaijun/blackbox/utils/DexUtils;
.super Ljava/lang/Object;
.source "DexUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcChecksum([B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var0"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 51
    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 52
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v2, 0x8

    .line 53
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    const/16 v2, 0x9

    .line 54
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    const/16 v2, 0xa

    .line 55
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 56
    aput-byte v0, p0, v1

    return-void
.end method

.method private static calcSignature([B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-1"

    .line 62
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    .line 70
    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v2, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected digest write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fixDex(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dex"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_fix.dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 28
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 31
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 33
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/DexUtils;->fixFileSizeHeader([B)V

    .line 34
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/DexUtils;->calcSignature([B)V

    .line 35
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/DexUtils;->calcChecksum([B)V

    .line 37
    :cond_1
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    aput-object v6, v1, v2

    .line 42
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    goto :goto_0

    :catchall_2
    move-exception v5

    move-object v6, v1

    move-object v1, v5

    move-object v5, v6

    .line 40
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    aput-object v6, v1, v2

    .line 42
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 43
    :goto_1
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 44
    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    .line 45
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    return-void

    :catchall_3
    move-exception v1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v5, v4, v3

    aput-object v6, v4, v2

    .line 42
    invoke-static {v4}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 43
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 44
    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/utils/FileUtils;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    .line 45
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 46
    throw v1
.end method

.method private static fixFileSizeHeader([B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dexBytes"
        }
    .end annotation

    .line 81
    array-length v0, p0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/DexUtils;->intToByte(I)[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 84
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v4

    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 86
    invoke-static {v2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static intToByte(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    .line 92
    rem-int/lit16 v2, p0, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
