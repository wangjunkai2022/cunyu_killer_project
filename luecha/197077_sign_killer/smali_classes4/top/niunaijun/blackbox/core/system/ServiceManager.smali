.class public Ltop/niunaijun/blackbox/core/system/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field public static final ACTIVITY_MANAGER:Ljava/lang/String; = "activity_manager"

.field public static final DUMP_MANAGER:Ljava/lang/String; = "dump_manager"

.field public static final PACKAGE_MANAGER:Ljava/lang/String; = "package_manager"

.field public static final STORAGE_MANAGER:Ljava/lang/String; = "storage_manager"

.field public static final USER_MANAGER:Ljava/lang/String; = "user_manager"

.field private static sServiceManager:Ltop/niunaijun/blackbox/core/system/ServiceManager;


# instance fields
.field private final mCaches:Ljava/util/Map;
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
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/ServiceManager;->mCaches:Ljava/util/Map;

    .line 48
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;->get()Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;

    move-result-object v1

    const-string v2, "activity_manager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    const-string v2, "package_manager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->get()Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    move-result-object v1

    const-string v2, "storage_manager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;->get()Ltop/niunaijun/blackbox/core/system/user/BUserManagerService;

    move-result-object v1

    const-string v2, "user_manager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->get()Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    move-result-object v1

    const-string v2, "dump_manager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/ServiceManager;
    .locals 2

    .line 33
    sget-object v0, Ltop/niunaijun/blackbox/core/system/ServiceManager;->sServiceManager:Ltop/niunaijun/blackbox/core/system/ServiceManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Ltop/niunaijun/blackbox/core/system/ServiceManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Ltop/niunaijun/blackbox/core/system/ServiceManager;->sServiceManager:Ltop/niunaijun/blackbox/core/system/ServiceManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ltop/niunaijun/blackbox/core/system/ServiceManager;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/core/system/ServiceManager;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/core/system/ServiceManager;->sServiceManager:Ltop/niunaijun/blackbox/core/system/ServiceManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Ltop/niunaijun/blackbox/core/system/ServiceManager;->sServiceManager:Ltop/niunaijun/blackbox/core/system/ServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/ServiceManager;->get()Ltop/niunaijun/blackbox/core/system/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/system/ServiceManager;->getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServiceInternal(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/ServiceManager;->mCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
