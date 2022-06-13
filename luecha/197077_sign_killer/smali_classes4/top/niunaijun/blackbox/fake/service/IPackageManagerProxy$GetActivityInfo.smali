.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetActivityInfo;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetActivityInfo"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "getActivityInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 162
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 166
    :cond_0
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isOpenPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
