.class final Lcom/opensource/svgaplayer/SVGASoundManager$init$1;
.super Ljava/lang/Object;
.source "SVGASoundManager.kt"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGASoundManager;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/media/SoundPool;",
        "kotlin.jvm.PlatformType",
        "soundId",
        "",
        "status",
        "onLoadComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager$init$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/SVGASoundManager$init$1;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGASoundManager$init$1;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager$init$1;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager$init$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    .line 62
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-static {v0}, Lcom/opensource/svgaplayer/SVGASoundManager;->access$getTAG$p(Lcom/opensource/svgaplayer/SVGASoundManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPool onLoadComplete soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 64
    sget-object p1, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-static {p1}, Lcom/opensource/svgaplayer/SVGASoundManager;->access$getSoundCallBackMap$p(Lcom/opensource/svgaplayer/SVGASoundManager;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-static {p1}, Lcom/opensource/svgaplayer/SVGASoundManager;->access$getSoundCallBackMap$p(Lcom/opensource/svgaplayer/SVGASoundManager;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;->onComplete()V

    :cond_0
    return-void
.end method
