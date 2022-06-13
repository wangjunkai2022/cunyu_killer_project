.class public final synthetic Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;->f$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

    iput-object p2, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;->f$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

    iget-object v1, p0, Lio/flutter/plugins/pathprovider/-$$Lambda$PathProviderPlugin$PathProviderPlatformThread$P8pdKPsXAoXXZM96QAVNY4XtQEk;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->lambda$getExternalStorageDirectories$4$PathProviderPlugin$PathProviderPlatformThread(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
