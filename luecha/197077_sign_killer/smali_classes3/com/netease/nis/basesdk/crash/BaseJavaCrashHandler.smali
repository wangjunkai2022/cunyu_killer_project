.class public abstract Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;
.super Ljava/lang/Object;
.source "BaseJavaCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static c:Ljava/lang/String; = "https://da.dun.163.com/sn.gif?d="


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/netease/nis/basesdk/crash/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/a;
    .locals 3

    .line 20
    new-instance v0, Lcom/netease/nis/basesdk/crash/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$a;

    invoke-direct {v1, p0, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$a;-><init>(Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/netease/nis/basesdk/crash/a;-><init>(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;)Lcom/netease/nis/basesdk/crash/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    return-object p0
.end method

.method private a()V
    .locals 11

    const-string v0, "check and report crash info"

    .line 2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    invoke-virtual {v0}, Lcom/netease/nis/basesdk/crash/b;->b()[Ljava/io/File;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-lez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide/16 v5, 0x5

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 15
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 17
    :try_start_0
    iget-object v5, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/nis/basesdk/crash/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/a;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "BaseJavaCrashHandler"

    const-string v5, "logInfo encode error"

    .line 19
    invoke-static {v4, v5}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->buildCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    invoke-virtual {p2, p1}, Lcom/netease/nis/basesdk/crash/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BaseJavaCrashHandler"

    const-string p2, "logInfo encode error"

    .line 26
    invoke-static {p1, p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setUploadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract buildCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    invoke-static {}, Lcom/netease/nis/basesdk/crash/b;->a()Lcom/netease/nis/basesdk/crash/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/b;->b(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a()V

    return-void
.end method

.method protected interceptHandleException(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected report(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Lcom/netease/nis/basesdk/crash/b;

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {p0, v0, p1}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/a;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0xbb8

    .line 7
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "quick upload isInterrupted"

    .line 10
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public testCrash()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "test java exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->interceptHandleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 8
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
