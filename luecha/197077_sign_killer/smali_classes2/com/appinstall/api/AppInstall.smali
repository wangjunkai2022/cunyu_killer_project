.class public final Lcom/appinstall/api/AppInstall;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/appinstall/sdk/b;

.field private static volatile b:Z

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/Runnable;

.field private static e:Lcom/appinstall/api/Configuration;

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appinstall/api/AppInstall;->init(Landroid/content/Context;Lcom/appinstall/api/Configuration;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    sput-object p0, Lcom/appinstall/api/AppInstall;->d:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 3

    sget-boolean v0, Lcom/appinstall/api/AppInstall;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "\u8bf7\u5148\u8c03\u7528 init(Context) \u521d\u59cb\u5316"

    invoke-static {v2, v0}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    sget-object p1, Lcom/appinstall/sdk/ce;->y:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/appinstall/sdk/ce;->z:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    :goto_0
    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_5

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "\u5e94\u7528\u5b9d\u5524\u9192\uff1a\u542f\u7528\u4e86\"\u96c6\u6210\u5e94\u7528\u5b9d\""

    invoke-static {v1, p1}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move p1, v2

    :goto_1
    sget-object v1, Lcom/appinstall/sdk/ce;->A:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/appinstall/sdk/ce;->B:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/appinstall/sdk/ce;->C:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_6
    sget-boolean p0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p0, :cond_7

    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "\u5e94\u7528\u5b9d\u5524\u9192\uff1a\u5916\u90e8\u5730\u5740\u586b\u5199\u4e86\u5e94\u7528\u5b9d\u5730\u5740"

    invoke-static {p1, p0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move p1, v2

    goto :goto_2

    :cond_8
    move p1, v0

    :cond_9
    :goto_2
    return p1

    :cond_a
    :goto_3
    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appinstall/sdk/bu;->c()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getInstall(Lcom/appinstall/api/listener/AppInstallListener;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/appinstall/api/AppInstall;->getInstall(Lcom/appinstall/api/listener/AppInstallListener;I)V

    return-void
.end method

.method public static getInstall(Lcom/appinstall/api/listener/AppInstallListener;I)V
    .locals 3

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/appinstall/api/listener/AppInstallListener;->onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "getInstall\u8bbe\u7f6e\u8d85\u65f6\u65f6\u95f4\u8fc7\u5c0f\uff0c\u6613\u9020\u6210\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u589e\u5927\u8d85\u65f6\u65f6\u95f4\u6216\u8c03\u6574\u8c03\u7528\u65f6\u673a"

    invoke-static {v2, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/appinstall/sdk/b;->a(Ljava/lang/Boolean;ILcom/appinstall/api/listener/AppInstallListener;)V

    return-void
.end method

.method public static getInstallCanRetry(Lcom/appinstall/api/listener/AppInstallRetryAdapter;I)V
    .locals 2

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/appinstall/api/model/Error;

    const/4 v0, -0x4

    const-string/jumbo v1, "\u672a\u8c03\u7528\u521d\u59cb\u5316"

    invoke-direct {p1, v0, v1}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/appinstall/api/listener/AppInstallRetryAdapter;->onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/appinstall/sdk/b;->a(Ljava/lang/Boolean;ILcom/appinstall/api/listener/AppInstallListener;)V

    return-void
.end method

.method public static getUpdateApk(Lcom/appinstall/api/listener/GetUpdateApkListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/appinstall/api/listener/GetUpdateApkListener;->onGetFinish(Ljava/io/File;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/b;->a(Lcom/appinstall/api/listener/GetUpdateApkListener;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.1"

    return-object v0
.end method

.method public static getWakeUp(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)Z
    .locals 2

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {v0, p0, p1}, Lcom/appinstall/sdk/b;->a(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static getWakeUpAlwaysCallback(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 3

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/appinstall/api/model/Error;

    const/4 v0, -0x8

    const-string/jumbo v2, "\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v0, v2}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1, p0}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {v0, p0, p1}, Lcom/appinstall/sdk/b;->a(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/appinstall/api/model/Error;

    const/4 v0, -0x7

    const-string v2, "data \u4e0d\u5339\u914d"

    invoke-direct {p0, v0, v2}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1, p0}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    :goto_0
    return-void
.end method

.method public static getWakeUpYYB(Landroid/app/Activity;Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)Z
    .locals 3

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {p0, p1, p2}, Lcom/appinstall/sdk/b;->a(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/appinstall/api/AppInstall;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {p0, p2}, Lcom/appinstall/sdk/b;->a(Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return v2

    :cond_2
    return v1
.end method

.method public static getWakeUpYYBAlwaysCallback(Landroid/app/Activity;Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 2

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/appinstall/api/model/Error;

    const/4 p1, -0x8

    const-string/jumbo v0, "\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, p1, v0}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, p0}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {p0, p1, p2}, Lcom/appinstall/sdk/b;->a(Landroid/content/Intent;Lcom/appinstall/api/listener/AppWakeUpListener;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/appinstall/api/AppInstall;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {p0, p2}, Lcom/appinstall/sdk/b;->a(Lcom/appinstall/api/listener/AppWakeUpListener;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/appinstall/api/model/Error;

    const/4 p1, -0x7

    const-string v0, "data \u4e0d\u5339\u914d"

    invoke-direct {p0, p1, v0}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, p0}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/appinstall/api/Configuration;->getDefault()Lcom/appinstall/api/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appinstall/api/AppInstall;->init(Landroid/content/Context;Lcom/appinstall/api/Configuration;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/appinstall/api/Configuration;)V
    .locals 2

    invoke-static {p0}, Lcom/appinstall/sdk/ch;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/appinstall/api/AppInstall;->init(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "\u8bf7\u5728AndroidManifest.xml\u4e2d\u914d\u7f6eAppInstall\u63d0\u4f9b\u7684AppKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/appinstall/api/Configuration;->getDefault()Lcom/appinstall/api/Configuration;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/appinstall/api/AppInstall;->init(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)V
    .locals 4

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK Version : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appinstall/api/AppInstall;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "\u591a\u4e2a\u8fdb\u7a0b\u8c03\u7528init\uff0c\u5c06\u5bfc\u81f4\u83b7\u53d6\u53c2\u6570\u5931\u8d25\uff0c\u7edf\u8ba1\u6570\u636e\u5f02\u5e38"

    invoke-static {v2, v1}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/appinstall/api/AppInstall;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/appinstall/sdk/ch;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/appinstall/api/AppInstall;->f:Ljava/lang/Boolean;

    :cond_3
    if-nez p2, :cond_4

    invoke-static {}, Lcom/appinstall/api/Configuration;->getDefault()Lcom/appinstall/api/Configuration;

    move-result-object p2

    :cond_4
    const-class v1, Lcom/appinstall/api/AppInstall;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/appinstall/api/AppInstall;->b:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    if-nez v2, :cond_5

    invoke-static {p0, p1, p2}, Lcom/appinstall/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appinstall/api/Configuration;)Lcom/appinstall/sdk/b;

    move-result-object p0

    sput-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    sget-object p0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    sget-object p1, Lcom/appinstall/api/AppInstall;->f:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/appinstall/sdk/b;->a(ZLjava/lang/ref/WeakReference;)V

    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/appinstall/api/AppInstall;->b:Z

    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "\u8bf7\u524d\u5f80AppInstall\u63a7\u5236\u53f0\u7684 \u201cAndroid\u96c6\u6210\u201d -> \u201cAndroid\u5e94\u7528\u914d\u7f6e\u201d \u4e2d\u83b7\u53d6AppKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initWithPermission(Landroid/app/Activity;Lcom/appinstall/api/Configuration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/appinstall/api/AppInstall;->initWithPermission(Landroid/app/Activity;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initWithPermission(Landroid/app/Activity;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initWithPermission \u65b9\u6cd5\u5728\u540e\u7eed\u7248\u672c\u4e2d\u5c06\u88ab\u79fb\u9664\uff0c\u8bf7\u81ea\u884c\u8fdb\u884c\u6743\u9650\u7533\u8bf7"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/appinstall/sdk/ci;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3db

    invoke-static {p0, v0, v1}, Lcom/appinstall/sdk/ci;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/appinstall/api/AppInstall;->c:Landroid/content/Context;

    sput-object p2, Lcom/appinstall/api/AppInstall;->d:Ljava/lang/Runnable;

    sput-object p1, Lcom/appinstall/api/AppInstall;->e:Lcom/appinstall/api/Configuration;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Context;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    sget-object p1, Lcom/appinstall/api/AppInstall;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/16 p2, 0x3db

    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/appinstall/api/AppInstall;->e:Lcom/appinstall/api/Configuration;

    sget-object p2, Lcom/appinstall/api/AppInstall;->d:Ljava/lang/Runnable;

    invoke-static {p1, p0, p2}, Lcom/appinstall/api/AppInstall;->a(Landroid/content/Context;Lcom/appinstall/api/Configuration;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static reportEffectPoint(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/appinstall/sdk/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static reportRegister()V
    .locals 1

    invoke-static {}, Lcom/appinstall/api/AppInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/appinstall/api/AppInstall;->a:Lcom/appinstall/sdk/b;

    invoke-virtual {v0}, Lcom/appinstall/sdk/b;->a()V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/appinstall/sdk/cf;->a:Z

    return-void
.end method

.method public static setEncrypt(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/appinstall/api/AppInstall;->f:Ljava/lang/Boolean;

    return-void
.end method
