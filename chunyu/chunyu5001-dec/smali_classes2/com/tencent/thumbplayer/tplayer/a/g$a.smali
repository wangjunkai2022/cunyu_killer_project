.class Lcom/tencent/thumbplayer/tplayer/a/g$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tplayer/a/g;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tplayer/a/g;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tplayer/a/g;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tplayer/a/g;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tplayer/a/g;)Lcom/tencent/thumbplayer/tplayer/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tplayer/a/g;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tplayer/a/g;)Lcom/tencent/thumbplayer/tplayer/a/a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/tencent/thumbplayer/tplayer/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tplayer/a/g;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/tplayer/a/g;->b(Lcom/tencent/thumbplayer/tplayer/a/g;ILjava/lang/Object;)V

    return-void
.end method
