.class public abstract Lcom/appinstall/sdk/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/sdk/bb;


# instance fields
.field protected a:Landroid/content/Context;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/ax;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appinstall/sdk/ax;->c:Z

    iput-object p1, p0, Lcom/appinstall/sdk/ax;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appinstall/sdk/ax;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appinstall/sdk/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/appinstall/sdk/ax;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/appinstall/sdk/ax;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/ax;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/appinstall/sdk/ax;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appinstall/sdk/ax;->c:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appinstall/sdk/ax;->c:Z

    :goto_0
    iput-object p2, p0, Lcom/appinstall/sdk/ax;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract b(Ljava/lang/String;Ljava/lang/String;)Z
.end method
