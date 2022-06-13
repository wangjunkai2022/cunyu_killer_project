.class Lcom/tencent/liteav/network/TXCStreamDownloader$3;
.super Ljava/lang/Object;
.source "TXCStreamDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/TXCStreamDownloader;
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

    .line 631
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$3;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$3;->a:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$1100(Lcom/tencent/liteav/network/TXCStreamDownloader;)V

    return-void
.end method
