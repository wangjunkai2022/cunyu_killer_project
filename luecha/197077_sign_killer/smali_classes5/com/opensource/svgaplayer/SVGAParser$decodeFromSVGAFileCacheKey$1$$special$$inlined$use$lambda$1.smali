.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SVGAParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$1$1$1$1",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$1",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 236
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "SVGAVideoEntity prepare success"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;

    iget-object v2, v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;

    iget-object v3, v3, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method
