.class public Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetSubscriberId;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$IsUserDataEnabled;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$getImeiForSlot;,
        Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetDeviceId;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "phone"

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

    .line 32
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "phone"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 33
    sget-object v2, Lreflection/com/android/internal/telephony/ITelephony$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p1, "phone"

    .line 38
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
