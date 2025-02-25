.class public Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IStorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy$GetVolumeList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    sget-object v0, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mount"

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

    .line 36
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const-string v1, "mount"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lreflection/android/os/storage/IStorageManager$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v5, v3}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lreflection/android/os/mount/IMountService$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v5, v3}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    :goto_0
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

    const-string p1, "mount"

    .line 46
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IStorageManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
