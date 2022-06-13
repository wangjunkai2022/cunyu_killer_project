.class public Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy$NoteOperation;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "IAppOpsManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IAppOpsManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteOperation"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "noteOperation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
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

    .line 83
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
