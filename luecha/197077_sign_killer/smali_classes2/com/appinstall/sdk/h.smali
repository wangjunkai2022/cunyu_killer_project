.class public Lcom/appinstall/sdk/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/h$a;,
        Lcom/appinstall/sdk/h$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/sdk/h$b;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/appinstall/sdk/h$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/appinstall/sdk/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/sdk/h$b;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcom/appinstall/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
