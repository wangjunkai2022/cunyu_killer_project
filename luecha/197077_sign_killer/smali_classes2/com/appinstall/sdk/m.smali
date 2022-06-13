.class public Lcom/appinstall/sdk/m;
.super Lcom/appinstall/sdk/ah;


# instance fields
.field private final m:Lcom/appinstall/sdk/cg;

.field private final n:Lcom/appinstall/sdk/bg;

.field private final o:Lcom/appinstall/sdk/bc;

.field private final p:Lcom/appinstall/sdk/bd;

.field private final q:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final r:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final s:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/appinstall/sdk/ah;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V

    const-string p2, "Co"

    invoke-static {p2}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object p2

    iput-object p2, p0, Lcom/appinstall/sdk/m;->m:Lcom/appinstall/sdk/cg;

    new-instance p2, Lcom/appinstall/sdk/bc;

    invoke-direct {p2}, Lcom/appinstall/sdk/bc;-><init>()V

    iput-object p2, p0, Lcom/appinstall/sdk/m;->o:Lcom/appinstall/sdk/bc;

    new-instance p2, Lcom/appinstall/sdk/bg;

    invoke-direct {p2}, Lcom/appinstall/sdk/bg;-><init>()V

    iput-object p2, p0, Lcom/appinstall/sdk/m;->n:Lcom/appinstall/sdk/bg;

    new-instance p2, Lcom/appinstall/sdk/bd;

    invoke-direct {p2, p1}, Lcom/appinstall/sdk/bd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appinstall/sdk/m;->p:Lcom/appinstall/sdk/bd;

    invoke-direct {p0}, Lcom/appinstall/sdk/m;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/appinstall/sdk/m;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/appinstall/sdk/m;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/appinstall/sdk/m;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/appinstall/sdk/m;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/appinstall/sdk/m;Ljava/lang/String;)Lcom/appinstall/api/model/AppData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/m;->b(Ljava/lang/String;)Lcom/appinstall/api/model/AppData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private a(ZILcom/appinstall/api/listener/AppInstallListener;)V
    .locals 1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    :goto_0
    new-instance v0, Lcom/appinstall/sdk/ag;

    invoke-direct {v0, p0, p2, p1}, Lcom/appinstall/sdk/ag;-><init>(Lcom/appinstall/sdk/m;IZ)V

    new-instance p1, Lcom/appinstall/sdk/o;

    invoke-direct {p1, p0, p3}, Lcom/appinstall/sdk/o;-><init>(Lcom/appinstall/sdk/m;Lcom/appinstall/api/listener/AppInstallListener;)V

    new-instance p2, Lcom/appinstall/sdk/al;

    iget-object p3, p0, Lcom/appinstall/sdk/m;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p2, p3, v0, p1}, Lcom/appinstall/sdk/al;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/appinstall/sdk/j;Lcom/appinstall/sdk/ak;)V

    iget-object p1, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/appinstall/api/model/AppData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/appinstall/api/model/AppData;

    invoke-direct {v0}, Lcom/appinstall/api/model/AppData;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "c"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appinstall/api/model/AppData;->setChannel(Ljava/lang/String;)V

    :cond_1
    const-string p1, "d"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appinstall/api/model/AppData;->setData(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bc;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/m;->o:Lcom/appinstall/sdk/bc;

    return-object p0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/appinstall/sdk/p;

    const/16 v1, 0x258

    invoke-direct {v0, p0, v1, p1}, Lcom/appinstall/sdk/p;-><init>(Lcom/appinstall/sdk/m;ILandroid/net/Uri;)V

    iget-object p1, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 2

    new-instance v0, Lcom/appinstall/sdk/ad;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, p1}, Lcom/appinstall/sdk/ad;-><init>(Lcom/appinstall/sdk/m;ILandroid/net/Uri;)V

    new-instance v1, Lcom/appinstall/sdk/af;

    invoke-direct {v1, p0, p2, p1}, Lcom/appinstall/sdk/af;-><init>(Lcom/appinstall/sdk/m;Lcom/appinstall/api/listener/AppWakeUpListener;Landroid/net/Uri;)V

    new-instance p1, Lcom/appinstall/sdk/al;

    iget-object p2, p0, Lcom/appinstall/sdk/m;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p1, p2, v0, v1}, Lcom/appinstall/sdk/al;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/appinstall/sdk/j;Lcom/appinstall/sdk/ak;)V

    iget-object p2, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/appinstall/api/listener/GetUpdateApkListener;)V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appinstall/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appinstall/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appinstall/sdk/r;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/appinstall/sdk/r;-><init>(Lcom/appinstall/sdk/m;Ljava/lang/String;Ljava/lang/String;Lcom/appinstall/api/listener/GetUpdateApkListener;)V

    iget-object p1, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/appinstall/sdk/bl;)V
    .locals 1

    new-instance v0, Lcom/appinstall/sdk/w;

    invoke-direct {v0, p0, p1}, Lcom/appinstall/sdk/w;-><init>(Lcom/appinstall/sdk/m;Lcom/appinstall/sdk/bl;)V

    iget-object p1, p0, Lcom/appinstall/sdk/m;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bd;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/m;->p:Lcom/appinstall/sdk/bd;

    return-object p0
.end method

.method static synthetic d(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bg;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/m;->n:Lcom/appinstall/sdk/bg;

    return-object p0
.end method

.method private d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/appinstall/sdk/n;

    invoke-direct {v7, p0}, Lcom/appinstall/sdk/n;-><init>(Lcom/appinstall/sdk/m;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v8
.end method

.method private e()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/appinstall/sdk/s;

    invoke-direct {v7, p0}, Lcom/appinstall/sdk/s;-><init>(Lcom/appinstall/sdk/m;)V

    new-instance v8, Lcom/appinstall/sdk/t;

    invoke-direct {v8, p0}, Lcom/appinstall/sdk/t;-><init>(Lcom/appinstall/sdk/m;)V

    const/4 v1, 0x3

    const/16 v2, 0xa

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v9
.end method

.method static synthetic e(Lcom/appinstall/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/appinstall/sdk/m;->g()V

    return-void
.end method

.method private f()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/appinstall/sdk/u;

    invoke-direct {v7, p0}, Lcom/appinstall/sdk/u;-><init>(Lcom/appinstall/sdk/m;)V

    new-instance v8, Lcom/appinstall/sdk/v;

    invoke-direct {v8, p0}, Lcom/appinstall/sdk/v;-><init>(Lcom/appinstall/sdk/m;)V

    const/4 v1, 0x3

    const/16 v2, 0xa

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v9
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/m;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/m;->j:Lcom/appinstall/sdk/ba;

    iget-object v1, p0, Lcom/appinstall/sdk/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/m;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "opid = %s"

    invoke-static {v0, v1}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Lcom/appinstall/sdk/q;

    const/16 v1, 0x258

    invoke-direct {v0, p0, v1}, Lcom/appinstall/sdk/q;-><init>(Lcom/appinstall/sdk/m;I)V

    iget-object v1, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/m;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/m;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_1
    invoke-super {p0}, Lcom/appinstall/sdk/ah;->a()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appinstall/sdk/bl;

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/m;->b(Lcom/appinstall/sdk/bl;)V

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appinstall/api/listener/AppWakeUpListener;

    invoke-direct {p0, v0, p1}, Lcom/appinstall/sdk/m;->b(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/api/listener/AppInstallListener;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lcom/appinstall/sdk/m;->a(ZILcom/appinstall/api/listener/AppInstallListener;)V

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/m;->b(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/appinstall/sdk/m;->h()V

    goto :goto_1

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appinstall/api/listener/GetUpdateApkListener;

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/m;->b(Lcom/appinstall/api/listener/GetUpdateApkListener;)V

    goto :goto_1

    :cond_6
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/appinstall/sdk/m;->a()V

    :cond_7
    :goto_1
    return-void
.end method
