.class public Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;
.super Ljava/lang/Object;
.source "CacheExtensionConfig.java"


# static fields
.field private static NO_CACH:Ljava/util/HashSet;

.field private static STATIC:Ljava/util/HashSet;


# instance fields
.field private no_cache:Ljava/util/HashSet;

.field private statics:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig$1;

    invoke-direct {v0}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig$1;-><init>()V

    sput-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    .line 39
    new-instance v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig$2;

    invoke-direct {v0}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig$2;-><init>()V

    sput-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->no_cache:Ljava/util/HashSet;

    return-void
.end method

.method private static add(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    const-string v1, ""

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addGlobalExtension(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->add(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method

.method private static remove(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    const-string v1, ""

    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeGlobalExtension(Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->remove(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;
    .locals 1

    .line 103
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->add(Ljava/util/HashSet;Ljava/lang/String;)V

    return-object p0
.end method

.method public canCache(Ljava/lang/String;)Z
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->STATIC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_1
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearAll()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->clearDiskExtension()V

    return-void
.end method

.method public clearDiskExtension()V
    .locals 1

    .line 128
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public isHtml(Ljava/lang/String;)Z
    .locals 3

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isMedia(Ljava/lang/String;)Z
    .locals 1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    sget-object v0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->NO_CACH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_1
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->no_cache:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeExtension(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;
    .locals 1

    .line 108
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->statics:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->remove(Ljava/util/HashSet;Ljava/lang/String;)V

    return-object p0
.end method
