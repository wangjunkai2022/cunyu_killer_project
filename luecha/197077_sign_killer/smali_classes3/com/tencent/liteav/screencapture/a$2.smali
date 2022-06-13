.class Lcom/tencent/liteav/screencapture/a$2;
.super Ljava/lang/Object;
.source "VirtualDisplayManager.java"

# interfaces
.implements Lcom/tencent/liteav/basic/util/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/screencapture/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/screencapture/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/screencapture/a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tencent/liteav/screencapture/a$2;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a$2;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v0}, Lcom/tencent/liteav/screencapture/a;->b(Lcom/tencent/liteav/screencapture/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;Landroid/content/Context;)Z

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a$2;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v1}, Lcom/tencent/liteav/screencapture/a;->c(Lcom/tencent/liteav/screencapture/a;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a$2;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v1, v0}, Lcom/tencent/liteav/screencapture/a;->b(Lcom/tencent/liteav/screencapture/a;Z)Z

    .line 109
    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a$2;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v1}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/screencapture/a$a;

    .line 110
    iget-object v3, v2, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    if-eqz v3, :cond_1

    .line 111
    iget-object v2, v2, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    invoke-interface {v2, v0}, Lcom/tencent/liteav/screencapture/a$b;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
