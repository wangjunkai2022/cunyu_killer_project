.class public Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy$GetSerialForPackage;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IDeviceIdentifiersPolicyProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IDeviceIdentifiersPolicyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSerialForPackage"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "getSerialForPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 49
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
