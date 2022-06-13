.class public Ltop/niunaijun/blackbox/core/VMCore;
.super Ljava/lang/Object;
.source "VMCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VMCoreJava"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "blackdex"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addIORule(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetPath",
            "relocatePath"
        }
    .end annotation
.end method

.method private static native cookieDumpDex(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cookie",
            "dir",
            "fixMethod"
        }
    .end annotation
.end method

.method public static cookieDumpDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "packageName"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 56
    invoke-static/range {p0 .. p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getCookies(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v8

    .line 57
    new-instance v9, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v10, Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    invoke-direct {v10}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;-><init>()V

    .line 60
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    .line 61
    iput-object v0, v10, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v11, 0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 64
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 65
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 67
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    const/4 v7, 0x0

    .line 68
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 69
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 72
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    move/from16 v16, v7

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v9}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 76
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v11, :cond_2

    const-wide/16 v3, 0x1f4

    .line 78
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_2
    new-instance v6, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;

    move-object v0, v6

    move-object v3, v9

    move-object v4, v10

    move-object v5, v8

    move-object v11, v6

    move-object v6, v14

    move/from16 v16, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;-><init>(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v12, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v7, v16, 0x1

    const/4 v11, 0x1

    goto :goto_0

    .line 89
    :cond_3
    :try_start_1
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 92
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 94
    array-length v1, v0

    :goto_3
    if-ge v15, v1, :cond_5

    aget-object v2, v0, v15

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/DexUtils;->fixDex(Ljava/io/File;)V

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static native enableIO()V
.end method

.method public static findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName",
            "signature"
        }
    .end annotation

    :try_start_0
    const-string v0, "/"

    const-string v1, "."

    .line 144
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "L"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ";"

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 152
    invoke-static {p0, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "<init>"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 155
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 156
    invoke-static {v4}, Ltop/niunaijun/jnihook/MethodUtils;->getDesc(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 166
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    invoke-static {v4}, Ltop/niunaijun/jnihook/MethodUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    :catchall_0
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 177
    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v1, p0, v2

    .line 178
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    invoke-static {v1}, Ltop/niunaijun/jnihook/MethodUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_1
    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallingUid(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origCallingUid"
        }
    .end annotation

    return p0
.end method

.method public static native hideXposed()V
.end method

.method private static native hookDumpDex(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation
.end method

.method public static native init(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiLevel"
        }
    .end annotation
.end method

.method static synthetic lambda$cookieDumpDex$0(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "cookie",
            "file",
            "result",
            "cookies",
            "atomicInteger",
            "countDownLatch"
        }
    .end annotation

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isFixCodeItem()Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/VMCore;->cookieDumpDex(JLjava/lang/String;Z)V

    .line 84
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object p0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    .line 85
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static loadEmptyDex()[J
    .locals 6

    const/4 v0, 0x0

    .line 128
    :try_start_0
    new-instance v1, Ldalvik/system/DexFile;

    sget-object v2, Ltop/niunaijun/blackbox/core/env/BEnvironment;->EMPTY_JAR:Ljava/io/File;

    invoke-direct {v1, v2}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 129
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 132
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v0, [J

    return-object v0
.end method

.method public static redirectPath(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 122
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 117
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
