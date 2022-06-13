.class public Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
.super Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;
.source "BPackageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "BPackageManagerService"

.field public static sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

.field private static final sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;


# instance fields
.field private final mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

.field final mInstallLock:Ljava/lang/Object;

.field private final mPackageMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    .line 57
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;-><init>()V

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 60
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    return-void
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 2
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
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 172
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 174
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    if-le p1, p3, :cond_2

    .line 178
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 179
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 182
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, p3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean p3, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p1, p3, :cond_2

    .line 185
    :cond_1
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defProcessName",
            "processName"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;
    .locals 1

    .line 64
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    return-object v0
.end method

.method private getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
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

    .line 230
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 231
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 235
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_0

    .line 236
    monitor-exit v0

    return-object v2

    .line 237
    :cond_0
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 239
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getInstalledApplicationsListInternal(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId",
            "callingUid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 363
    sget-object p3, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {p3, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 366
    :cond_0
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p3

    .line 368
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 370
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 377
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 378
    invoke-virtual {v2, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v2

    .line 377
    invoke-static {v3, p1, v2, p2}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_2
    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p1

    .line 384
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private installPackageAsUserLocked(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 7
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

    .line 586
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 589
    :try_start_0
    sget-object v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v3, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    invoke-virtual {v3, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    .line 592
    :cond_0
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 594
    :try_start_1
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 595
    invoke-static {p1, v3}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2

    .line 597
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v2, v3

    .line 600
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/AbiUtils;->isSupport(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 602
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->is64Bit()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "not support armeabi-v7a abi"

    goto :goto_1

    :cond_2
    const-string p1, "not support arm64-v8a abi"

    :goto_1
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_3

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    :cond_3
    return-object p1

    .line 605
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "parser apk error."

    .line 607
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_5

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    :cond_5
    return-object p1

    .line 609
    :cond_6
    :try_start_4
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    .line 611
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object v3

    .line 612
    iput-object p2, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 615
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v4

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->killPackageAsUser(Ljava/lang/String;I)V

    .line 617
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object p1

    invoke-virtual {p1, v3, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I

    move-result p1

    if-gez p1, :cond_8

    const-string p1, "install apk error."

    .line 619
    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    :cond_7
    return-object p1

    .line 621
    :cond_8
    :try_start_5
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x1

    .line 622
    :try_start_6
    invoke-virtual {v3, v4, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->setInstalled(ZI)V

    .line 623
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    .line 624
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 625
    :try_start_7
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {p1, v4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 626
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    .line 627
    iget-object p1, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageInstalled(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_9

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    :cond_9
    return-object v0

    :catchall_1
    move-exception p3

    .line 624
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 630
    :goto_2
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v2, :cond_a

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    :cond_a
    return-object v0

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_b

    .line 632
    invoke-virtual {p2, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 633
    invoke-static {v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 635
    :cond_b
    throw p1
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 641
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;

    move-result-object v0

    .line 642
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 643
    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 646
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-direct {p0, v1, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 212
    iput-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 219
    :cond_1
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    if-eqz v0, :cond_2

    .line 221
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 223
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 223
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    move-object v2, p1

    if-eqz v0, :cond_2

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    invoke-virtual {p0, v0, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 126
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 127
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 128
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 134
    :cond_2
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 135
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    .line 137
    monitor-exit p1

    return-object p2

    .line 139
    :cond_3
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 142
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v5, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 145
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 146
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private updateFlags(II)I
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

    const/high16 p2, 0xc0000

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr p1, p2

    :goto_0
    return p1
.end method


# virtual methods
.method public addPackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteUser(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 552
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V

    goto :goto_0

    .line 554
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
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

    .line 299
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_1

    .line 305
    monitor-exit v0

    return-object v1

    .line 307
    :cond_1
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 306
    invoke-static {v2, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 309
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_0

    .line 677
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3
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

    .line 73
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 74
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 82
    :cond_1
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 84
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_2

    .line 88
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 89
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 91
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getInstalledApplicationsListInternal(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
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

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 339
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 342
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 344
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 352
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .locals 5
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

    .line 570
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 571
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 572
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 574
    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    new-instance v4, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;

    invoke-direct {v4}, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;-><init>()V

    .line 576
    iput p1, v4, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->userId:I

    .line 577
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iput-object v3, v4, Ltop/niunaijun/blackbox/entity/pm/InstalledPackage;->packageName:Ljava/lang/String;

    .line 578
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
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

    .line 245
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 246
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1

    .line 255
    :cond_1
    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->updateFlags(II)I

    move-result p2

    .line 257
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 259
    :try_start_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generatePackageInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 263
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 4
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

    .line 315
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 316
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getProvider(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_1

    .line 320
    monitor-exit v0

    return-object v1

    .line 322
    :cond_1
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 321
    invoke-static {v2, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 324
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
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

    .line 284
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 285
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getReceiver(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 288
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_1

    .line 289
    monitor-exit v0

    return-object v1

    .line 291
    :cond_1
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 290
    invoke-static {v2, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 293
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 4
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

    .line 269
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 270
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->getService(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_1

    .line 274
    monitor-exit v0

    return-object v1

    .line 276
    :cond_1
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    .line 275
    invoke-static {v2, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 278
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getSettings()Ltop/niunaijun/blackbox/core/system/pm/Settings;
    .locals 1

    .line 682
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    return-object v0
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

    .line 491
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->installPackageAsUserLocked(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 3
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

    .line 559
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 560
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez p1, :cond_1

    .line 563
    monitor-exit v0

    return v1

    .line 564
    :cond_1
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getInstalled(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onPackageInstalled(Ljava/lang/String;I)V
    .locals 2
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

    .line 701
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;

    .line 702
    invoke-interface {v1, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;->onPackageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BPackageManagerService"

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onPackageUninstalled(Ljava/lang/String;I)V
    .locals 2
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

    .line 694
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;

    .line 695
    invoke-interface {v1, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;->onPackageUninstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageUninstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BPackageManagerService"

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    move-object v2, p1

    if-eqz v0, :cond_3

    .line 451
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    invoke-virtual {p0, v0, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 458
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 459
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 460
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    .line 466
    :cond_3
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 467
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 471
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v5, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    move-object v3, p3

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 474
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 475
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    sget-object p2, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {p2, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 482
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 485
    :cond_1
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 394
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    move-object v3, p1

    if-eqz v1, :cond_3

    .line 400
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    invoke-virtual {p0, v1, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 407
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 408
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 409
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    .line 416
    :cond_3
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    if-eqz v0, :cond_7

    .line 418
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 423
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v6, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    move-object v4, p3

    move v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 426
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    if-nez v1, :cond_6

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :cond_6
    monitor-exit p1

    return-object v1

    .line 435
    :cond_7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 435
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public removePackageMonitor(Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    .line 151
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 153
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

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

    .line 158
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    invoke-virtual {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

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

    .line 164
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
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

    .line 97
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->sUserManager:Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_1

    const/4 p2, 0x0

    .line 104
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public systemReady()V
    .locals 3

    .line 709
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    .line 710
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 711
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v2, :cond_0

    .line 532
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 533
    :cond_0
    :try_start_3
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->killAllByPackageName(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getUserIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 535
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v2, v6, v7}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {p1, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 543
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    .line 544
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 545
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 544
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 545
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 500
    :try_start_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v2, :cond_0

    .line 502
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 503
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 506
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->getUserState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 507
    :goto_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->killPackageAsUser(Ljava/lang/String;I)V

    .line 508
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I

    if-eqz v4, :cond_3

    .line 514
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mComponentResolver:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 516
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->mSettings:Ltop/niunaijun/blackbox/core/system/pm/Settings;

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->scanPackage()V

    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {v2, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->removeUser(I)V

    .line 519
    invoke-virtual {v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    .line 521
    :goto_1
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 522
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 522
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    :catchall_1
    move-exception p1

    .line 523
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method
