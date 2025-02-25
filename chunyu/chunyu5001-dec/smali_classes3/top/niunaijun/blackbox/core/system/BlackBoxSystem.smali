.class public Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;
.super Ljava/lang/Object;
.source "BlackBoxSystem.java"


# static fields
.field private static sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystem()Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;
    .locals 2

    .line 38
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->sBlackBoxSystem:Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;

    return-object v0
.end method

.method private initJarEnv()V
    .locals 2

    .line 72
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "junit.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 73
    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->JUNIT_JAR:Ljava/io/File;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 75
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "empty.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 76
    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->EMPTY_JAR:Ljava/io/File;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 78
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "vm.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->VM_JAR:Ljava/io/File;

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public startup()V
    .locals 5

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->load()V

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->systemReady()V

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->systemReady()V

    .line 53
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->get()Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->systemReady()V

    .line 54
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->get()Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->systemReady()V

    .line 55
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->systemReady()V

    .line 57
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->getPreInstallPackages()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 62
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installBySystem()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/BlackBoxSystem;->initJarEnv()V

    return-void
.end method
