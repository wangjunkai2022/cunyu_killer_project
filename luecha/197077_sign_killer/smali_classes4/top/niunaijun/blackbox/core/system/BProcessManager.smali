.class public Ltop/niunaijun/blackbox/core/system/BProcessManager;
.super Ljava/lang/Object;
.source "BProcessManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BProcessManager"

.field public static sVProcessManager:Ltop/niunaijun/blackbox/core/system/BProcessManager;


# instance fields
.field private final mPidsSelfLocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessLock:Ljava/lang/Object;

.field private final mProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ltop/niunaijun/blackbox/core/system/BProcessManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->sVProcessManager:Ltop/niunaijun/blackbox/core/system/BProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    return-void
.end method

.method private attachClientL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "app",
            "appThread"
        }
    .end annotation

    .line 164
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/IBActivityThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v1, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;

    invoke-direct {v1, p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;-><init>(Ltop/niunaijun/blackbox/core/system/BProcessManager;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 179
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    :goto_0
    iput-object v0, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    .line 183
    :try_start_1
    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/IBActivityThread;->getActivityThread()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/compat/ApplicationThreadCompat;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 185
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    :goto_1
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/BProcessManager;
    .locals 1

    .line 45
    sget-object v0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->sVProcessManager:Ltop/niunaijun/blackbox/core/system/BProcessManager;

    return-object v0
.end method

.method public static getPid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "processName"
        }
    .end annotation

    :try_start_0
    const-string v0, "activity"

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 282
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 284
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pid"
        }
    .end annotation

    const-string v0, "activity"

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 267
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 268
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 269
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    .line 274
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "processName = null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getUsingBPidL()I
    .locals 4

    .line 99
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 103
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 104
    iget v3, v3, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private initAppProcessL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getClientConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BlackBox_client_config"

    .line 153
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_Black_|_init_process_"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Ltop/niunaijun/blackbox/utils/provider/ProviderCall;->callSafely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_Black_|_client_"

    .line 155
    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->attachClientL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseBPid(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stubProcessName"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 257
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-ne v3, p1, :cond_0

    .line 258
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 260
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findProcessRecord(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 203
    invoke-static {p3, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 204
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 206
    monitor-exit v0

    return-object p1

    .line 207
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserIdByCallingPid(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingPid"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 248
    monitor-exit v0

    return p1

    .line 250
    :cond_0
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public killAllByPackageName(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    .line 216
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 217
    iget v5, v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v5}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 219
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    iget v6, v4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v4}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 225
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 226
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 227
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public killPackageAsUser(Ljava/lang/String;I)V
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

    .line 231
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 233
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 235
    monitor-exit v0

    return-void

    .line 236
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 237
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onProcessDie(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->kill()V

    .line 193
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    iget v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 121
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {p0, v7}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v2

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 125
    :try_start_2
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->parseBPid(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 127
    invoke-virtual/range {v1 .. v7}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;IIII)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 129
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 129
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public startProcessLocked(Ljava/lang/String;Ljava/lang/String;IIII)Ltop/niunaijun/blackbox/core/system/ProcessRecord;
    .locals 9
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
            "packageName",
            "processName",
            "userId",
            "bpid",
            "callingUid",
            "callingPid"
        }
    .end annotation

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object p6

    const/4 v0, 0x0

    invoke-virtual {p6, p1, v0, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p6

    const/4 v0, 0x0

    if-nez p6, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getAppId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p1

    .line 54
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v7, v1

    .line 59
    iget-object v8, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, -0x1

    if-ne p4, v1, :cond_4

    .line 61
    :try_start_0
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    if-eqz p4, :cond_3

    .line 63
    iget-object v2, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 66
    :cond_2
    iget-object v2, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    if-eqz v2, :cond_3

    .line 67
    monitor-exit v8

    return-object p4

    .line 70
    :cond_3
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->getUsingBPidL()I

    move-result p4

    const-string v2, "BProcessManager"

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init bUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltop/niunaijun/blackbox/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_0
    move v5, p4

    if-eq v5, v1, :cond_6

    .line 76
    new-instance p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    const/4 v4, 0x0

    move-object v1, p4

    move-object v2, p6

    move-object v3, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V

    .line 77
    iput p1, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    .line 78
    iput p1, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 79
    iput p3, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    .line 80
    iget p1, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    iput p1, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    .line 82
    invoke-interface {v7, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mProcessMap:Ljava/util/Map;

    iget p3, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0, p4}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->initAppProcessL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 88
    invoke-interface {v7, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager;->mPidsSelfLocked:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_5
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProcessName(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->getPid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p4, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    move-object v0, p4

    .line 94
    :goto_1
    monitor-exit v8

    return-object v0

    .line 74
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No processes available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
