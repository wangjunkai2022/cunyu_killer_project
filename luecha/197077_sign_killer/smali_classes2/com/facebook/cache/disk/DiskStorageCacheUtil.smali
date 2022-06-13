.class public final Lcom/facebook/cache/disk/DiskStorageCacheUtil;
.super Ljava/lang/Object;
.source "DiskStorageCacheUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/cache/disk/DiskStorageCacheUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/cache/disk/DiskStorageCacheUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addDiskCacheEntry(Ljava/lang/Integer;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 32
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 33
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected static clearDiskEntries(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected static deleteDiskCacheEntry(Ljava/lang/Integer;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 41
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected static declared-synchronized readStoredIndex(Landroid/content/SharedPreferences;Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .param p0    # Landroid/content/SharedPreferences;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/cache/disk/DiskStorageCacheUtil;

    monitor-enter v0

    .line 48
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 50
    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 54
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :cond_2
    sget-object v3, Lcom/facebook/cache/disk/DiskStorageCacheUtil;->TAG:Ljava/lang/String;

    const-string v4, "SharedPreference doesn\'t store right data type"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
