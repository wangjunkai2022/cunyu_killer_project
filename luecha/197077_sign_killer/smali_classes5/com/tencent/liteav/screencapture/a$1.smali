.class Lcom/tencent/liteav/screencapture/a$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "VirtualDisplayManager.java"


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

    .line 80
    iput-object p1, p0, Lcom/tencent/liteav/screencapture/a$1;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    const-string v0, "VirtualDisplayManager"

    const-string v1, "MediaProjection session is no longer valid"

    .line 83
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a$1;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v1}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 85
    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a$1;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v1}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/screencapture/a$a;

    .line 87
    iget-object v3, v1, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    if-nez v3, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v3, v1, Lcom/tencent/liteav/screencapture/a$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_1

    .line 91
    iget-object v1, v1, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    invoke-interface {v1}, Lcom/tencent/liteav/screencapture/a$b;->a()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, v1, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    invoke-interface {v1, v2, v2}, Lcom/tencent/liteav/screencapture/a$b;->a(ZZ)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a$1;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;Z)V

    return-void
.end method
