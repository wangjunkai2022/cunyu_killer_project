.class Ltop/niunaijun/blackbox/core/system/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private final mAppIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrUid:I

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->loadUidLP()V

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private acquireAndRegisterNewAppIdLPw(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 92
    :cond_0
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    const/16 v1, 0x4e1f

    if-lt v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    .line 96
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget p1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    add-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method private loadUidLP()V
    .locals 4

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUidConf()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 129
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    .line 133
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 134
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 136
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 137
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw v1

    .line 141
    :catch_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private saveUidLP()V
    .locals 7

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getUidConf()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 105
    :try_start_0
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 106
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    iget v3, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mCurrUid:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mAppIds:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 114
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 118
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v1
.end method

.method private updatePackageLP(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    const-string v0, "Settings"

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 162
    invoke-static {v1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getPackageConf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 164
    :try_start_0
    invoke-static {v3}, Ltop/niunaijun/blackbox/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v3

    .line 166
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 167
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 169
    new-instance v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    invoke-direct {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;-><init>(Landroid/os/Parcel;)V

    .line 170
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 172
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 173
    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v6, v6, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v6

    iget-object v7, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v7, v7, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->killAllByPackageName(Ljava/lang/String;)V

    .line 176
    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iput-object v4, v6, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 177
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageInstallerService;->updatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I

    .line 180
    :cond_0
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iput-object v3, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 181
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->create()Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v7

    invoke-static {v6, v5, v7, v5}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 182
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->save()Z

    .line 183
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 186
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 189
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->killAllByPackageName(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad Package: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw p1
.end method


# virtual methods
.method getPackageLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "aPackage"
        }
    .end annotation

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;-><init>()V

    .line 50
    new-instance v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-direct {v1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iput-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 51
    iget-object p2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iput-object v0, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 52
    iget-object p2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->create()Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateApplicationInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 54
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-eqz p1, :cond_0

    .line 56
    iget v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    iput v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    .line 57
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    iput-object p1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->registerAppIdLPw(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    :goto_0
    monitor-exit p2

    return-object v0

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "registerAppIdLPw err."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method registerAppIdLPw(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 70
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->acquireAndRegisterNewAppIdLPw(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I

    move-result v0

    iput v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 82
    :goto_1
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->saveUidLP()V

    return v1
.end method

.method public scanPackage()V
    .locals 6

    .line 146
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppRootDir()Ljava/io/File;

    move-result-object v1

    .line 148
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 150
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-direct {p0, v4}, Ltop/niunaijun/blackbox/core/system/pm/Settings;->updatePackageLP(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
