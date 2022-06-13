.class public final Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SVGADrawerSprite"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0086\u0004\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\tR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\rR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
        "",
        "_matteKey",
        "",
        "_imageKey",
        "_frameEntity",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V",
        "get_frameEntity",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "set_frameEntity",
        "(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V",
        "get_imageKey",
        "()Ljava/lang/String;",
        "set_imageKey",
        "(Ljava/lang/String;)V",
        "get_matteKey",
        "set_matteKey",
        "frameEntity",
        "getFrameEntity",
        "imageKey",
        "getImageKey",
        "matteKey",
        "getMatteKey",
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
.field private _frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

.field private _imageKey:Ljava/lang/String;

.field private _matteKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ")V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 21
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p3, v0

    check-cast p3, Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p4, v0

    check-cast p4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    return-void
.end method


# virtual methods
.method public final getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final getImageKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-object v0
.end method

.method public final get_frameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-object v0
.end method

.method public final get_imageKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final get_matteKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-object v0
.end method

.method public final set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public final set_imageKey(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-void
.end method

.method public final set_matteKey(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-void
.end method
