.class Lcom/tencent/liteav/renderer/d$3;
.super Ljava/lang/Object;
.source "TXCTextureViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/renderer/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/d;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d$3;->a:Lcom/tencent/liteav/renderer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->a:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->a(Lcom/tencent/liteav/renderer/d;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/renderer/d$3;->a:Lcom/tencent/liteav/renderer/d;

    invoke-static {v2}, Lcom/tencent/liteav/renderer/d;->b(Lcom/tencent/liteav/renderer/d;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/renderer/d;->a(Lcom/tencent/liteav/renderer/d;II)V

    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->a:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->c(Lcom/tencent/liteav/renderer/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/d;->b(I)V

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->a:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->d(Lcom/tencent/liteav/renderer/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/d;->d(I)V

    return-void
.end method
