.class public Lcom/appinstall/sdk/bg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/bg$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/LinkedBlockingQueue;


# instance fields
.field private final a:Lcom/appinstall/sdk/cg;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/appinstall/sdk/bg;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oaid"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bg;->a:Lcom/appinstall/sdk/cg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/bg;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    sget-object v0, Lcom/appinstall/sdk/bg;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "InitEntry"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    :goto_0
    :try_start_1
    const-string v3, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_2
    :try_start_2
    const-string v3, "com.bun.supplier.IIdentifierListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_1
    new-instance v4, Lcom/appinstall/sdk/bg$a;

    invoke-direct {v4}, Lcom/appinstall/sdk/bg$a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v3, v6, v1

    invoke-static {v5, v6, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "InitSdk"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v5, v0

    move v6, v1

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ge v6, v7, :cond_2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v2

    aput-object v4, v5, v9

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sget-boolean v8, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MdidSdkHelper InitSdk return value\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v5, Lcom/appinstall/sdk/bg;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v10, 0x1f4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "NULL"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_4

    :cond_1
    iput-object v5, p0, Lcom/appinstall/sdk/bg;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :goto_3
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MdidSdkHelper InitSdk failed : %s"

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_4
    return-void
.end method
