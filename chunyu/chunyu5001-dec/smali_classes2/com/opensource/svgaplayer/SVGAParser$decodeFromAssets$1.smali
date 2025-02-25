.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1\n*L\n1#1,566:1\n*E\n"
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
.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v0}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMContext$p(Lcom/opensource/svgaplayer/SVGAParser;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 151
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///assets/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 v6, 0x1

    .line 154
    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 155
    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$name:Ljava/lang/String;

    .line 149
    invoke-virtual/range {v2 .. v8}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;->$name:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
