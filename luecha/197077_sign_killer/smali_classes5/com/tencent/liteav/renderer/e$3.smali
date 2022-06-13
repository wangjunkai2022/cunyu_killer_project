.class Lcom/tencent/liteav/renderer/e$3;
.super Ljava/lang/Object;
.source "TXCVideoRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/e;->d(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/renderer/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/e;II)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    iput p2, p0, Lcom/tencent/liteav/renderer/e$3;->a:I

    iput p3, p0, Lcom/tencent/liteav/renderer/e$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 689
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    iget v1, p0, Lcom/tencent/liteav/renderer/e$3;->a:I

    iput v1, v0, Lcom/tencent/liteav/renderer/e;->m:I

    .line 690
    iget v1, p0, Lcom/tencent/liteav/renderer/e$3;->b:I

    iput v1, v0, Lcom/tencent/liteav/renderer/e;->n:I

    .line 691
    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;)Lcom/tencent/liteav/basic/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;)Lcom/tencent/liteav/basic/e/d;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    .line 693
    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    invoke-static {v3}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    invoke-static {v2}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)[I

    move-result-object v2

    const/4 v5, 0x4

    aget v5, v2, v5

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    iget v6, v2, Lcom/tencent/liteav/renderer/e;->m:I

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    iget v7, v2, Lcom/tencent/liteav/renderer/e;->n:I

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    .line 695
    invoke-static {v2}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)[I

    move-result-object v2

    aget v8, v2, v4

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$3;->c:Lcom/tencent/liteav/renderer/e;

    invoke-static {v2}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v9, v2, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v2, v0

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    .line 692
    invoke-virtual/range {v1 .. v10}, Lcom/tencent/liteav/basic/e/d;->a(IZIIIIIZZ)V

    :cond_1
    return-void
.end method
