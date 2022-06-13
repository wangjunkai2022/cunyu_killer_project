.class public Ltop/niunaijun/blackbox/core/system/pm/installer/CreateUserExecutor;
.super Ljava/lang/Object;
.source "CreateUserExecutor.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "option",
            "userId"
        }
    .end annotation

    .line 21
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 22
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataLibDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 25
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 26
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 27
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 28
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDatabasesDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 29
    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDeDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    const/4 p1, 0x0

    return p1
.end method
