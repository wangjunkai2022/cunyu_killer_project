.class public Ltop/niunaijun/blackbox/BlackBoxCore;
.super Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;
.source "BlackBoxCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "BlackBoxCore"

.field public static final USER_ID:I

.field private static final sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mAppLifecycleCallback:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

.field private mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

.field private mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field private final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    .line 60
    sget-object v0, Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;->EMPTY:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    iput-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallback:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/BlackBoxCore;
    .locals 1

    .line 63
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sBlackBoxCore:Ltop/niunaijun/blackbox/BlackBoxCore;

    return-object v0
.end method

.method public static getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
    .locals 1

    .line 142
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBDumpManager()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;
    .locals 1

    .line 150
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;
    .locals 1

    .line 138
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBStorageManager()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
    .locals 1

    .line 146
    invoke-static {}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->get()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 75
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 67
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 262
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 263
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 264
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    .line 269
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "processName = null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initService()V
    .locals 2

    .line 123
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 124
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 125
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 126
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "dump_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    return-void
.end method

.method public static is64Bit()Z
    .locals 2

    .line 275
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    .line 278
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 2

    .line 130
    sget-object v0, Lreflection/android/app/ActivityThread;->currentActivityThread:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private startLogcat()V
    .locals 4

    .line 252
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_logcat.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->deleteDir(Ljava/io/File;)I

    const-string v1, "logcat -c"

    const/4 v2, 0x0

    .line 254
    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/utils/ShellUtils;->execCommand(Ljava/lang/String;Z)Ltop/niunaijun/blackbox/utils/ShellUtils$CommandResult;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat >> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " &"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/ShellUtils;->execCommand(Ljava/lang/String;Z)Ltop/niunaijun/blackbox/utils/ShellUtils$CommandResult;

    return-void
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

    if-eqz p2, :cond_3

    .line 82
    invoke-static {p1}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I

    .line 83
    sput-object p1, Ltop/niunaijun/blackbox/BlackBoxCore;->sContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    .line 85
    invoke-virtual {p2}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->init()V

    .line 86
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    sget-object p2, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 89
    invoke-direct {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->startLogcat()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Ltop/niunaijun/blackbox/R$string;->black_box_service_name:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    sget-object p2, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    goto :goto_0

    .line 93
    :cond_1
    sget-object p2, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    iput-object p2, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 95
    :goto_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object p2

    invoke-virtual {p2}, Ltop/niunaijun/blackbox/BlackBoxCore;->isVirtualProcess()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "p0"

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 101
    :cond_2
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isServerProcess()Z

    .line 110
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p1

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->init()V

    return-void

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientConfiguration is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doCreate()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->init()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isServerProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Ltop/niunaijun/blackbox/BlackBoxCore;->initService()V

    :cond_1
    return-void
.end method

.method public getAppLifecycleCallback()Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;
    .locals 1

    .line 189
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallback:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-object v0
.end method

.method public getDexDumpDir()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->getDexDumpDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_VM_|_server_name_"

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getBindProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "VM"

    invoke-static {v1, v3, v2, v0}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_VM_|_server_"

    .line 208
    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 209
    iget-object v1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mServices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk"
        }
    .end annotation

    .line 185
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installByStorage()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->makeUriFile()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackage(Ljava/io/File;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk"
        }
    .end annotation

    .line 181
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installByStorage()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackage(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 173
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->installBySystem()Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 176
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->installError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public isEnableHookDump()Z
    .locals 1

    .line 248
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->isEnableHookDump()Z

    move-result v0

    return v0
.end method

.method public isFixCodeItem()Z
    .locals 1

    .line 243
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mClientConfiguration:Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/app/configuration/ClientConfiguration;->isFixCodeItem()Z

    move-result v0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 163
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isMainProcess()Z
    .locals 2

    .line 224
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerProcess()Z
    .locals 2

    .line 228
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualProcess()Z
    .locals 2

    .line 220
    iget-object v0, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mProcessType:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchApk(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 154
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-virtual {p0, p1, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->startActivity(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAppLifecycleCallback(Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLifecycleCallback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 196
    iput-object p1, p0, Ltop/niunaijun/blackbox/BlackBoxCore;->mAppLifecycleCallback:Ltop/niunaijun/blackbox/app/configuration/AppLifecycleCallback;

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLifecycleCallback is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .line 134
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 167
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->uninstallPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method
