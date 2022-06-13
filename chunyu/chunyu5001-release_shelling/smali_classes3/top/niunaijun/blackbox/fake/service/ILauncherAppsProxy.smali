.class public Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "ILauncherAppsProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "launcherapps"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 6

    .line 28
    sget-object v0, Lreflection/android/content/pm/ILauncherApps$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "launcherapps"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v3, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
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

    const-string p1, "launcherapps"

    .line 33
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/ILauncherAppsProxy;->replaceSystemService(Ljava/lang/String;)V

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

    .line 48
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindMethod()V
    .locals 0

    .line 43
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    return-void
.end method
