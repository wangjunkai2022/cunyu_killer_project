.class public Ltop/niunaijun/blackbox/BlackDexCore;
.super Ljava/lang/Object;
.source "BlackDexCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BlackBoxCore"

.field private static final sBlackDexCore:Ltop/niunaijun/blackbox/BlackDexCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ltop/niunaijun/blackbox/BlackDexCore;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/BlackDexCore;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/BlackDexCore;->sBlackDexCore:Ltop/niunaijun/blackbox/BlackDexCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/BlackDexCore;
    .locals 1

    .line 31
    sget-object v0, Ltop/niunaijun/blackbox/BlackDexCore;->sBlackDexCore:Ltop/niunaijun/blackbox/BlackDexCore;

    return-object v0
.end method


# virtual methods
.method public doAttachBaseContext(Landroid/content/Context;Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clientConfiguration"
        }
    .end annotation

    .line 35
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->doAttachBaseContext(Landroid/content/Context;Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;)V

    return-void
.end method

.method public doCreate()V
    .locals 3

    .line 39
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->doCreate()V

    .line 41
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 45
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpDex(Landroid/net/Uri;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 79
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->installPackage(Landroid/net/Uri;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    .line 80
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget-object v2, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltop/niunaijun/blackbox/BlackBoxCore;->launchApk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method

.method public dumpDex(Ljava/io/File;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 65
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->installPackage(Ljava/io/File;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    .line 66
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget-object v2, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltop/niunaijun/blackbox/BlackBoxCore;->launchApk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method

.method public dumpDex(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->installPackage(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object v0

    .line 52
    iget-boolean v1, v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->launchApk(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p1

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    return-object v2
.end method

.method public isExistDexFile(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRunning()Z
    .locals 6

    .line 101
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 102
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 104
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public registerDumpMonitor(Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 93
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->registerMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public unregisterDumpMonitor(Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 97
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-interface {p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->unregisterMonitor(Landroid/os/IBinder;)V

    return-void
.end method
