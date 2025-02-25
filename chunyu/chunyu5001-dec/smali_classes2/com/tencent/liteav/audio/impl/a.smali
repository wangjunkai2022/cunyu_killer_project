.class public Lcom/tencent/liteav/audio/impl/a;
.super Ljava/lang/Object;
.source "TXCTelephonyMgr.java"


# static fields
.field private static final a:Lcom/tencent/liteav/audio/impl/a;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/impl/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/telephony/PhoneStateListener;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/tencent/liteav/audio/impl/a;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/a;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/impl/a;->a:Lcom/tencent/liteav/audio/impl/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/a;->c:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->c:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method public static a()Lcom/tencent/liteav/audio/impl/a;
    .locals 1

    .line 29
    sget-object v0, Lcom/tencent/liteav/audio/impl/a;->a:Lcom/tencent/liteav/audio/impl/a;

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/impl/b;

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1, p1}, Lcom/tencent/liteav/audio/impl/b;->onCallStateChanged(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/a;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->d:Landroid/content/Context;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Lcom/tencent/liteav/audio/impl/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/impl/a$1;-><init>(Lcom/tencent/liteav/audio/impl/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized a(Lcom/tencent/liteav/audio/impl/b;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 37
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    new-instance v1, Lcom/tencent/liteav/audio/impl/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/a$2;-><init>(Lcom/tencent/liteav/audio/impl/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
