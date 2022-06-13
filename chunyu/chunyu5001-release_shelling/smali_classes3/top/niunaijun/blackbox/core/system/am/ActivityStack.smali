.class public Ltop/niunaijun/blackbox/core/system/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# instance fields
.field private mAms:Landroid/app/ActivityManager;

.field private final mLaunchingActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    return-void
.end method

.method private deliverNewIntentLocked(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityRecord",
            "intent"
        }
    .end annotation

    return-void
.end method

.method private findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "componentName"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 346
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_0

    .line 347
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 348
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 361
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 362
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_0

    .line 363
    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 364
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "taskAffinity"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 378
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 381
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 382
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private findTaskRecordByTokenLocked(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 388
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->userId:I

    if-ne p1, v3, :cond_0

    .line 389
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 390
    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1

    .line 391
    monitor-exit v0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    .line 396
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private finishAllActivity(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 323
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 324
    iget v3, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    if-ne v3, p1, :cond_1

    .line 325
    iget-boolean v2, v2, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getStartStubActivityIntentInner(Landroid/content/Intent;IILtop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "vpid",
            "userId",
            "target",
            "activityInfo"
        }
    .end annotation

    .line 315
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 316
    new-instance p5, Landroid/content/ComponentName;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyActivity(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p5, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    iget-object p2, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    iget p4, p4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mUserId:I

    invoke-static {p3, p1, p2, p5, p4}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    return-object p3
.end method

.method private getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .locals 2

    .line 303
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 304
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 305
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 307
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 305
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 3
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
            "appThread",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .line 279
    sget-object v0, Lreflection/android/app/IActivityManager;->startActivity:Lreflection/MirrorReflection$MethodWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$MethodWrapper;->unwrap()Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 280
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 283
    aput-object p1, v0, v1

    .line 284
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 285
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 286
    aput-object p3, v0, p1

    const/4 p1, 0x4

    .line 287
    aput-object p4, v0, p1

    const/4 p1, 0x5

    .line 288
    aput-object p5, v0, p1

    .line 289
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    .line 290
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/4 p1, 0x0

    const/16 p2, 0x8

    .line 291
    aput-object p1, v0, p2

    const/16 p1, 0x9

    .line 292
    aput-object p8, v0, p1

    .line 295
    :try_start_0
    sget-object p1, Lreflection/android/app/IActivityManager;->startActivity:Lreflection/MirrorReflection$MethodWrapper;

    sget-object p2, Lreflection/android/app/ActivityManagerNative;->getDefault:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)I
    .locals 6
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
            "activityInfo",
            "resultTo",
            "launchMode"
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p2, p3, p4, p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v4

    .line 254
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x80000

    .line 257
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 258
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method private startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;I)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options",
            "userId",
            "sourceRecord",
            "activityInfo",
            "launchMode"
        }
    .end annotation

    move-object v9, p0

    move-object v2, p1

    move-object v6, p3

    move/from16 v1, p8

    move-object/from16 v3, p10

    .line 269
    invoke-virtual {p0, p1, v3, p3, v1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v4

    .line 270
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;

    move-result-object v2

    move/from16 v0, p11

    .line 271
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p9

    .line 272
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->appThread:Landroid/os/IInterface;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->realStartActivityLocked(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private startActivityProcess(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;I)Landroid/content/Intent;
    .locals 13
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
            "info",
            "record",
            "callingUid"
        }
    .end annotation

    move-object/from16 v5, p3

    .line 243
    new-instance v4, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    move v3, p1

    move-object v1, p2

    move-object/from16 v0, p4

    invoke-direct {v4, p1, v5, p2, v0}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 244
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->get()Ltop/niunaijun/blackbox/core/system/BProcessManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    const/4 v10, -0x1

    move v9, p1

    invoke-virtual/range {v6 .. v12}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;IIII)Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget v2, v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    move-object v0, p0

    move-object v1, p2

    move v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->getStartStubActivityIntentInner(Landroid/content/Intent;IILtop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create process, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronizeTasks()V
    .locals 6

    .line 456
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 459
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 460
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    if-nez v4, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 466
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public containsFlag(Landroid/content/Intent;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "flag"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method newActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "info",
            "resultTo",
            "userId"
        }
    .end annotation

    .line 335
    invoke-static {p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    .line 336
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter p2

    .line 337
    :try_start_0
    iget-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Ltop/niunaijun/blackbox/core/system/ProcessRecord;ILandroid/os/IBinder;Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processRecord",
            "taskId",
            "token",
            "record"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 406
    :try_start_1
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 407
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget v2, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    iget-object v3, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;-><init>(IILjava/lang/String;)V

    .line 410
    iget-object v2, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v2, v0, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 411
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    iput-object p3, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    .line 414
    iput-object p1, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 415
    iput-object v0, p4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    .line 416
    invoke-virtual {v0, p4}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->addTopActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 417
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 404
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onActivityDestroyed(ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 434
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 435
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    .line 437
    monitor-exit v0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 439
    iput-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    .line 440
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->removeActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 441
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityResumed(ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 422
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 423
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    .line 425
    monitor-exit v0

    return-void

    .line 427
    :cond_0
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->removeActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 428
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    invoke-virtual {p2, p1}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->addTopActivity(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;)V

    .line 429
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFinishActivity(ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "token"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v0

    .line 446
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 447
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    .line 449
    monitor-exit v0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 451
    iput-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    .line 452
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivitiesLocked(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 14
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
            "intents",
            "resolvedTypes",
            "resultTo",
            "options"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "intents is null"

    .line 58
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "resolvedTypes is null"

    .line 61
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 66
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 67
    aget-object v7, v0, v3

    aget-object v8, v1, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v5, p0

    move v6, p1

    move-object/from16 v9, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v5 .. v13}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityLocked(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 21
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

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 73
    iget-object v1, v13, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mTasks:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_0
    invoke-direct/range {p0 .. p0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->synchronizeTasks()V

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 77
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 78
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_0

    goto/16 :goto_15

    :cond_0
    const-string v6, "TestActivity"

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivityLocked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v1, p4

    .line 84
    invoke-direct {v13, v0, v1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByToken(ILandroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v6, :cond_2

    .line 90
    iget-object v6, v6, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 93
    :goto_0
    invoke-static {v11}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x20000000

    .line 96
    invoke-virtual {v13, v2, v9}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v9, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/high16 v10, 0x10000000

    .line 97
    invoke-virtual {v13, v2, v10}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v10

    const/high16 v14, 0x4000000

    .line 98
    invoke-virtual {v13, v2, v14}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v14

    const v15, 0x8000

    .line 99
    invoke-virtual {v13, v2, v15}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->containsFlag(Landroid/content/Intent;I)Z

    move-result v15

    .line 102
    iget v7, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v12, 0x3

    const/4 v5, 0x2

    if-eqz v7, :cond_6

    if-eq v7, v3, :cond_6

    if-eq v7, v5, :cond_6

    if-eq v7, v12, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    .line 112
    :cond_5
    invoke-direct {v13, v0, v8}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    move-result-object v7

    goto :goto_3

    .line 106
    :cond_6
    invoke-direct {v13, v0, v8}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findTaskRecordByTaskAffinityLocked(ILjava/lang/String;)Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_7

    if-nez v10, :cond_7

    move-object v7, v6

    :cond_7
    :goto_3
    if-eqz v7, :cond_1f

    .line 117
    invoke-virtual {v7}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->needNewTask()Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_14

    .line 121
    :cond_8
    iget-object v8, v13, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mAms:Landroid/app/ActivityManager;

    iget v12, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->id:I

    const/4 v5, 0x0

    invoke-virtual {v8, v12, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v14, :cond_a

    if-nez v9, :cond_a

    if-eqz v15, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_b

    .line 128
    iget-object v5, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 129
    invoke-static {v5, v2}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->rootIntent:Landroid/content/Intent;

    .line 130
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    if-ne v5, v8, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_c

    const/4 v5, 0x0

    return v5

    .line 135
    :cond_c
    invoke-virtual {v7}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v12

    .line 136
    invoke-static {v11}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v13, v0, v5}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v5

    if-eqz v14, :cond_10

    if-eqz v5, :cond_10

    .line 143
    iget-object v8, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v8, v8, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v8

    .line 144
    :try_start_1
    iget-object v3, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_f

    .line 145
    iget-object v4, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eq v4, v5, :cond_d

    move-object/from16 v18, v6

    const/4 v6, 0x1

    .line 147
    iput-boolean v6, v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    const-string v6, "TestActivity"

    move-object/from16 v19, v1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v10

    const-string v10, "makerFinish: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    move/from16 v10, v20

    goto :goto_7

    :cond_d
    move-object/from16 v19, v1

    move-object/from16 v18, v6

    move/from16 v20, v10

    if-eqz v9, :cond_e

    move-object/from16 v16, v5

    goto :goto_9

    :cond_e
    const/4 v1, 0x1

    .line 154
    iput-boolean v1, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    goto :goto_8

    :cond_f
    move-object/from16 v19, v1

    move-object/from16 v18, v6

    move/from16 v20, v10

    :goto_8
    const/16 v16, 0x0

    .line 159
    :goto_9
    monitor-exit v8

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_10
    move-object/from16 v19, v1

    move-object/from16 v18, v6

    move/from16 v20, v10

    const/16 v16, 0x0

    :goto_a
    if-eqz v9, :cond_14

    if-nez v14, :cond_14

    .line 164
    iget-object v1, v12, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v16, v12

    goto :goto_c

    .line 167
    :cond_11
    iget-object v1, v13, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    monitor-enter v1

    .line 168
    :try_start_2
    iget-object v3, v13, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->mLaunchingActivities:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    .line 169
    iget-boolean v6, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    if-nez v6, :cond_12

    iget-object v5, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    .line 174
    :cond_13
    monitor-exit v1

    goto :goto_d

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_14
    :goto_c
    const/4 v4, 0x0

    .line 178
    :goto_d
    iget v1, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    if-nez v14, :cond_17

    .line 179
    iget-object v1, v12, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->intentFilterEquals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v16, v12

    goto :goto_f

    .line 182
    :cond_15
    invoke-static {v11}, Ltop/niunaijun/blackbox/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->findActivityRecordByComponentName(ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 187
    iget-object v3, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 188
    :try_start_3
    iget-object v5, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_e
    if-ltz v5, :cond_16

    .line 189
    iget-object v8, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    if-eq v8, v1, :cond_16

    .line 191
    iput-boolean v6, v8, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto :goto_e

    .line 196
    :cond_16
    monitor-exit v3

    move-object/from16 v16, v1

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 201
    :cond_17
    :goto_f
    iget v1, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_18

    move-object v1, v12

    goto :goto_10

    :cond_18
    move-object/from16 v1, v16

    :goto_10
    if-eqz v15, :cond_19

    if-eqz v20, :cond_19

    .line 207
    iget-object v3, v7, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    const/4 v6, 0x1

    .line 208
    iput-boolean v6, v5, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->finished:Z

    goto :goto_11

    .line 212
    :cond_19
    invoke-direct/range {p0 .. p1}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->finishAllActivity(I)V

    if-eqz v1, :cond_1a

    .line 216
    invoke-direct {v13, v1, v2}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->deliverNewIntentLocked(Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/Intent;)V

    const/4 v1, 0x0

    return v1

    :cond_1a
    const/4 v1, 0x0

    if-eqz v4, :cond_1b

    return v1

    :cond_1b
    if-nez v19, :cond_1d

    .line 223
    invoke-virtual {v7}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 225
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_12

    :cond_1c
    move-object/from16 v1, v19

    :goto_12
    move-object v4, v1

    goto :goto_13

    :cond_1d
    if-eqz v18, :cond_1e

    .line 228
    invoke-virtual/range {v18 .. v18}, Ltop/niunaijun/blackbox/core/system/am/TaskRecord;->getTopActivityRecord()Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 230
    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_12

    :cond_1e
    move-object/from16 v4, v19

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p1

    move-object v10, v12

    const/4 v0, 0x0

    move v12, v0

    .line 233
    invoke-direct/range {v1 .. v12}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityInSourceTask(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILtop/niunaijun/blackbox/core/system/am/ActivityRecord;Landroid/content/pm/ActivityInfo;I)I

    move-result v0

    return v0

    :cond_1f
    :goto_14
    move-object/from16 v19, v1

    const/4 v1, 0x0

    move-object/from16 p3, p0

    move/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, v11

    move-object/from16 p7, v19

    move/from16 p8, v1

    .line 118
    invoke-direct/range {p3 .. p8}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)I

    move-result v0

    return v0

    :cond_20
    :goto_15
    const/4 v0, 0x0

    return v0

    :catchall_3
    move-exception v0

    .line 75
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method
