.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;->INSTANCE:Lcom/google/android/exoplayer2/source/-$$Lambda$kK1JHkwGcOZQwzkZeIwJrbU9SDs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor()Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;-><init>()V

    check-cast v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    return-object v0
.end method
