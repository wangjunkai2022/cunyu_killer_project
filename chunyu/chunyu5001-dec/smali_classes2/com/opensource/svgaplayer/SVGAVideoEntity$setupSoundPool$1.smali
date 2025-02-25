.class public final Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1\n*L\n1#1,348:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1",
        "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;",
        "onComplete",
        "",
        "onVolumeChange",
        "value",
        "",
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
.field final synthetic $completionBlock:Lkotlin/jvm/functions/Function0;

.field final synthetic $entity:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field final synthetic $soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$entity:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$completionBlock:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 297
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$entity:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    const-string v2, "entity.audios"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$completionBlock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onVolumeChange(F)V
    .locals 2

    .line 292
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/SVGASoundManager;->setVolume(FLcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method
