.class public Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
.super Ljava/lang/Object;
.source "BActivityManager.java"


# static fields
.field private static final sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;


# instance fields
.field private mService:Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;
    .locals 1

    .line 23
    sget-object v0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->sActivityManager:Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    return-object v0
.end method

.method private getService()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;
    .locals 2

    .line 35
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->mService:Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->mService:Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->mService:Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    .line 39
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .line 28
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->getService()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
