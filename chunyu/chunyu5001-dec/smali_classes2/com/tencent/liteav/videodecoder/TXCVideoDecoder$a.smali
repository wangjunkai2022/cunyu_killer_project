.class Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;
.super Landroid/os/Handler;
.source "TXCVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/liteav/videodecoder/b;

.field b:Lcom/tencent/liteav/videodecoder/g;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z

.field f:Landroid/view/Surface;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0}, Lcom/tencent/liteav/videodecoder/b;->stop()V

    .line 690
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 691
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 692
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    .line 694
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:decode: stop decode hwdec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoDecoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    const-string v1, "TXCVideoDecoder"

    if-eqz v0, :cond_0

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play:decode: start decode ignore hwdec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    if-eqz v0, :cond_1

    .line 716
    new-instance v0, Lcom/tencent/liteav/videodecoder/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    goto :goto_0

    .line 718
    :cond_1
    new-instance v0, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/TXCVideoFfmpegDecoder;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    .line 720
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->b:Lcom/tencent/liteav/videodecoder/g;

    invoke-interface {v0, v2}, Lcom/tencent/liteav/videodecoder/b;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 721
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->c:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v2}, Lcom/tencent/liteav/videodecoder/b;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 722
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->f:Landroid/view/Surface;

    invoke-interface {v0, v2}, Lcom/tencent/liteav/videodecoder/b;->config(Landroid/view/Surface;)I

    .line 723
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->g:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->h:Ljava/nio/ByteBuffer;

    iget-boolean v4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->e:Z

    invoke-interface {v0, v2, v3, p1, v4}, Lcom/tencent/liteav/videodecoder/b;->start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play:decode: start decode hwdec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", h265: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    .line 699
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play:decode: restart decode hwdec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVideoDecoder"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    if-eqz p1, :cond_0

    .line 702
    invoke-interface {p1}, Lcom/tencent/liteav/videodecoder/b;->stop()V

    .line 703
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videodecoder/b;->setListener(Lcom/tencent/liteav/videodecoder/g;)V

    .line 704
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videodecoder/b;->setNotifyListener(Ljava/lang/ref/WeakReference;)V

    .line 705
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    .line 707
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a(Z)V

    return-void
.end method

.method private a([BJJI)V
    .locals 1

    .line 677
    new-instance v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    .line 678
    iput-object p1, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    .line 679
    iput-wide p2, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    .line 680
    iput-wide p4, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    .line 681
    iput p6, v0, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    .line 682
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a:Lcom/tencent/liteav/videodecoder/b;

    if-eqz p1, :cond_0

    .line 683
    invoke-interface {p1, v0}, Lcom/tencent/liteav/videodecoder/b;->decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZZLandroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/tencent/liteav/videodecoder/g;Lcom/tencent/liteav/basic/c/b;)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->e:Z

    .line 627
    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->d:Z

    .line 628
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->f:Landroid/view/Surface;

    .line 629
    iput-object p4, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->g:Ljava/nio/ByteBuffer;

    .line 630
    iput-object p5, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->h:Ljava/nio/ByteBuffer;

    .line 631
    iput-object p6, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->b:Lcom/tencent/liteav/videodecoder/g;

    .line 632
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 637
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 657
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a(ZZ)V

    goto :goto_1

    .line 654
    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a()V

    goto :goto_1

    .line 643
    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nal"

    .line 644
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "pts"

    .line 645
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "dts"

    .line 646
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "codecId"

    .line 647
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v1, p0

    .line 648
    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a([BJJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode frame failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVideoDecoder"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$a;->a(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
