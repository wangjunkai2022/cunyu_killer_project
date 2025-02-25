.class public Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IAppOpsManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$NoteOperation;,
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$CheckOperation;,
        Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$CheckPackage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appops"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 5

    .line 33
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "appops"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 34
    sget-object v2, Lreflection/com/android/internal/app/IAppOpsService$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInvocation",
            "proxyInvocation"
        }
    .end annotation

    .line 39
    sget-object p1, Lreflection/android/app/AppOpsManager;->mService:Lreflection/MirrorReflection$FieldWrapper;

    const-string p2, "appops"

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 42
    :try_start_0
    sget-object v0, Lreflection/android/app/AppOpsManager;->mService:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-virtual {v0, p1, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceLastUserId([Ljava/lang/Object;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
