.class Lcom/tencent/liteav/basic/a/a$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/liteav/basic/a/a$1;->a:Lcom/tencent/liteav/basic/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/basic/a/a$1;->a:Lcom/tencent/liteav/basic/a/a;

    invoke-static {p1}, Lcom/tencent/liteav/basic/a/a;->a(Lcom/tencent/liteav/basic/a/a;)V

    :goto_0
    return-void
.end method
