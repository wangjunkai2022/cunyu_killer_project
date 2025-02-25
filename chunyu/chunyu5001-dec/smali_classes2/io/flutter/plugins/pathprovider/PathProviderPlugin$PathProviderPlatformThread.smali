.class Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/pathprovider/PathProviderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathProviderPlatformThread"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

.field private final uiThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance p1, Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance p1, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v0, "path-provider-background-%d"

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p1

    const/4 v0, 0x5

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 100
    new-instance v1, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 112
    iget-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;

    invoke-direct {v1, v0, p1}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeInBackground$6(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 115
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getApplicationDocumentsDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 78
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$aSmV_rxQB1wn5pIqo6qTigJTfH4;

    invoke-direct {v0, p0}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$aSmV_rxQB1wn5pIqo6qTigJTfH4;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;)V

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getApplicationSupportDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 95
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dPwrZZXU4pTwG0ZAR5sv9lBeRjQ;

    invoke-direct {v0, p0}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dPwrZZXU4pTwG0ZAR5sv9lBeRjQ;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;)V

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getExternalCacheDirectories(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 86
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$4MPiPxTFI9pHzSREjzIJDihoSpM;

    invoke-direct {v0, p0}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$4MPiPxTFI9pHzSREjzIJDihoSpM;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;)V

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getExternalStorageDirectories(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 91
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getStorageDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 82
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dASIWzFXNADAx_APeKpW1TB5mds;

    invoke-direct {v0, p0}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$dASIWzFXNADAx_APeKpW1TB5mds;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;)V

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public getTemporaryDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 74
    new-instance v0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$ac0USwu71pc6pp3o3hRW8FXw-Mw;

    invoke-direct {v0, p0}, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$ac0USwu71pc6pp3o3hRW8FXw-Mw;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;)V

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public synthetic lambda$getApplicationDocumentsDirectory$1$PathProviderPlugin$PathProviderPlatformThread()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$500(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getApplicationSupportDirectory$5$PathProviderPlugin$PathProviderPlatformThread()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$100(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getExternalCacheDirectories$3$PathProviderPlugin$PathProviderPlatformThread()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$300(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getExternalStorageDirectories$4$PathProviderPlugin$PathProviderPlatformThread(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$200(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getStorageDirectory$2$PathProviderPlugin$PathProviderPlatformThread()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$400(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getTemporaryDirectory$0$PathProviderPlugin$PathProviderPlatformThread()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$600(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
