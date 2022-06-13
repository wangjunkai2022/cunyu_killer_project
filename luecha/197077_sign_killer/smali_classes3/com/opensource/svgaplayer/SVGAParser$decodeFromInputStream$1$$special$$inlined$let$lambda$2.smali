.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2\n*L\n1#1,566:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $bytes:[B

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;


# direct methods
.method constructor <init>([BLcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;->$bytes:[B

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 296
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;

    iget-object v1, v1, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 299
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;->$bytes:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 301
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    check-cast v1, Ljava/lang/Throwable;

    const-string v3, "SVGAParser"

    const-string v4, "create cache file fail."

    invoke-virtual {v2, v3, v4, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method
