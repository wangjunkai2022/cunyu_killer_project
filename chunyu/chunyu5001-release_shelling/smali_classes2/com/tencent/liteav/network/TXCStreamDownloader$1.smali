.class Lcom/tencent/liteav/network/TXCStreamDownloader$1;
.super Ljava/lang/Object;
.source "TXCStreamDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/TXCStreamDownloader;->onRestartDownloader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/TXCStreamDownloader;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/TXCStreamDownloader;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->stop()V

    .line 222
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z

    move-result v3

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$300(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z

    move-result v5

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$400(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/network/TXCStreamDownloader;->start(Ljava/lang/String;ZIZZ)I

    return-void
.end method
