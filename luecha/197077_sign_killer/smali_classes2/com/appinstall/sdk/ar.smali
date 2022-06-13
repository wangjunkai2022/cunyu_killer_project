.class public abstract Lcom/appinstall/sdk/ar;
.super Lcom/appinstall/sdk/a;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private final b:Landroid/os/Handler;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/appinstall/sdk/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appinstall/sdk/ar;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appinstall/sdk/ar;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appinstall/sdk/ar;->d:Z

    iput-boolean v1, p0, Lcom/appinstall/sdk/ar;->c:Z

    iput-boolean v0, p0, Lcom/appinstall/sdk/ar;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/appinstall/sdk/ar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appinstall/sdk/ar;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/appinstall/sdk/ar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appinstall/sdk/ar;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/appinstall/sdk/ar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appinstall/sdk/ar;->d:Z

    return p0
.end method


# virtual methods
.method public abstract a(J)V
.end method

.method public abstract b(J)V
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/appinstall/sdk/a;->onActivityPaused(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appinstall/sdk/ar;->d:Z

    iget-object p1, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/ar;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Lcom/appinstall/sdk/as;

    invoke-direct {p1, p0}, Lcom/appinstall/sdk/as;-><init>(Lcom/appinstall/sdk/ar;)V

    iput-object p1, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/appinstall/sdk/ar;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appinstall/sdk/a;->onActivityResumed(Landroid/app/Activity;)V

    iget-boolean p1, p0, Lcom/appinstall/sdk/ar;->c:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lcom/appinstall/sdk/ar;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appinstall/sdk/ar;->d:Z

    iget-object v0, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appinstall/sdk/ar;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/ar;->a:Ljava/lang/Runnable;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appinstall/sdk/ar;->a(J)V

    :cond_1
    return-void
.end method
