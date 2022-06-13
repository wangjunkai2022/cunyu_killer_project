.class public Ltop/niunaijun/blackbox/utils/compat/PackageParserCompat;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "p",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 43
    sget-object p0, Lreflection/android/content/pm/PackageParserPie;->collectCertificates:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-virtual {p0, p2}, Lreflection/MirrorReflection$StaticMethodWrapper;->callWithException([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object p0, Lreflection/android/content/pm/PackageParserNougat;->collectCertificates:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lreflection/MirrorReflection$StaticMethodWrapper;->callWithException([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lreflection/android/content/pm/PackageParserMarshmallow;->collectCertificates:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    sget-object v0, Lreflection/android/content/pm/PackageParserLollipop22;->collectCertificates:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    sget-object v0, Lreflection/android/content/pm/PackageParserLollipop;->collectCertificates:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Lreflection/android/content/pm/PackageParser;->collectCertificates:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageFile"
        }
    .end annotation

    .line 17
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    sget-object p0, Lreflection/android/content/pm/PackageParserMarshmallow;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object p0, Lreflection/android/content/pm/PackageParserLollipop22;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    .line 21
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    sget-object p0, Lreflection/android/content/pm/PackageParserLollipop;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    .line 24
    :cond_2
    sget-object v0, Lreflection/android/content/pm/PackageParser;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection$ConstructorWrapper;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0
.end method

.method public static parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "packageFile",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isM()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lreflection/android/content/pm/PackageParserMarshmallow;->parsePackage:Lreflection/MirrorReflection$MethodWrapper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    .line 31
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lreflection/android/content/pm/PackageParserLollipop22;->parsePackage:Lreflection/MirrorReflection$MethodWrapper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    .line 33
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lreflection/android/content/pm/PackageParserLollipop;->parsePackage:Lreflection/MirrorReflection$MethodWrapper;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    .line 36
    :cond_2
    sget-object v0, Lreflection/android/content/pm/PackageParser;->parsePackage:Lreflection/MirrorReflection$MethodWrapper;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 p1, 0x0

    aput-object p1, v4, v1

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object p1, v4, v3

    const/4 p1, 0x3

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    .line 36
    invoke-virtual {v0, p0, v4}, Lreflection/MirrorReflection$MethodWrapper;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0
.end method
