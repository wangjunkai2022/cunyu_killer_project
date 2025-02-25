.class public Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IDeviceIdentifiersPolicyProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy$GetSerialForPackage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "device_identifiers"

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

    .line 30
    sget-object v0, Lreflection/android/os/IDeviceIdentifiersPolicyService$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "device_identifiers"

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

    const-string p1, "device_identifiers"

    .line 35
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
