.class Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/pathprovider/PathProviderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiThreadExecutor"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
