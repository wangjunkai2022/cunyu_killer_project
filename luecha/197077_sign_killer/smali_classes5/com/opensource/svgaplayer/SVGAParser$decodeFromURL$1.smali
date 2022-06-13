.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $cacheKey:Ljava/lang/String;

.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic $playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field final synthetic $urlPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$urlPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 180
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$urlPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$decodeFromCacheKey(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;->$urlPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
