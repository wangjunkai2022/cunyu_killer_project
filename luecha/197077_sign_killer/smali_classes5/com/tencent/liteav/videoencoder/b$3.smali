.class Lcom/tencent/liteav/videoencoder/b$3;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoencoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$3;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1413
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$3;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoencoder/b;->b(Lcom/tencent/liteav/videoencoder/b;J)J

    .line 1414
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$3;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->l(Lcom/tencent/liteav/videoencoder/b;)V

    .line 1415
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$3;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->m(Lcom/tencent/liteav/videoencoder/b;)V

    .line 1416
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$3;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->n(Lcom/tencent/liteav/videoencoder/b;)Z

    return-void
.end method
