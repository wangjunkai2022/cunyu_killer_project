.class public Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
.super Ljava/lang/Object;
.source "BPackageManager.java"


# static fields
.field private static final sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;


# instance fields
.field private mService:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private crash(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
    .locals 1

    .line 36
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->sPackageManager:Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    return-object v0
.end method

.method private getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
    .locals 2

    .line 252
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->mService:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->mService:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    return-object v0

    .line 255
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->mService:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    .line 256
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 143
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0, v0, v3, v2, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 51
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v0, v3, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentName",
            "flags",
            "userId"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "option",
            "userId"
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 190
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 170
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "uid",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 181
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 163
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 82
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "flags",
            "userId"
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 73
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->crash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 215
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getService()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
