.class Lcom/tencent/liteav/audio/impl/route/e$2;
.super Ljava/lang/Object;
.source "TXCAudioRouteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/route/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;)V
    .locals 0

    .line 1511
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$2;->b:Lcom/tencent/liteav/audio/impl/route/e;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1514
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$2;->b:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$2;->b:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$2;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
