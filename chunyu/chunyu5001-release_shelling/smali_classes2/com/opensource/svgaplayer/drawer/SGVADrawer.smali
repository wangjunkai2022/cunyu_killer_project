.class public Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSGVADrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1365#2,9:55\n1587#2,2:64\n1374#2:66\n1587#2,2:67\n*E\n*S KotlinDebug\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n*L\n28#1,9:55\n28#1,2:64\n28#1:66\n46#1,2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001f\u0010\u0016\u001a\u00020\u000f2\u0010\u0010\u0017\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u00000\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019J\u001f\u0010\u001a\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u00000\u00182\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u001bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer;",
        "",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V",
        "scaleInfo",
        "Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;",
        "getScaleInfo",
        "()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;",
        "spritePool",
        "Lcom/opensource/svgaplayer/utils/Pools$SimplePool;",
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
        "getVideoItem",
        "()Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "drawFrame",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "frameIndex",
        "",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "releaseFrameSprites",
        "sprites",
        "",
        "releaseFrameSprites$com_opensource_svgaplayer",
        "requestFrameSprites",
        "requestFrameSprites$com_opensource_svgaplayer",
        "SVGADrawerSprite",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

.field private final spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opensource/svgaplayer/utils/Pools$SimplePool<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;"
        }
    .end annotation
.end field

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 17
    new-instance p1, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    .line 19
    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .locals 6

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scaleType"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide p1

    double-to-float v3, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide p1

    double-to-float v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->performScaleType(FFFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    return-object v0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object v0
.end method

.method public final releaseFrameSprites$com_opensource_svgaplayer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sprites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 46
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requestFrameSprites$com_opensource_svgaplayer(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const/4 v3, 0x0

    if-ltz p1, :cond_3

    .line 29
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 30
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, ".matte"

    .line 31
    invoke-static {v4, v7, v5, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    :goto_1
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_matteKey(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_imageKey(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_4
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
