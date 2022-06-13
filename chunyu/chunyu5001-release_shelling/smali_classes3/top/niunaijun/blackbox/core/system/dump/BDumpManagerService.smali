.class public Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;
.super Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;
.source "BDumpManagerService.java"


# static fields
.field private static final sService:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;


# instance fields
.field private final mMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->sService:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->mMonitors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->mMonitors:Ljava/util/List;

    return-object p0
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;
    .locals 1

    .line 24
    sget-object v0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->sService:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    return-object v0
.end method


# virtual methods
.method public noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->mMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 50
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;

    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;->onDump(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerMonitor(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 30
    :try_start_0
    new-instance v0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;

    invoke-direct {v0, p0, p1}, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;-><init>(Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->mMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMonitor(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->mMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
