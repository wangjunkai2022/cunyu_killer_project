.class Lcom/tencent/liteav/audio/impl/route/e$f;
.super Landroid/os/Handler;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/impl/route/e$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/audio/impl/route/e$i;)V
    .locals 1

    .line 275
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 276
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/audio/impl/route/e$i;Lcom/tencent/liteav/audio/impl/route/e$1;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e$f;-><init>(Lcom/tencent/liteav/audio/impl/route/e$i;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/route/e$i;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/route/e$i;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
