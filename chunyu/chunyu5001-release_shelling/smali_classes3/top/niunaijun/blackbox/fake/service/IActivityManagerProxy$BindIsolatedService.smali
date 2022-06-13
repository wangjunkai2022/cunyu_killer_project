.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindIsolatedService;
.super Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindIsolatedService"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "bindIsolatedService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
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

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 125
    aput-object v1, p3, v0

    .line 126
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;->beforeHook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
