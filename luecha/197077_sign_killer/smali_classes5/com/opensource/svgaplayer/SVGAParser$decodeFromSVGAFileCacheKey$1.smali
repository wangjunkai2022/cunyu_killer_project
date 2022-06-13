.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1\n*L\n1#1,566:1\n*E\n"
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
.field final synthetic $alias:Ljava/lang/String;

.field final synthetic $cacheKey:Ljava/lang/String;

.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic $playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, " from svga cachel file to entity end ================"

    const-string v1, "================ decode "

    const-string v2, "SVGAParser"

    .line 219
    :try_start_0
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from svga cachel file to entity ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v5, v3

    check-cast v5, Ljava/io/FileInputStream;

    .line 221
    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v6, v5}, Lcom/opensource/svgaplayer/SVGAParser;->access$readAsBytes(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 222
    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v6, v5}, Lcom/opensource/svgaplayer/SVGAParser;->access$isZipFile(Lcom/opensource/svgaplayer/SVGAParser;[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$cacheKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/opensource/svgaplayer/SVGAParser;->access$decodeFromCacheKey(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v6, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v7, "inflate start"

    invoke-virtual {v6, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v6, v5}, Lcom/opensource/svgaplayer/SVGAParser;->access$inflate(Lcom/opensource/svgaplayer/SVGAParser;[B)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 227
    sget-object v6, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v7, "inflate complete"

    invoke-virtual {v6, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v6, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 229
    sget-object v7, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "MovieEntity.ADAPTER.decode(it)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 230
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$cacheKey:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v8}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMFrameWidth$p(Lcom/opensource/svgaplayer/SVGAParser;)I

    move-result v8

    .line 232
    iget-object v9, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v9}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMFrameHeight$p(Lcom/opensource/svgaplayer/SVGAParser;)I

    move-result v9

    .line 228
    invoke-direct {v6, v5, v7, v8, v9}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 234
    sget-object v5, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v7, "SVGAVideoEntity prepare start"

    invoke-virtual {v5, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v5, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;

    invoke-direct {v5, v6, p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$use$lambda$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 238
    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 235
    invoke-virtual {v6, v5, v7}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 241
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "inflate(bytes) cause exception"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    .line 243
    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    .line 240
    invoke-static {v5, v6, v7, v8}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 247
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "readAsBytes(inputStream) cause exception"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    .line 249
    iget-object v8, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    .line 246
    invoke-static {v5, v6, v7, v8}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 251
    :goto_0
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 255
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 220
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 253
    :try_start_5
    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-static {v4, v3, v5, v6}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 255
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    sget-object v4, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;->$alias:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method
