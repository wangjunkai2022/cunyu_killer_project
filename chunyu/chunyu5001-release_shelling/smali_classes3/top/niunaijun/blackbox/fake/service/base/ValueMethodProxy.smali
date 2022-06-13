.class public Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;
.super Ltop/niunaijun/blackbox/fake/hook/MethodHook;
.source "ValueMethodProxy.java"


# instance fields
.field mName:Ljava/lang/String;

.field mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;-><init>()V

    .line 13
    iput-object p2, p0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;->mValue:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

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

    .line 23
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;->mValue:Ljava/lang/Object;

    return-object p1
.end method
