.class public Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "state",
            "appInfo"
        }
    .end annotation

    .line 326
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isBlackPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    .line 329
    :cond_0
    iget-boolean p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method private static fixJar(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 339
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isQ()Z

    move-result v1

    const-string v2, "/system/framework/org.apache.http.legacy.boot.jar"

    if-eqz v1, :cond_1

    const-string v1, "/system/framework/org.apache.http.legacy.jar"

    .line 340
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_0
    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->JUNIT_JAR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->VM_JAR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 354
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    return-void
.end method

.method public static generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_0
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 215
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 216
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 217
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 278
    :cond_0
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 284
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 287
    :cond_1
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 291
    :cond_2
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 292
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 293
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 294
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 295
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 297
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 299
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 300
    sget-object p1, Lreflection/android/content/pm/ApplicationInfoL;->primaryCpuAbi:Lreflection/MirrorReflection$FieldWrapper;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    sget-object p1, Lreflection/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    sget-object v0, Lreflection/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p2}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    sget-object p1, Lreflection/android/content/pm/ApplicationInfoL;->scanSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    sget-object v0, Lreflection/android/content/pm/ApplicationInfoL;->scanSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p2}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 305
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p0, p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDeDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 307
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->deviceEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    if-eqz p0, :cond_4

    .line 308
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->deviceEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    :cond_4
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->credentialEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    if-eqz p0, :cond_5

    .line 311
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->credentialEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    :cond_5
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->deviceProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    if-eqz p0, :cond_6

    .line 314
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->deviceProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    :cond_6
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->credentialProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    if-eqz p0, :cond_7

    .line 317
    sget-object p0, Lreflection/android/content/pm/ApplicationInfoN;->credentialProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    :cond_7
    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->fixJar(Landroid/content/pm/ApplicationInfo;)V

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static generateInstrumentationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "flags"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 265
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 267
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 268
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePackageInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;IJJLtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "firstInstallTime",
            "lastUpdateTime",
            "state",
            "userId"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p6, v0}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 64
    :cond_0
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 71
    :cond_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 72
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 73
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 75
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserLabel:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 76
    invoke-static {p0, p1, p6, p7}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 79
    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 80
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 81
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 82
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_2
    and-int/lit16 p2, p1, 0x100

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    new-array p2, p3, [I

    .line 87
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_3
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_7

    .line 90
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_5

    .line 92
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 93
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    :cond_5
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-lez p2, :cond_7

    .line 97
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 98
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_9

    .line 102
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 103
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 106
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p5, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge p5, p2, :cond_8

    .line 108
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    add-int/lit8 v4, v2, 0x1

    .line 109
    invoke-static {v3, p1, p6, p7}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_3

    .line 111
    :cond_8
    invoke-static {p4, v2}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_9
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_b

    .line 115
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 116
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 119
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p5, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge p5, p2, :cond_a

    .line 121
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    add-int/lit8 v4, v2, 0x1

    .line 122
    invoke-static {v3, p1, p6, p7}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_4

    .line 124
    :cond_a
    invoke-static {p4, v2}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_b
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_d

    .line 128
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 129
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 132
    new-array p4, p2, [Landroid/content/pm/ServiceInfo;

    const/4 p5, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge p5, p2, :cond_c

    .line 134
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    add-int/lit8 v4, v2, 0x1

    .line 135
    invoke-static {v3, p1, p6, p7}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_5

    .line 137
    :cond_c
    invoke-static {p4, v2}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ServiceInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_d
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_10

    .line 141
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 142
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 145
    new-array p4, p2, [Landroid/content/pm/ProviderInfo;

    const/4 p5, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge p5, p2, :cond_f

    .line 147
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 148
    invoke-static {v3, p1, p6, p7}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    .line 150
    aput-object v3, p4, v2

    move v2, v4

    :cond_e
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    .line 153
    :cond_f
    invoke-static {p4, v2}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_10
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_11

    .line 157
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 158
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_11

    .line 160
    new-array p4, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 p4, 0x0

    :goto_7
    if-ge p4, p2, :cond_11

    .line 162
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;

    .line 162
    invoke-static {p6, p1}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateInstrumentationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_11
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_13

    .line 168
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 169
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 171
    new-array p4, p2, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 p4, 0x0

    :goto_8
    if-ge p4, p2, :cond_12

    .line 173
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p6, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;

    invoke-static {p6, p1}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generatePermissionInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    .line 176
    :cond_12
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 177
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 179
    new-array p4, p2, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 180
    new-array p4, p2, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    :goto_9
    if-ge p3, p2, :cond_13

    .line 182
    iget-object p4, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 183
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p4, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_13
    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_15

    .line 193
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 194
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_a

    .line 196
    :cond_14
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 199
    :cond_15
    :goto_a
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result p2

    if-eqz p2, :cond_16

    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    .line 201
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 202
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object p0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 203
    sget-object p0, Lreflection/android/content/pm/SigningInfo;->mSigningDetails:Lreflection/MirrorReflection$FieldWrapper;

    iget-object p2, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0, p2, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-object v0
.end method

.method public static generatePackageInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 45
    :cond_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    move v8, p3

    .line 49
    :try_start_0
    invoke-static/range {v1 .. v8}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generatePackageInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;IJJLtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static generatePermissionInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "flags"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 254
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 256
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 257
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 239
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 241
    :cond_1
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 242
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2

    .line 244
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 246
    :cond_2
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->checkUseInstalledOrHidden(ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 227
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 228
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 229
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method
