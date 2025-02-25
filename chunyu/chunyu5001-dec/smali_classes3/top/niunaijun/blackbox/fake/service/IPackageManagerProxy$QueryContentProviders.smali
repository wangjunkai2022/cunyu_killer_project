.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryContentProviders;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryContentProviders"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "queryContentProviders"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    const/4 p1, 0x2

    .line 236
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 237
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object p2

    .line 238
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getAppProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v1

    invoke-virtual {p2, p3, v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 239
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
