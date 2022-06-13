.class public Ltop/niunaijun/blackbox/core/env/BEnvironment;
.super Ljava/lang/Object;
.source "BEnvironment.java"


# static fields
.field public static EMPTY_JAR:Ljava/io/File;

.field public static JUNIT_JAR:Ljava/io/File;

.field public static VM_JAR:Ljava/io/File;

.field private static final sExternalVirtualRoot:Ljava/io/File;

.field private static final sVirtualRoot:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "virtual"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    .line 19
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "junit.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->JUNIT_JAR:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "empty.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->EMPTY_JAR:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "vm.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->VM_JAR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppLibDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppRootDir()Ljava/io/File;
    .locals 1

    const-string v0, ""

    .line 110
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseApkDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/base.apk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 3

    .line 45
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDatabasesDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "databases"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataLibDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "lib"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeDataDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user_de/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
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

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Android/data/%s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
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

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalUserDir(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "storage/emulated/%d/"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalVirtualRoot()Ljava/io/File;
    .locals 1

    .line 37
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static getPackageConf(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.conf"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemDir()Ljava/io/File;
    .locals 3

    .line 41
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUidConf()Ljava/io/File;
    .locals 3

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDir(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "data/user/%d"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserInfoConf()Ljava/io/File;
    .locals 3

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVirtualRoot()Ljava/io/File;
    .locals 1

    .line 33
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static getXPModuleConf()Ljava/io/File;
    .locals 3

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xposed-module.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load()V
    .locals 1

    .line 26
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 27
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 28
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-void
.end method
