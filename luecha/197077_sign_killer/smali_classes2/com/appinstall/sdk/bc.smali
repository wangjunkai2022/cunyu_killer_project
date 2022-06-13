.class public Lcom/appinstall/sdk/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/bc$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/CountDownLatch;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/appinstall/sdk/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/appinstall/sdk/bc;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PlayInstallReferrer"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bc;->a:Lcom/appinstall/sdk/cg;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/appinstall/sdk/bc;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/appinstall/sdk/bc;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/appinstall/sdk/bc;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/appinstall/sdk/bc;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/appinstall/sdk/bc;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "PlayInstallReferrer getReferrer : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/appinstall/sdk/bc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.installreferrer.api.InstallReferrerClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newBuilder"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "com.android.installreferrer.api.InstallReferrerClient$Builder"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "build"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appinstall/sdk/bc;->d:Ljava/lang/Object;

    const-string v2, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Lcom/appinstall/sdk/bc$a;

    invoke-direct {v4}, Lcom/appinstall/sdk/bc$a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v2, v5, v0

    invoke-static {p1, v5, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "startConnection"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v2, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/appinstall/sdk/bc;->d:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/appinstall/sdk/bc;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrerClient Connection Failed"

    invoke-static {v0, p1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
