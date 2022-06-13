.class public final synthetic Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/common/util/concurrent/SettableFuture;

.field private final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P_Xj_9f60BzBDTElRicbndfo_JM;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->lambda$executeInBackground$6(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/Callable;)V

    return-void
.end method
