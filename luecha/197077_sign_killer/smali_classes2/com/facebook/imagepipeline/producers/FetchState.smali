.class public Lcom/facebook/imagepipeline/producers/FetchState;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field private final mConsumer:Lcom/facebook/imagepipeline/producers/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private mLastIntermediateResultTimeMs:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mConsumer:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 31
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-wide/16 p1, 0x0

    .line 32
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mLastIntermediateResultTimeMs:J

    return-void
.end method


# virtual methods
.method public getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mConsumer:Lcom/facebook/imagepipeline/producers/Consumer;

    return-object v0
.end method

.method public getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastIntermediateResultTimeMs()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mLastIntermediateResultTimeMs:J

    return-wide v0
.end method

.method public getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setLastIntermediateResultTimeMs(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/FetchState;->mLastIntermediateResultTimeMs:J

    return-void
.end method
