.class public Lcom/appinstall/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/appinstall/sdk/b;


# instance fields
.field private final a:Lcom/appinstall/sdk/cg;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/appinstall/sdk/m;

.field private final e:Lcom/appinstall/sdk/aj;

.field private final f:Lcom/appinstall/sdk/au;

.field private final g:Lcom/appinstall/sdk/f;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ab"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/b;->a:Lcom/appinstall/sdk/cg;

    iput-object p1, p0, Lcom/appinstall/sdk/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/appinstall/sdk/b;->h:Ljava/lang/String;

    new-instance p2, Lcom/appinstall/sdk/d;

    invoke-direct {p2}, Lcom/appinstall/sdk/d;-><init>()V

    new-instance v0, Lcom/appinstall/sdk/g;

    invoke-direct {v0}, Lcom/appinstall/sdk/g;-><init>()V

    new-instance v1, Lcom/appinstall/sdk/h;

    invoke-direct {v1}, Lcom/appinstall/sdk/h;-><init>()V

    const-string v2, "FM_config"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/appinstall/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/sdk/h$b;)Ljava/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lcom/appinstall/sdk/f;

    invoke-direct {v2, v1}, Lcom/appinstall/sdk/f;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcom/appinstall/sdk/b;->g:Lcom/appinstall/sdk/f;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CoreHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/appinstall/sdk/m;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, p0, Lcom/appinstall/sdk/b;->g:Lcom/appinstall/sdk/f;

    iget-object v6, p0, Lcom/appinstall/sdk/b;->h:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    move-object v4, p2

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/appinstall/sdk/m;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V

    iput-object v9, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/appinstall/sdk/aj;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, p0, Lcom/appinstall/sdk/b;->g:Lcom/appinstall/sdk/f;

    iget-object v6, p0, Lcom/appinstall/sdk/b;->h:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/appinstall/sdk/aj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V

    iput-object v9, p0, Lcom/appinstall/sdk/b;->e:Lcom/appinstall/sdk/aj;

    new-instance p2, Lcom/appinstall/sdk/au;

    iget-object p3, p0, Lcom/appinstall/sdk/b;->e:Lcom/appinstall/sdk/aj;

    invoke-direct {p2, p1, p3}, Lcom/appinstall/sdk/au;-><init>(Landroid/content/Context;Lcom/appinstall/sdk/aj;)V

    iput-object p2, p0, Lcom/appinstall/sdk/b;->f:Lcom/appinstall/sdk/au;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)Lcom/appinstall/sdk/b;
    .locals 2

    sget-object v0, Lcom/appinstall/sdk/b;->b:Lcom/appinstall/sdk/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/appinstall/sdk/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appinstall/sdk/b;->b:Lcom/appinstall/sdk/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appinstall/sdk/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/appinstall/sdk/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)V

    sput-object v1, Lcom/appinstall/sdk/b;->b:Lcom/appinstall/sdk/b;

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
    sget-object p0, Lcom/appinstall/sdk/b;->b:Lcom/appinstall/sdk/b;

    return-object p0
.end method

.method private a(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 2

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "decodeWakeUp"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v0, p1, p2}, Lcom/appinstall/sdk/m;->a(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "reportRegister"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/b;->f:Lcom/appinstall/sdk/au;

    invoke-virtual {v0}, Lcom/appinstall/sdk/au;->a()V

    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/appinstall/sdk/b;->a(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return-void
.end method

.method public a(Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/appinstall/sdk/b;->a(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return-void
.end method

.method public a(Lcom/appinstall/api/listener/GetUpdateApkListener;)V
    .locals 2

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getOriginalApk"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/api/listener/GetUpdateApkListener;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;ILcom/appinstall/api/listener/AppInstallListener;)V
    .locals 2

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getInstallData"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appinstall/sdk/m;->a(Ljava/lang/Boolean;ILcom/appinstall/api/listener/AppInstallListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "reportEffectPoint"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/b;->f:Lcom/appinstall/sdk/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appinstall/sdk/au;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(ZLjava/lang/ref/WeakReference;)V
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/m;->b(Z)V

    iget-object v0, p0, Lcom/appinstall/sdk/b;->e:Lcom/appinstall/sdk/aj;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/aj;->b(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/appinstall/sdk/b;->g:Lcom/appinstall/sdk/f;

    iget-object v0, p0, Lcom/appinstall/sdk/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appinstall/sdk/f;->a(Ljava/lang/String;)Lcom/appinstall/sdk/e;

    move-result-object p1

    sget-object v0, Lcom/appinstall/sdk/e;->a:Lcom/appinstall/sdk/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/appinstall/sdk/e;->c:Lcom/appinstall/sdk/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/appinstall/sdk/e;->e:Lcom/appinstall/sdk/e;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appinstall/sdk/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/appinstall/sdk/bi;->a(Landroid/content/Context;)Lcom/appinstall/sdk/bi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1}, Lcom/appinstall/sdk/bi;->a()Lcom/appinstall/sdk/bl;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_1
    iget-object p2, p0, Lcom/appinstall/sdk/b;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {p2, p1}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/bl;)V

    return-void
.end method
