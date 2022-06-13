.class public Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;
.super Ljava/lang/Object;
.source "BDumpManager.java"


# static fields
.field private static final sDumpManager:Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;


# instance fields
.field private mService:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->sDumpManager:Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;
    .locals 1

    .line 26
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->sDumpManager:Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;

    return-object v0
.end method

.method private getService()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;
    .locals 2

    .line 54
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->mService:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->mService:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    return-object v0

    .line 57
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "dump_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->mService:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    .line 58
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->getService()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->getService()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerMonitor(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 31
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->getService()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->registerMonitor(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
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

    .line 39
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BDumpManager;->getService()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->unregisterMonitor(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
