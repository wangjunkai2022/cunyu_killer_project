.class public Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy$GetDeviceId;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ITelephonyManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/ITelephonyManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDeviceId"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "getDeviceId"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
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

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
