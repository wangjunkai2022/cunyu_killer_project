.class public Ltop/niunaijun/blackbox/utils/NativeUtils;
.super Ljava/lang/Object;
.source "NativeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VirtualM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeLib(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apk",
            "nativeLibDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 35
    :try_start_0
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Ltop/niunaijun/blackbox/utils/NativeUtils;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :cond_1
    :try_start_1
    const-string p0, "armeabi"

    .line 39
    invoke-static {v0, p0, p1}, Ltop/niunaijun/blackbox/utils/NativeUtils;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_2

    .line 40
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :goto_0
    throw p1
.end method

.method private static copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 106
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 107
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 109
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zipfile",
            "cpuArch",
            "nativeLibDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 57
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ".so"

    .line 62
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    const/16 v2, 0x2000

    new-array v2, v2, [B

    move-object v5, v2

    const/4 v4, 0x1

    :cond_2
    const/16 v2, 0x2f

    .line 72
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-nez v2, :cond_3

    goto :goto_1

    .line 84
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    invoke-virtual {p0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v5, v6, v2}, Ltop/niunaijun/blackbox/utils/NativeUtils;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    return v3

    :cond_6
    return v4
.end method
