.class Lcom/tencent/liteav/network/TXCFLVDownloader$1;
.super Landroid/os/Handler;
.source "TXCFLVDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/TXCFLVDownloader;->startInternal(Lcom/tencent/liteav/basic/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/b/a;

.field final synthetic b:Lcom/tencent/liteav/network/TXCFLVDownloader;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/TXCFLVDownloader;Landroid/os/Looper;Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->b:Lcom/tencent/liteav/network/TXCFLVDownloader;

    iput-object p3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 348
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->b:Lcom/tencent/liteav/network/TXCFLVDownloader;

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {p1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->access$300(Lcom/tencent/liteav/network/TXCFLVDownloader;Lcom/tencent/liteav/basic/b/a;)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->b:Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->access$200(Lcom/tencent/liteav/network/TXCFLVDownloader;)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->b:Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-static {p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->access$100(Lcom/tencent/liteav/network/TXCFLVDownloader;)V

    goto :goto_0

    .line 350
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->b:Lcom/tencent/liteav/network/TXCFLVDownloader;

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;->a:Lcom/tencent/liteav/basic/b/a;

    invoke-static {p1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->access$000(Lcom/tencent/liteav/network/TXCFLVDownloader;Lcom/tencent/liteav/basic/b/a;)V

    goto :goto_0

    .line 363
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
