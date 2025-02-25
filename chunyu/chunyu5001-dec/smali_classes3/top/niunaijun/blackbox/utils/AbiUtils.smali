.class public Ltop/niunaijun/blackbox/utils/AbiUtils;
.super Ljava/lang/Object;
.source "AbiUtils.java"


# static fields
.field private static final sAbiUtilsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ltop/niunaijun/blackbox/utils/AbiUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLibs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 50
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lib/arm64-v8a"

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    iget-object v2, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "arm64-v8a"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v4, "lib/armeabi"

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    iget-object v2, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "armeabi"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v4, "lib/armeabi-v7a"

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v4, "armeabi-v7a"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    .line 62
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 60
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 62
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 63
    throw p1
.end method

.method public static isSupport(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .line 27
    sget-object v0, Ltop/niunaijun/blackbox/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/utils/AbiUtils;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ltop/niunaijun/blackbox/utils/AbiUtils;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/utils/AbiUtils;-><init>(Ljava/io/File;)V

    .line 30
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/utils/AbiUtils;->isEmptyAib()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 36
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->is64Bit()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/utils/AbiUtils;->is64Bit()Z

    move-result p0

    return p0

    .line 39
    :cond_2
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/utils/AbiUtils;->is32Bit()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public is32Bit()Z
    .locals 2

    .line 71
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public is64Bit()Z
    .locals 2

    .line 67
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "arm64-v8a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmptyAib()Z
    .locals 1

    .line 75
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
