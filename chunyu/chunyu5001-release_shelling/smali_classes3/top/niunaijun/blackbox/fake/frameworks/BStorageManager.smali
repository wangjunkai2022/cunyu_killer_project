.class public Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
.super Ljava/lang/Object;
.source "BStorageManager.java"


# static fields
.field private static final sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;


# instance fields
.field private mService:Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;
    .locals 1

    .line 23
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->sStorageManager:Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    return-object v0
.end method

.method private getService()Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;
    .locals 2

    .line 36
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->mService:Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->mService:Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->mService:Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    .line 40
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getService()Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getService()Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    return-object p1
.end method
