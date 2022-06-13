.class public final synthetic Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;->INSTANCE:Lcom/google/android/exoplayer2/source/chunk/-$$Lambda$MediaParserChunkExtractor$dr_5GOCUoRNxJbz4KsQo7C7RGmU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->lambda$static$0(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object p1

    return-object p1
.end method
