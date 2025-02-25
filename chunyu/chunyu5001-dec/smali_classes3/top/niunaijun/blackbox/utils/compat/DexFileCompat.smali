.class public Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;
.super Ljava/lang/Object;
.source "DexFileCompat.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DexFileCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassNameList(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :try_start_0
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getDexFiles(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexFile;

    .line 26
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v1

    const-string v2, "mCookie"

    .line 27
    invoke-virtual {v1, v2}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method private static getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cookie"
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getClassNameList"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    const-class v0, Ldalvik/system/DexFile;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 43
    invoke-virtual {v0, v1, v4}, Ltop/niunaijun/blackbox/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 44
    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    const-class v0, Ldalvik/system/DexFile;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 47
    invoke-virtual {v0, v1, v4}, Ltop/niunaijun/blackbox/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 48
    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCookies(Ldalvik/system/DexFile;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dexFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p0

    const-string v1, "mCookie"

    .line 72
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    .line 74
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    check-cast p0, [J

    check-cast p0, [J

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p0, v2

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getCookies(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getDexFiles(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexFile;

    .line 61
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getCookies(Ldalvik/system/DexFile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    .line 103
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getDexPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    return-object p0

    .line 108
    :cond_0
    :try_start_0
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p0

    const-string v1, "dexElements"

    .line 109
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static getDexFiles(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/DexFileCompat;->getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p0

    .line 90
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 92
    :try_start_0
    invoke-static {v3}, Ltop/niunaijun/blackbox/utils/Reflector;->with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v3

    const-string v4, "dexFile"

    .line 93
    invoke-virtual {v3, v4}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ltop/niunaijun/blackbox/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v3

    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getDexPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 119
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    const-string v1, "pathList"

    .line 120
    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
