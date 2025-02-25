.class synthetic Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;
.super Ljava/lang/Object;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$imageformat$ImageFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    invoke-static {}, Lcom/facebook/imageformat/ImageFormat;->values()[Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/facebook/imagepipeline/producers/WebpTranscodeProducer$2;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
