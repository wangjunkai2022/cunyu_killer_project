.class public Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;
    }
.end annotation


# static fields
.field private static singleton:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;


# instance fields
.field private mRefCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    return-void
.end method

.method private RefCntDec(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;

    .line 400
    iget v1, v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    .line 401
    iput v1, v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    if-gtz v1, :cond_1

    .line 404
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileLock",
            "randomAccessFile",
            "fileChannel"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object p2, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;

    .line 385
    iget p2, p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 p3, p2, 0x1

    .line 386
    iput p3, p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 390
    iget-object v7, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    new-instance v8, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, v6

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;-><init>(Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    :goto_0
    return p2
.end method

.method public static getInstance()Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;
    .locals 1

    .line 374
    sget-object v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->singleton:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->singleton:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;

    .line 377
    :cond_0
    sget-object v0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->singleton:Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;

    return-object v0
.end method


# virtual methods
.method public LockExclusive(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFile"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 416
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/lock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 420
    :cond_1
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {p1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 426
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p1, v2}, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public unLock(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFile"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/lock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 443
    iget-object p1, p0, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;

    if-eqz p1, :cond_3

    .line 445
    iget-object v1, p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 446
    iget-object v2, p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 447
    iget-object p1, p1, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    .line 449
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/utils/FileUtils$FileLock;->RefCntDec(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    :cond_1
    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 457
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
