.class Lcom/tencent/rtmp/a$3;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/a;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/a;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/tencent/rtmp/a$3;->a:Lcom/tencent/rtmp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V
    .locals 4

    if-eqz p3, :cond_2

    .line 709
    iget p1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    if-lez p1, :cond_2

    iget p1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    if-gtz p1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    iget-object p1, p0, Lcom/tencent/rtmp/a$3;->a:Lcom/tencent/rtmp/a;

    invoke-static {p1}, Lcom/tencent/rtmp/a;->f(Lcom/tencent/rtmp/a;)[B

    move-result-object p1

    .line 711
    iget-object p2, p0, Lcom/tencent/rtmp/a$3;->a:Lcom/tencent/rtmp/a;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;[B)[B

    .line 712
    iget-object p2, p0, Lcom/tencent/rtmp/a$3;->a:Lcom/tencent/rtmp/a;

    invoke-static {p2}, Lcom/tencent/rtmp/a;->g(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 714
    array-length v0, p1

    iget v1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v2, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1

    .line 715
    invoke-virtual {p3, p1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->loadYUVArray([B)V

    .line 716
    iget v0, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    iget-wide v2, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->pts:J

    long-to-int v2, v2

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;->onVideoRawDataAvailable([BIII)V

    .line 717
    invoke-virtual {p3}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->release()V

    goto :goto_0

    :cond_1
    const-string p1, "TXLivePlayer"

    const-string p2, "raw data buffer length is too large"

    .line 719
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
