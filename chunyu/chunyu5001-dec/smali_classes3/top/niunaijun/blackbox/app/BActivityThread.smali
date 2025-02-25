.class public Ltop/niunaijun/blackbox/app/BActivityThread;
.super Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "BActivityThread"

.field private static sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;


# instance fields
.field private mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

.field private mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

.field private mInitialApplication:Landroid/app/Application;

.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    return-void
.end method

.method private createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;
    .locals 2

    .line 54
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Ltop/niunaijun/blackbox/app/BActivityThread;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ltop/niunaijun/blackbox/app/BActivityThread;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/app/BActivityThread;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Ltop/niunaijun/blackbox/app/BActivityThread;->sBActivityThread:Ltop/niunaijun/blackbox/app/BActivityThread;

    return-object v0
.end method

.method public static declared-synchronized getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;
    .locals 2

    const-class v0, Ltop/niunaijun/blackbox/app/BActivityThread;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v1

    iget-object v1, v1, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    return-object v0

    .line 85
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppPid()I
    .locals 1

    .line 97
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    :goto_0
    return v0
.end method

.method public static getAppProcessName()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppUid()I
    .locals 1

    .line 101
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->buid:I

    :goto_0
    return v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 93
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getBaseAppUid()I
    .locals 1

    .line 105
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->baseBUid:I

    :goto_0
    return v0
.end method

.method public static getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v0

    iget-object v0, v0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public static getUid()I
    .locals 1

    .line 109
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->uid:I

    :goto_0
    return v0
.end method

.method public static getUserId()I
    .locals 1

    .line 113
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    iget v0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    :goto_0
    return v0
.end method

.method private declared-synchronized handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName"
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    new-instance v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;-><init>()V

    .line 145
    iput-object p1, v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v2

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 148
    :try_start_1
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    new-array v4, v5, [Landroid/content/pm/ProviderInfo;

    .line 153
    iput-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 155
    :cond_1
    iget-object v4, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    sget-object v2, Lreflection/android/app/ActivityThread;->mBoundApplication:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 159
    invoke-direct {p0, v3}, Ltop/niunaijun/blackbox/app/BActivityThread;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v4

    .line 160
    sget-object v6, Lreflection/android/app/ContextImpl;->mPackageInfo:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v6, v4}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 161
    sget-object v7, Lreflection/android/app/LoadedApk;->mSecurityViolation:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    sget-object v7, Lreflection/android/app/LoadedApk;->mApplicationInfo:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v7, v6, v3}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    new-instance v7, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v8

    invoke-virtual {v8}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    .line 169
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ltop/niunaijun/blackbox/core/VMCore;->init(I)V

    .line 171
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v7

    invoke-virtual {v7, v4}, Ltop/niunaijun/blackbox/core/IOCore;->enableRedirect(Landroid/content/Context;)V

    .line 173
    new-instance v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    invoke-direct {v7}, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;-><init>()V

    .line 174
    iput-object v3, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 175
    iput-object p2, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 176
    iput-object v6, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    .line 177
    iget-object v3, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mProviders:Ljava/util/List;

    iput-object v3, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 179
    sget-object v3, Lreflection/android/app/ActivityThread$AppBindData;->instrumentationName:Lreflection/MirrorReflection$FieldWrapper;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v10, Landroid/app/Instrumentation;

    .line 180
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3, v2, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    sget-object v3, Lreflection/android/app/ActivityThread$AppBindData;->appInfo:Lreflection/MirrorReflection$FieldWrapper;

    iget-object v8, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    sget-object v3, Lreflection/android/app/ActivityThread$AppBindData;->info:Lreflection/MirrorReflection$FieldWrapper;

    iget-object v8, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->info:Ljava/lang/Object;

    invoke-virtual {v3, v2, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    sget-object v3, Lreflection/android/app/ActivityThread$AppBindData;->processName:Lreflection/MirrorReflection$FieldWrapper;

    iget-object v8, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    sget-object v3, Lreflection/android/app/ActivityThread$AppBindData;->providers:Lreflection/MirrorReflection$FieldWrapper;

    iget-object v8, v7, Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-virtual {v3, v2, v8}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iput-object v7, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    .line 189
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v2

    invoke-virtual {v2}, Ltop/niunaijun/blackbox/BlackBoxCore;->getAppLifecycleCallback()Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v4}, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->beforeCreateApplication(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :try_start_3
    sget-object v2, Lreflection/android/app/LoadedApk;->getClassloader:Lreflection/MirrorReflection$MethodWrapper;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v3}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 192
    sget-object v2, Lreflection/android/app/LoadedApk;->makeApplication:Lreflection/MirrorReflection$MethodWrapper;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v6, v3}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    const-string v3, "BActivityThread"

    const-string v4, "Unable to makeApplication"

    .line 194
    invoke-static {v3, v4}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    .line 197
    :goto_0
    iput-object v2, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 198
    sget-object v3, Lreflection/android/app/ActivityThread;->mInitialApplication:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3, v4, v7}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez v2, :cond_2

    .line 202
    sget-object p2, Lreflection/android/app/LoadedApk;->getClassloader:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2, v6, v2}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ClassLoader;

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 206
    :goto_1
    invoke-direct {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->handleDumpDex(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 209
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    iput-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    .line 211
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p2

    invoke-virtual {v1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    .line 212
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 214
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleDumpDex(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "result",
            "classLoader"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;

    invoke-direct {v1, p0, p3, p1, p2}, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU;-><init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/ClassLoader;Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public bindApplication()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "packageName",
            "processName"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 132
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 133
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;

    invoke-direct {v2, p0, p1, p2, v0}, Ltop/niunaijun/blackbox/app/-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4;-><init>(Ltop/niunaijun/blackbox/app/BActivityThread;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getActivityThread()Landroid/os/IBinder;
    .locals 3

    .line 249
    sget-object v0, Lreflection/android/app/ActivityThread;->getApplicationThread:Lreflection/MirrorReflection$MethodWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public initProcess(Ltop/niunaijun/blackbox/entity/AppConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appConfig"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject init process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this process is : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    iget-object p1, p1, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .line 124
    iget-object v0, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mBoundApplication:Ltop/niunaijun/blackbox/app/BActivityThread$AppBindData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$bindApplication$0$BActivityThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "packageName",
            "processName",
            "conditionVariable"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/app/BActivityThread;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public synthetic lambda$handleDumpDex$1$BActivityThread(Ljava/lang/ClassLoader;Ljava/lang/String;Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "classLoader",
            "packageName",
            "result"
        }
    .end annotation

    const-string v0, "not found dex file"

    const-wide/16 v1, 0x1f4

    .line 219
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    .line 223
    :try_start_1
    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/VMCore;->cookieDumpDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iput-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    .line 226
    new-instance p1, Ljava/io/File;

    iget-object v1, p3, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object p1

    invoke-virtual {p3}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpSuccess()Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p3

    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    goto :goto_1

    .line 228
    :cond_1
    :goto_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object p1

    invoke-virtual {p3, v0}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p3

    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    .line 232
    :goto_1
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p1

    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    iput-object v1, p0, Ltop/niunaijun/blackbox/app/BActivityThread;->mAppConfig:Ltop/niunaijun/blackbox/entity/AppConfig;

    .line 226
    new-instance v1, Ljava/io/File;

    iget-object v2, p3, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 230
    :cond_2
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    invoke-virtual {p3}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpSuccess()Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p3

    invoke-virtual {v0, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    goto :goto_3

    .line 228
    :cond_3
    :goto_2
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v1

    invoke-virtual {p3, v0}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dumpError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p3

    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    .line 232
    :goto_3
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p3

    invoke-virtual {p3, p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->uninstallPackage(Ljava/lang/String;)V

    .line 233
    throw p1
.end method
