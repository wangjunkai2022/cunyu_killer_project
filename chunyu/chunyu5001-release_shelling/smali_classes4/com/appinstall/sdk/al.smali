.class public Lcom/appinstall/sdk/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Lcom/appinstall/sdk/j;

.field private final c:Lcom/appinstall/sdk/ak;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/appinstall/sdk/j;Lcom/appinstall/sdk/ak;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appinstall/sdk/al;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/appinstall/sdk/al;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p2, p0, Lcom/appinstall/sdk/al;->b:Lcom/appinstall/sdk/j;

    iput-object p3, p0, Lcom/appinstall/sdk/al;->c:Lcom/appinstall/sdk/ak;

    return-void
.end method

.method static synthetic a(Lcom/appinstall/sdk/al;)Lcom/appinstall/sdk/ak;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/al;->c:Lcom/appinstall/sdk/ak;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/appinstall/sdk/al;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/appinstall/sdk/al;->b:Lcom/appinstall/sdk/j;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/appinstall/sdk/al;->b:Lcom/appinstall/sdk/j;

    invoke-virtual {v1}, Lcom/appinstall/sdk/j;->b()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/sdk/by;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v2, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bf7\u6c42\u5f02\u5e38 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v0, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    const/4 v2, -0x4

    invoke-direct {v1, v0, v2}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    const-string/jumbo v0, "\u8bf7\u6c42\u8d85\u65f6"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/appinstall/sdk/al;->d:Landroid/os/Handler;

    new-instance v2, Lcom/appinstall/sdk/am;

    invoke-direct {v2, p0, v1}, Lcom/appinstall/sdk/am;-><init>(Lcom/appinstall/sdk/al;Lcom/appinstall/sdk/by;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
