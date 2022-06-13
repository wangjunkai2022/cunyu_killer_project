.class public Lcom/tencent/rtmp/TXImageSprite;
.super Ljava/lang/Object;
.source "TXImageSprite.java"

# interfaces
.implements Lcom/tencent/rtmp/a/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageSprite:Lcom/tencent/rtmp/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getThumbnail(F)Landroid/graphics/Bitmap;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/rtmp/a/a;->getThumbnail(F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public release()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/tencent/rtmp/a/a;->release()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    :cond_0
    return-void
.end method

.method public setVTTUrlAndImageUrls(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/tencent/rtmp/TXImageSprite;->release()V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->bE:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Lcom/tencent/rtmp/a/b;

    invoke-direct {v0}, Lcom/tencent/rtmp/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    .line 42
    iget-object v0, p0, Lcom/tencent/rtmp/TXImageSprite;->mImageSprite:Lcom/tencent/rtmp/a/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/a/a;->setVTTUrlAndImageUrls(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method
