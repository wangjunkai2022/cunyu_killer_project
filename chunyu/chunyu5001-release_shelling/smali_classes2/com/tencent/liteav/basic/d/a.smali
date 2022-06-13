.class public Lcom/tencent/liteav/basic/d/a;
.super Ljava/lang/Object;
.source "MediaCodecHelper.java"


# static fields
.field protected static volatile a:Lcom/tencent/liteav/basic/d/a;


# instance fields
.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/d/a;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/d/a;->c:Z

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/liteav/basic/d/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/basic/d/a$1;-><init>(Lcom/tencent/liteav/basic/d/a;)V

    const-string v2, "MediaCodecHelper"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Lcom/tencent/liteav/basic/d/a;
    .locals 2

    .line 18
    sget-object v0, Lcom/tencent/liteav/basic/d/a;->a:Lcom/tencent/liteav/basic/d/a;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/tencent/liteav/basic/d/a;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/d/a;->a:Lcom/tencent/liteav/basic/d/a;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/tencent/liteav/basic/d/a;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/d/a;-><init>()V

    sput-object v1, Lcom/tencent/liteav/basic/d/a;->a:Lcom/tencent/liteav/basic/d/a;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/basic/d/a;->a:Lcom/tencent/liteav/basic/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/d/a;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/tencent/liteav/basic/d/a;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/d/a;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/d/a;->c:Z

    return p1
.end method

.method public static b()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/tencent/liteav/basic/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/d/a;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/d/a;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/tencent/liteav/basic/d/a;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/d/a;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/d/a;->b:Z

    return p1
.end method

.method public static c()Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/tencent/liteav/basic/d/a;->a()Lcom/tencent/liteav/basic/d/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/tencent/liteav/basic/d/a;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 3

    .line 52
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v0

    const-string v1, "cached_h265_decode_capability"

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/util/g;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
