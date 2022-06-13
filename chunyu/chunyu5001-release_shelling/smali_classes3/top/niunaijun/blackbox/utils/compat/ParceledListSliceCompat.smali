.class public Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;
.super Ljava/lang/Object;
.source "ParceledListSliceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    sget-object v0, Lreflection/android/content/pm/ParceledListSliceJBMR2;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lreflection/android/content/pm/ParceledListSliceJBMR2;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    sget-object v0, Lreflection/android/content/pm/ParceledListSlice;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    sget-object v4, Lreflection/android/content/pm/ParceledListSlice;->append:Lreflection/MirrorReflection$MethodWrapper;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v4, v0, v5}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Lreflection/android/content/pm/ParceledListSlice;->setLastSlice:Lreflection/MirrorReflection$MethodWrapper;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static isParceledListSlice(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lreflection/android/content/pm/ParceledListSlice;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v0}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lreflection/android/content/pm/ParceledListSlice;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v0}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
