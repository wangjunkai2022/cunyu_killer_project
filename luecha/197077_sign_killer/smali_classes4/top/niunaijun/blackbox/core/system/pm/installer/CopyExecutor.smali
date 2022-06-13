.class public Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;
.super Ljava/lang/Object;
.source "CopyExecutor.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I
    .locals 6
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

    const-string p3, "libblackdex_d.so"

    const-string v0, "libblackdex.so"

    const/4 v1, -0x1

    .line 30
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/utils/NativeUtils;->copyNativeLib(Ljava/io/File;Ljava/io/File;)V

    .line 31
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 33
    invoke-static {v5}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-static {v3, v4}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 36
    invoke-static {v3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x2

    .line 41
    invoke-virtual {p2, p3}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 43
    new-instance p3, Ljava/io/File;

    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getBaseApkDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/16 v2, 0x8

    .line 46
    :try_start_1
    invoke-virtual {p2, v2}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p3, v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 49
    invoke-static {p3, v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p3, v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_2
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    :goto_1
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
