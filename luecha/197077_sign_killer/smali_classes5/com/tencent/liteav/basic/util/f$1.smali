.class Lcom/tencent/liteav/basic/util/f$1;
.super Ljava/lang/Object;
.source "TXCHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/util/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/util/f;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/f$1;->a:Lcom/tencent/liteav/basic/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quit looper failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/f$1;->a:Lcom/tencent/liteav/basic/util/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/util/f;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHandler"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
