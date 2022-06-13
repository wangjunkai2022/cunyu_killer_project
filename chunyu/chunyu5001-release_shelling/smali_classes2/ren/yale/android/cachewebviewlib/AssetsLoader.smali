.class Lren/yale/android/cachewebviewlib/AssetsLoader;
.super Ljava/lang/Object;
.source "AssetsLoader.java"


# static fields
.field private static volatile assetsLoader:Lren/yale/android/cachewebviewlib/AssetsLoader;


# instance fields
.field private mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCleared:Z

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/lang/String;

.field private mIsSuffixMod:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mCleared:Z

    .line 24
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    return-void
.end method

.method static synthetic access$000(Lren/yale/android/cachewebviewlib/AssetsLoader;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lren/yale/android/cachewebviewlib/AssetsLoader;Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->initResourceNoneRecursion(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object p0

    return-object p0
.end method

.method private addAssetsFile(Ljava/lang/String;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_0
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 2

    .line 27
    sget-object v0, Lren/yale/android/cachewebviewlib/AssetsLoader;->assetsLoader:Lren/yale/android/cachewebviewlib/AssetsLoader;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lren/yale/android/cachewebviewlib/AssetsLoader;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lren/yale/android/cachewebviewlib/AssetsLoader;->assetsLoader:Lren/yale/android/cachewebviewlib/AssetsLoader;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lren/yale/android/cachewebviewlib/AssetsLoader;

    invoke-direct {v1}, Lren/yale/android/cachewebviewlib/AssetsLoader;-><init>()V

    sput-object v1, Lren/yale/android/cachewebviewlib/AssetsLoader;->assetsLoader:Lren/yale/android/cachewebviewlib/AssetsLoader;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lren/yale/android/cachewebviewlib/AssetsLoader;->assetsLoader:Lren/yale/android/cachewebviewlib/AssetsLoader;

    return-object v0
.end method

.method private getUrlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 51
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string p1, "/"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private initResourceNoneRecursion(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 9

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 133
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    iget-object v6, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 137
    array-length v6, v6

    if-nez v6, :cond_0

    .line 138
    invoke-direct {p0, v5}, Lren/yale/android/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 144
    iget-boolean p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mCleared:Z

    if-eqz p1, :cond_2

    goto :goto_5

    .line 147
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 149
    array-length v2, v1

    if-nez v2, :cond_3

    .line 150
    invoke-direct {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_3
    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 153
    iget-object v6, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 154
    array-length v6, v6

    if-nez v6, :cond_4

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lren/yale/android/cachewebviewlib/AssetsLoader;->addAssetsFile(Ljava/lang/String;)V

    goto :goto_4

    .line 157
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    :cond_5
    :goto_5
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mCleared:Z

    .line 112
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResByUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 66
    invoke-direct {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    iget-boolean v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget-object p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p0, v2}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getAssetFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public init(Landroid/content/Context;)Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 0

    .line 42
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mCleared:Z

    return-object p0
.end method

.method public initData()Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 2

    .line 96
    iget-boolean v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    if-nez v0, :cond_0

    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mAssetResSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lren/yale/android/cachewebviewlib/AssetsLoader$1;

    invoke-direct {v1, p0}, Lren/yale/android/cachewebviewlib/AssetsLoader$1;-><init>(Lren/yale/android/cachewebviewlib/AssetsLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object p0
.end method

.method public isAssetsSuffixMod(Z)Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 0

    .line 38
    iput-boolean p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mIsSuffixMod:Z

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;
    .locals 0

    .line 91
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/AssetsLoader;->mDir:Ljava/lang/String;

    return-object p0
.end method
