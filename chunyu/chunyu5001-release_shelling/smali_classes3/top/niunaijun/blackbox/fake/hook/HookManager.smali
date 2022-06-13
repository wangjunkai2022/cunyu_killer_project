.class public Ltop/niunaijun/blackbox/fake/hook/HookManager;
.super Ljava/lang/Object;
.source "HookManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HookManager"

.field private static final sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;


# instance fields
.field private final mInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ltop/niunaijun/blackbox/fake/hook/IInjectHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/hook/HookManager;
    .locals 1

    .line 41
    sget-object v0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->sHookManager:Ltop/niunaijun/blackbox/fake/hook/HookManager;

    return-object v0
.end method


# virtual methods
.method addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injectHook"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkEnv(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->isBadEnv()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEnv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is bad env"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HookManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->injectHook()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 45
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 47
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 48
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 50
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 51
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 52
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IAlarmManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 53
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 54
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 56
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/ITelephonyRegistryProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 58
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->get()Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 61
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isR()Z

    .line 64
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IActivityTaskManagerProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 68
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    .line 71
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 75
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN_MR1()Z

    .line 78
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN()Z

    .line 81
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    .line 84
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/fake/service/IJobServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->addInjector(Ltop/niunaijun/blackbox/fake/hook/IInjectHook;)V

    .line 88
    :cond_2
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->injectAll()V

    return-void
.end method

.method injectAll()V
    .locals 2

    .line 104
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/HookManager;->mInjectors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;

    .line 106
    :try_start_0
    invoke-interface {v1}, Ltop/niunaijun/blackbox/fake/hook/IInjectHook;->injectHook()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
