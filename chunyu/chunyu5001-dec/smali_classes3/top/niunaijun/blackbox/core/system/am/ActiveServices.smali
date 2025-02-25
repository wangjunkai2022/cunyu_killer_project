.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;,
        Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private final mConnectedServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningServiceRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    return-void
.end method

.method private findConnectedServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->access$300(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    move-result-object p1

    return-object p1
.end method

.method private findRunningServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    return-object p1
.end method

.method private getOrCreateRunningServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;-><init>()V

    .line 70
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
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

    .line 80
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onServiceDestroy(Landroid/content/Intent;I)V
    .locals 0
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

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .locals 0
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

    return-void
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
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

    return-void
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1
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

    .line 34
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mRunningServiceRecords:Ljava/util/Map;

    monitor-enter p2

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->findRunningServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 37
    monitor-exit p2

    return p3

    .line 39
    :cond_0
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->access$000(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "ActiveServices"

    const-string v0, "There are also connections"

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    monitor-exit p2

    return p3

    .line 44
    :cond_1
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->access$100(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 45
    monitor-exit p2

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 1
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

    .line 50
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    if-nez p2, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->access$200(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->getOrCreateRunningServiceRecord(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;

    move-result-object p2

    const/4 v0, 0x0

    .line 55
    invoke-static {p2, v0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->access$302(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    .line 56
    invoke-static {p2}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->access$000(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 57
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;->mConnectedServices:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
