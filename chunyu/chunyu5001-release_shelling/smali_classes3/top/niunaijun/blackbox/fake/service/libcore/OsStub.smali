.class public Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "OsStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OsStub"


# instance fields
.field private mBase:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    .line 22
    sget-object v0, Lreflection/libcore/io/Libcore;->os:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

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

    .line 32
    sget-object p1, Lreflection/libcore/io/Libcore;->os:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {p1, p2}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 48
    aget-object v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBadEnv()Z
    .locals 2

    .line 41
    sget-object v0, Lreflection/libcore/io/Libcore;->os:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method
