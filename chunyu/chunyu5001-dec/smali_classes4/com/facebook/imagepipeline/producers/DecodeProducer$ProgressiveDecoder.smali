.class abstract Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProgressiveDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private mIsFinished:Z

.field private final mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 112
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 113
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 114
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    .line 115
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    const/4 p2, 0x0

    .line 116
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 117
    new-instance p2, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 133
    new-instance p3, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget v1, v1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    invoke-direct {p3, v0, p2, v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 134
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    new-instance p3, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;

    invoke-direct {p3, p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;)V

    invoke-interface {p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object p0
.end method

.method private doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 8

    const-string v0, "DecodeProducer"

    .line 181
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 186
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->getQueuedTime()J

    move-result-wide v4

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v1

    :goto_0
    if-eqz p2, :cond_2

    .line 189
    sget-object v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v2

    :goto_1
    move-object v6, v2

    .line 191
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 194
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$600(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v2

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-virtual {v2, p1, v1, v6, v7}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeImage(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p0

    move-object v3, v1

    move v7, p2

    .line 202
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;Z)Ljava/util/Map;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 204
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void

    :catch_0
    move-exception v1

    move-object v2, p0

    move v7, p2

    .line 196
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;Z)Ljava/util/Map;

    move-result-object p2

    .line 197
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 198
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 199
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p2

    :cond_3
    :goto_2
    return-void
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;Z)Ljava/util/Map;
    .locals 10
    .param p1    # Lcom/facebook/imagepipeline/image/CloseableImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            "J",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-interface {p4}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfGoodEnoughQuality()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    .line 221
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    .line 222
    iget-object p5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p5

    invoke-virtual {p5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 223
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v0, :cond_1

    .line 224
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "bitmapSize"

    const-string v2, "queueTime"

    const-string v4, "hasGoodQuality"

    const-string v6, "isFinal"

    const-string v8, "imageType"

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    move-object v9, p5

    .line 226
    invoke-static/range {v0 .. v9}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "queueTime"

    const-string v2, "hasGoodQuality"

    const-string v4, "isFinal"

    const-string v6, "imageType"

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    move-object v7, p5

    .line 238
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private handleCancellation()V
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;Z)V
    .locals 1

    .line 276
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 278
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p2
.end method

.method private declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    .line 254
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeFinish(Z)V
    .locals 1

    .line 262
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 263
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 268
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->clearJob()V

    return-void

    .line 264
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 268
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
.end method

.method protected abstract getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public onCancellationImpl()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    return-void
.end method

.method public onFailureImpl(Ljava/lang/Throwable;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 147
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 154
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    :cond_3
    return-void
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .line 97
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V

    return-void
.end method

.method protected onProgressUpdateImpl(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float/2addr p1, v0

    .line 161
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->onProgressUpdateImpl(F)V

    return-void
.end method

.method protected updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;Z)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;Z)Z

    move-result p1

    return p1
.end method
