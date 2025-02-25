.class Lcom/tencent/liteav/renderer/e$2;
.super Ljava/lang/Object;
.source "TXCVideoRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/basic/e/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/e/k;

.field final synthetic b:Lcom/tencent/liteav/renderer/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/e;Lcom/tencent/liteav/basic/e/k;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$2;->b:Lcom/tencent/liteav/renderer/e;

    iput-object p2, p0, Lcom/tencent/liteav/renderer/e$2;->a:Lcom/tencent/liteav/basic/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$2;->b:Lcom/tencent/liteav/renderer/e;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;)Lcom/tencent/liteav/basic/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$2;->b:Lcom/tencent/liteav/renderer/e;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;)Lcom/tencent/liteav/basic/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/e$2;->a:Lcom/tencent/liteav/basic/e/k;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/d;->a(Lcom/tencent/liteav/basic/e/k;)V

    :cond_0
    return-void
.end method
