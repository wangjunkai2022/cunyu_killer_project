.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1\n*L\n1#1,566:1\n*E\n"
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

.field final synthetic $closeInputStream:Z

.field final synthetic $inputStream:Ljava/io/InputStream;

.field final synthetic $playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    iput-object p6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    iput-boolean p7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$closeInputStream:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$inputStream:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->access$readAsBytes(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 276
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v1, v0}, Lcom/opensource/svgaplayer/SVGAParser;->access$isZipFile(Lcom/opensource/svgaplayer/SVGAParser;[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "decode from zip file"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$isUnzipping$p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    :cond_0
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$getFileLock$p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 280
    :try_start_1
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 281
    invoke-static {v2}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    .line 282
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "SVGAParser"

    const-string v4, "no cached, prepare to unzip"

    invoke-virtual {v2, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/io/ByteArrayInputStream;

    .line 284
    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    check-cast v3, Ljava/io/InputStream;

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/opensource/svgaplayer/SVGAParser;->access$unzip(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 285
    invoke-static {v3}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    .line 286
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "SVGAParser"

    const-string v5, "unzip success"

    invoke-virtual {v3, v4, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 289
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 279
    :try_start_6
    monitor-exit v1

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$decodeFromCacheKey(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    .line 279
    monitor-exit v1

    throw v0

    .line 293
    :cond_3
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v1

    if-nez v1, :cond_4

    .line 295
    sget-object v1, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->getThreadPoolExecutor$com_opensource_svgaplayer()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;

    invoke-direct {v2, v0, p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2;-><init>([BLcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 307
    :cond_4
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "inflate start"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v1, v0}, Lcom/opensource/svgaplayer/SVGAParser;->access$inflate(Lcom/opensource/svgaplayer/SVGAParser;[B)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "inflate complete"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 311
    sget-object v2, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MovieEntity.ADAPTER.decode(it)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 312
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$cacheKey:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMFrameWidth$p(Lcom/opensource/svgaplayer/SVGAParser;)I

    move-result v3

    .line 314
    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-static {v4}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMFrameHeight$p(Lcom/opensource/svgaplayer/SVGAParser;)I

    move-result v4

    .line 310
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 316
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "SVGAVideoEntity prepare start"

    invoke-virtual {v0, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$3;

    invoke-direct {v0, v1, p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$3;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 320
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 317
    invoke-virtual {v1, v0, v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    goto :goto_1

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 323
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "inflate(bytes) cause exception"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    .line 325
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    .line 322
    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 329
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "readAsBytes(inputStream) cause exception"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    .line 331
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    .line 328
    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 336
    :goto_1
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$closeInputStream:Z

    if-eqz v0, :cond_7

    .line 337
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_7
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 334
    :try_start_7
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 336
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$closeInputStream:Z

    if-eqz v0, :cond_8

    .line 337
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_8
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "================ decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from input stream end ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :goto_3
    iget-boolean v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$closeInputStream:Z

    if-eqz v1, :cond_9

    .line 337
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_9
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;->$alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from input stream end ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SVGAParser"

    invoke-virtual {v1, v3, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
