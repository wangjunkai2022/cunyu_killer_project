.class public abstract Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.super Ljava/lang/Object;
.source "ClassInvocationStub.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;


# static fields
.field public static final TAG:Ljava/lang/String; = "ClassInvocationStub"


# instance fields
.field private mBase:Ljava/lang/Object;

.field private mMethodHookMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/fake/hook/MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyInvocation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "methodHook"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodHook"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getBase()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    return-object v0
.end method

.method protected getProxyInvocation()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getWho()Ljava/lang/Object;
.end method

.method protected initAnnotation(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 67
    const-class v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;->name()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    invoke-virtual {p0, v0, v1}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :cond_0
    :goto_0
    const-class v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ProxyMethods;->value()[Ljava/lang/String;

    move-result-object v0

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    invoke-virtual {p0, v3, v4}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->addMethodHook(Ljava/lang/String;Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected abstract inject(Ljava/lang/Object;Ljava/lang/Object;)V
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
.end method

.method public injectHook()V
    .locals 8

    .line 47
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->getWho()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mProxyInvocation:Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->inject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->onBindMethod()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 54
    invoke-virtual {p0, v4}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ltop/niunaijun/blackbox/fake/hook/ScanClass;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/fake/hook/ScanClass;

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {v0}, Ltop/niunaijun/blackbox/fake/hook/ScanClass;->value()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 59
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 60
    invoke-virtual {p0, v7}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->initAnnotation(Ljava/lang/Class;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 101
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mMethodHookMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/fake/hook/MethodHook;

    if-nez p1, :cond_0

    .line 104
    :try_start_0
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 110
    :cond_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->beforeHook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/fake/hook/MethodHook;->afterHook(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onBindMethod()V
    .locals 0

    return-void
.end method
