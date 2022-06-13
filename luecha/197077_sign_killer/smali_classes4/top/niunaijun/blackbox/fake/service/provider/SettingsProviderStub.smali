.class public Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "SettingsProviderStub.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/service/provider/VContentProvider;


# instance fields
.field private mBase:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->mBase:Landroid/os/IInterface;

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

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 53
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget-object v0, p3, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    .line 57
    :cond_1
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    return-void
.end method

.method public wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentProviderProxy",
            "appPkg"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->mBase:Landroid/os/IInterface;

    .line 24
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->injectHook()V

    .line 25
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
