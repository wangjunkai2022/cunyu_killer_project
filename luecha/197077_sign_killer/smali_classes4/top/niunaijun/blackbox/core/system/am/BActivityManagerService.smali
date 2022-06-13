.class public Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;
.super Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;
.source "BActivityManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field public static final TAG:Ljava/lang/String; = "VActivityManagerService"

.field private static final sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;


# instance fields
.field private final mUserSpace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/am/UserSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;
    .locals 1

    .line 39
    sget-object v0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->sService:Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    return-object v0
.end method

.method private getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    if-eqz v1, :cond_0

    .line 211
    monitor-exit v0

    return-object v1

    .line 212
    :cond_0
    new-instance v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/am/UserSpace;-><init>()V

    .line 213
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->mUserSpace:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "service",
            "binder",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p4}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object p1

    .line 157
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter p1

    const/4 p2, 0x0

    .line 158
    :try_start_0
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 159
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;IIII)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->getClientConfig()Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "token",
            "activityRecord"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 80
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    check-cast p3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 85
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v1

    .line 86
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-virtual {v1, v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityCreated(Ltop/niunaijun/blackbox/core/system/ProcessRecord;ILandroid/os/IBinder;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 88
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 107
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v1

    .line 112
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityDestroyed(ILandroid/os/IBinder;)V

    .line 114
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 94
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v1

    .line 99
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v2

    .line 100
    :try_start_0
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onActivityResumed(ILandroid/os/IBinder;)V

    .line 101
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 120
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->findProcessByPid(I)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v1

    .line 125
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {v1, v0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->onFinishActivity(ILandroid/os/IBinder;)V

    .line 127
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 141
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->onServiceDestroy(Landroid/content/Intent;I)V

    .line 143
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 133
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->onStartCommand(Landroid/content/Intent;I)V

    .line 135
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->restartAppProcess(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 56
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;IIII)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/IBActivityThread;->bindApplication()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 65
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    return-object p1
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "intent",
            "resolvedType",
            "resultTo",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 202
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 11
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

    .line 185
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 186
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 188
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 194
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 45
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->startService(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 47
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p3}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 149
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binder",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->getOrCreateSpaceLocked(I)Ltop/niunaijun/blackbox/core/system/am/UserSpace;

    move-result-object v0

    .line 165
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->unbindService(Landroid/os/IBinder;I)V

    .line 167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
