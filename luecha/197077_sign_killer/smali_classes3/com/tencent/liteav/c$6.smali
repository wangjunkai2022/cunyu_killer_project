.class Lcom/tencent/liteav/c$6;
.super Ljava/lang/Object;
.source "TXCLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/c;->onNotifyEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/tencent/liteav/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/c;ILandroid/os/Bundle;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/tencent/liteav/c$6;->c:Lcom/tencent/liteav/c;

    iput p2, p0, Lcom/tencent/liteav/c$6;->a:I

    iput-object p3, p0, Lcom/tencent/liteav/c$6;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/tencent/liteav/c$6;->c:Lcom/tencent/liteav/c;

    iget-object v0, v0, Lcom/tencent/liteav/c;->e:Ljava/lang/ref/WeakReference;

    iget v1, p0, Lcom/tencent/liteav/c$6;->a:I

    iget-object v2, p0, Lcom/tencent/liteav/c$6;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    .line 1023
    iget v0, p0, Lcom/tencent/liteav/c$6;->a:I

    const/16 v1, 0x837

    if-ne v0, v1, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/tencent/liteav/c$6;->c:Lcom/tencent/liteav/c;

    invoke-static {v0}, Lcom/tencent/liteav/c;->f(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/TXCRenderAndDec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/tencent/liteav/c$6;->c:Lcom/tencent/liteav/c;

    invoke-static {v0}, Lcom/tencent/liteav/c;->f(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/TXCRenderAndDec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/TXCRenderAndDec;->restartDecoder()V

    :cond_0
    return-void
.end method
