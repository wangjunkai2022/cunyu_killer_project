.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CanRequestPackageInstalls;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$ResolveContentProvider;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryContentProviders;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetApplicationInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstalledPackages;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstalledApplications;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetServiceInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetActivityInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetReceiverInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetProviderInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageUid;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$SetComponentEnabledSetting;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$ResolveIntent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lreflection/android/app/ActivityThread;->sPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lreflection/android/app/ActivityThread;->sPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

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

    .line 52
    sget-object p1, Lreflection/android/app/ActivityThread;->sPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    move-object v0, p2

    check-cast v0, Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;)V

    const-string p1, "package"

    .line 53
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 54
    sget-object p1, Lreflection/android/app/ActivityThread;->getSystemContext:Lreflection/MirrorReflection$MethodWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    sget-object v0, Lreflection/android/app/ContextImpl;->mPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p1}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "android.app.ApplicationPackageManager"

    .line 58
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    const-string v1, "mPM"

    .line 59
    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
