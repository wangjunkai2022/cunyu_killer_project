.class Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lbolts/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

.field final synthetic val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic val$preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field final synthetic val$preferredCacheKey:Lcom/facebook/cache/common/CacheKey;

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCacheKey:Lcom/facebook/cache/common/CacheKey;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$000(Lbolts/Task;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DiskCacheProducer"

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$requestId:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    goto/16 :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 128
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    new-instance v2, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCacheKey:Lcom/facebook/cache/common/CacheKey;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/DiskCacheProducer$1;)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$200(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$requestId:Ljava/lang/String;

    const/4 v4, 0x1

    .line 138
    invoke-static {v0, v3, v4}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v5

    .line 135
    invoke-interface {v0, v3, v2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 140
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1, v4}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 141
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$requestId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 146
    invoke-static {p1, v0, v3}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 143
    invoke-interface {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    new-instance v2, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$preferredCacheKey:Lcom/facebook/cache/common/CacheKey;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/DiskCacheProducer$1;)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$200(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :goto_0
    return-object v1
.end method
