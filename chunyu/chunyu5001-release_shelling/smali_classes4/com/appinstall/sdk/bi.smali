.class public Lcom/appinstall/sdk/bi;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/appinstall/sdk/bi;


# instance fields
.field private final a:Lcom/appinstall/sdk/cg;

.field private final c:Z

.field private d:Lcom/appinstall/sdk/bm;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Landroid/app/Application;

.field private i:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CU"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bi;->a:Lcom/appinstall/sdk/cg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appinstall/sdk/bi;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/bi;->g:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/appinstall/sdk/bk;

    invoke-direct {v0, p0}, Lcom/appinstall/sdk/bk;-><init>(Lcom/appinstall/sdk/bi;)V

    iput-object v0, p0, Lcom/appinstall/sdk/bi;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/appinstall/sdk/ch;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appinstall/sdk/bi;->c:Z

    iget-boolean v0, p0, Lcom/appinstall/sdk/bi;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appinstall/sdk/bm;

    invoke-direct {v0, p1}, Lcom/appinstall/sdk/bm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ClearHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/appinstall/sdk/bi;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appinstall/sdk/bi;->h:Landroid/app/Application;

    new-instance p1, Lcom/appinstall/sdk/bj;

    invoke-direct {p1, p0}, Lcom/appinstall/sdk/bj;-><init>(Lcom/appinstall/sdk/bi;)V

    iput-object p1, p0, Lcom/appinstall/sdk/bi;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object p1, p0, Lcom/appinstall/sdk/bi;->h:Landroid/app/Application;

    iget-object v0, p0, Lcom/appinstall/sdk/bi;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "pb disabled"

    invoke-static {v0, p1}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/appinstall/sdk/bi;
    .locals 2

    sget-object v0, Lcom/appinstall/sdk/bi;->b:Lcom/appinstall/sdk/bi;

    if-nez v0, :cond_1

    const-class v0, Lcom/appinstall/sdk/bi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appinstall/sdk/bi;->b:Lcom/appinstall/sdk/bi;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appinstall/sdk/bi;

    invoke-direct {v1, p0}, Lcom/appinstall/sdk/bi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appinstall/sdk/bi;->b:Lcom/appinstall/sdk/bi;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/appinstall/sdk/bi;->b:Lcom/appinstall/sdk/bi;

    return-object p0
.end method

.method static synthetic a(Lcom/appinstall/sdk/bi;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/bi;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/appinstall/sdk/bi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bi;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/appinstall/sdk/bi;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/bi;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/appinstall/sdk/bl;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/bi;->b(Z)Lcom/appinstall/sdk/bl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/appinstall/sdk/bi;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s access"

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    invoke-virtual {p1}, Lcom/appinstall/sdk/bm;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/appinstall/sdk/bi;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s release"

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    invoke-virtual {p1, p2}, Lcom/appinstall/sdk/bm;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/bm;->a(Ljava/lang/ref/WeakReference;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appinstall/sdk/bi;->f:Z

    return-void
.end method

.method public b(Z)Lcom/appinstall/sdk/bl;
    .locals 5

    iget-boolean v0, p0, Lcom/appinstall/sdk/bi;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/bm;->a(Z)Lcom/appinstall/sdk/bl;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_1
    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "data type is %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/bl;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/bi;->h:Landroid/app/Application;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/bi;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/bi;->h:Landroid/app/Application;

    iget-object v2, p0, Lcom/appinstall/sdk/bi;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/appinstall/sdk/bi;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_1
    iget-object v0, p0, Lcom/appinstall/sdk/bi;->e:Landroid/os/Handler;

    new-instance v1, Lcom/appinstall/sdk/bh;

    iget-object v2, p0, Lcom/appinstall/sdk/bi;->d:Lcom/appinstall/sdk/bm;

    invoke-direct {v1, v2, p1}, Lcom/appinstall/sdk/bh;-><init>(Lcom/appinstall/sdk/bm;Lcom/appinstall/sdk/bl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "data is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v1

    :catch_1
    :cond_3
    :goto_0
    return-object p1

    :cond_4
    return-object v1
.end method
