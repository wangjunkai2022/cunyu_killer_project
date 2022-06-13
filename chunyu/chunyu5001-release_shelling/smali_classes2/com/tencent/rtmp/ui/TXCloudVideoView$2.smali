.class Lcom/tencent/rtmp/ui/TXCloudVideoView$2;
.super Ljava/lang/Object;
.source "TXCloudVideoView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/ui/TXCloudVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/ui/TXCloudVideoView;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .line 426
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/liteav/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/liteav/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/i;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_9

    .line 428
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3e4ccccd    # 0.2f

    if-lez v3, :cond_1

    int-to-float p1, v0

    div-float/2addr v6, p1

    .line 430
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result p1

    sub-int p1, v0, p1

    int-to-float p1, p1

    mul-float/2addr v6, p1

    add-float p1, v6, v2

    cmpg-float v3, p1, v5

    if-gtz v3, :cond_2

    move p1, v5

    goto :goto_1

    :cond_1
    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    int-to-float p1, v0

    div-float/2addr v6, p1

    .line 436
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v6, p1

    sub-float p1, v2, v6

    cmpl-float v3, p1, v4

    if-ltz v3, :cond_2

    move p1, v4

    .line 442
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 443
    iget-object v4, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v4}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result v4

    if-ne v3, v4, :cond_4

    cmpl-float v4, p1, v2

    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    cmpg-float v4, p1, v2

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    :cond_4
    :goto_2
    if-lt v3, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    const/4 v3, 0x1

    if-gt v0, v3, :cond_6

    move v0, v3

    :cond_6
    cmpl-float v3, p1, v2

    if-lez v3, :cond_7

    .line 461
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 462
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result v0

    goto :goto_4

    :cond_7
    cmpg-float p1, p1, v2

    if-gez p1, :cond_8

    .line 466
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result p1

    if-le v0, p1, :cond_8

    .line 467
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result v0

    .line 471
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$502(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I

    .line 472
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/liteav/i;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 473
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/liteav/i;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/tencent/liteav/i;->a(I)Z

    :cond_9
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
