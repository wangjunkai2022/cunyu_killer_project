.class public Lcom/appinstall/sdk/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final b:Lcom/appinstall/sdk/cg;

.field private volatile c:Z

.field private final d:Ljava/lang/Thread;

.field private final e:Landroid/app/Application;

.field private f:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final g:Lcom/appinstall/sdk/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appinstall/sdk/aj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appinstall/sdk/au;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v0, "ECl"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/au;->b:Lcom/appinstall/sdk/cg;

    iput-boolean v1, p0, Lcom/appinstall/sdk/au;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appinstall/sdk/au;->e:Landroid/app/Application;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/appinstall/sdk/av;

    invoke-direct {v0, p0}, Lcom/appinstall/sdk/av;-><init>(Lcom/appinstall/sdk/au;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/appinstall/sdk/au;->d:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/appinstall/sdk/au;->d:Ljava/lang/Thread;

    const-string v0, "EVENT-L"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appinstall/sdk/au;->g:Lcom/appinstall/sdk/aj;

    invoke-direct {p0}, Lcom/appinstall/sdk/au;->b()V

    return-void
.end method

.method static synthetic a(Lcom/appinstall/sdk/au;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appinstall/sdk/au;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/appinstall/sdk/au;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/au;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appinstall/sdk/au;->c:Z

    iget-object v0, p0, Lcom/appinstall/sdk/au;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/appinstall/sdk/au;->c()V

    return-void
.end method

.method static synthetic c(Lcom/appinstall/sdk/au;)Lcom/appinstall/sdk/aj;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/au;->g:Lcom/appinstall/sdk/aj;

    return-object p0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/appinstall/sdk/aw;

    invoke-direct {v0, p0}, Lcom/appinstall/sdk/aw;-><init>(Lcom/appinstall/sdk/au;)V

    iput-object v0, p0, Lcom/appinstall/sdk/au;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v0, p0, Lcom/appinstall/sdk/au;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/appinstall/sdk/au;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/appinstall/sdk/aq;->a()Lcom/appinstall/sdk/aq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/aq;->a(Z)V

    iget-object v1, p0, Lcom/appinstall/sdk/au;->g:Lcom/appinstall/sdk/aj;

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/aj;->a(Lcom/appinstall/sdk/aq;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Lcom/appinstall/sdk/aq;->a(J)Lcom/appinstall/sdk/aq;

    move-result-object p1

    iget-object p2, p0, Lcom/appinstall/sdk/au;->g:Lcom/appinstall/sdk/aj;

    invoke-virtual {p2, p1}, Lcom/appinstall/sdk/aj;->a(Lcom/appinstall/sdk/aq;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/appinstall/sdk/aq;->a(Ljava/lang/String;J)Lcom/appinstall/sdk/aq;

    move-result-object p1

    iget-object p2, p0, Lcom/appinstall/sdk/au;->g:Lcom/appinstall/sdk/aj;

    invoke-virtual {p2, p1}, Lcom/appinstall/sdk/aj;->a(Lcom/appinstall/sdk/aq;)V

    :cond_0
    return-void
.end method
