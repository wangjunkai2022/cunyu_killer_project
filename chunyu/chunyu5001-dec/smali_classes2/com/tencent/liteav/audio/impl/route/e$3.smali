.class Lcom/tencent/liteav/audio/impl/route/e$3;
.super Ljava/lang/Object;
.source "TXCAudioRouteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/route/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;Z)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$3;->b:Lcom/tencent/liteav/audio/impl/route/e;

    iput-boolean p2, p0, Lcom/tencent/liteav/audio/impl/route/e$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY"

    .line 1532
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_OPERATION"

    const-string v2, "NOTIFY_DEVICECHANGABLE_UPDATE"

    .line 1533
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$3;->a:Z

    const-string v2, "NOTIFY_DEVICECHANGABLE_UPDATE_DATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1536
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$3;->b:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$3;->b:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
