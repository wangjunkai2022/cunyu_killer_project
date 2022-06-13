.class Lcom/tencent/liteav/audio/impl/route/e$1;
.super Ljava/lang/Object;
.source "TXCAudioRouteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->e:Lcom/tencent/liteav/audio/impl/route/e;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->b:Ljava/lang/Long;

    iput-object p4, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1476
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    const-string v1, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->b:Ljava/lang/Long;

    const-string v2, "PARAM_SESSIONID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1478
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->c:Ljava/lang/String;

    const-string v2, "PARAM_OPERATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->d:I

    const-string v2, "PARAM_RES_ERRCODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
