.class public Lcom/tencent/liteav/basic/util/a;
.super Ljava/lang/Object;
.source "AutoLifeHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/util/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/liteav/basic/util/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/liteav/basic/util/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/basic/util/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/basic/util/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/a;->a:Ljava/lang/ThreadLocal;

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/a;->c:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/a;->b:Lcom/tencent/liteav/basic/util/a$a;

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/a;->b:Lcom/tencent/liteav/basic/util/a$a;

    invoke-interface {v0}, Lcom/tencent/liteav/basic/util/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/liteav/basic/util/a;->c:Ljava/lang/ref/WeakReference;

    .line 35
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/tencent/liteav/basic/util/a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
