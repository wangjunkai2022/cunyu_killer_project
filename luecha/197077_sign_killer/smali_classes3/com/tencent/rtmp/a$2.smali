.class Lcom/tencent/rtmp/a$2;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I
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

    .line 673
    iput-object p1, p0, Lcom/tencent/rtmp/a$2;->a:Lcom/tencent/rtmp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/tencent/liteav/basic/structs/TXSVideoFrame;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 676
    iget p1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    if-lez p1, :cond_1

    iget p1, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    if-gtz p1, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/tencent/rtmp/a$2;->a:Lcom/tencent/rtmp/a;

    invoke-static {p1}, Lcom/tencent/rtmp/a;->e(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 680
    new-instance p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;

    invoke-direct {p2}, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;-><init>()V

    .line 681
    iget v0, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->textureId:I

    iput v0, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->textureId:I

    .line 682
    iget v0, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iput v0, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->width:I

    .line 683
    iget v0, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    iput v0, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->height:I

    .line 684
    iget-object p3, p3, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->eglContext:Ljava/lang/Object;

    iput-object p3, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    .line 685
    invoke-interface {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;->onRenderVideoFrame(Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;)V

    :cond_1
    :goto_0
    return-void
.end method
