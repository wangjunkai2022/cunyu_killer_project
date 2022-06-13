.class public Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;
.super Ljava/lang/Object;
.source "TXCStreamUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/TXCStreamUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RtmpProxyUserInfo"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public playUrl:Ljava/lang/String;

.field public stmType:I

.field final synthetic this$0:Lcom/tencent/liteav/network/TXCStreamUploader;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/network/TXCStreamUploader;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->this$0:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 178
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->account:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->playUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->stmType:I

    return-void
.end method
