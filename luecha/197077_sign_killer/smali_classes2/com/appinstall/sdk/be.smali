.class public Lcom/appinstall/sdk/be;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/be$c;,
        Lcom/appinstall/sdk/be$b;,
        Lcom/appinstall/sdk/be$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/appinstall/sdk/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GaC"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    sput-object v0, Lcom/appinstall/sdk/be;->a:Lcom/appinstall/sdk/cg;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/appinstall/sdk/be$a;
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "com.android.vending not found"

    invoke-static {v3, v1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/appinstall/sdk/be$b;

    invoke-direct {v1, v2}, Lcom/appinstall/sdk/be$b;-><init>(Lcom/appinstall/sdk/bf;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    new-instance v3, Lcom/appinstall/sdk/be$c;

    invoke-virtual {v1}, Lcom/appinstall/sdk/be$b;->a()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/appinstall/sdk/be$c;-><init>(Landroid/os/IBinder;)V

    new-instance v5, Lcom/appinstall/sdk/be$a;

    invoke-virtual {v3}, Lcom/appinstall/sdk/be$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/appinstall/sdk/be$c;->a(Z)Z

    move-result v3

    invoke-direct {v5, v6, v3}, Lcom/appinstall/sdk/be$a;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    :try_start_2
    sget-boolean v3, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "AdvertisingIdClient get AdInfo failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_3
    sget-boolean p0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p0, :cond_4

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "AdvertisingIdClient bindService failed"

    invoke-static {v0, p0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v2
.end method
