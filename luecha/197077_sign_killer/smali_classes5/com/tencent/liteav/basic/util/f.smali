.class public Lcom/tencent/liteav/basic/util/f;
.super Landroid/os/Handler;
.source "TXCHandler.java"


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/liteav/basic/util/f;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/basic/util/f;->b:Landroid/os/Handler;

    .line 21
    new-instance p1, Lcom/tencent/liteav/basic/util/f$1;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/basic/util/f$1;-><init>(Lcom/tencent/liteav/basic/util/f;)V

    iput-object p1, p0, Lcom/tencent/liteav/basic/util/f;->c:Ljava/lang/Runnable;

    return-void
.end method
