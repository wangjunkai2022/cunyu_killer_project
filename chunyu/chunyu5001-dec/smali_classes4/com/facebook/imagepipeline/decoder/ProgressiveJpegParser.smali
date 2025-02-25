.class public Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final NOT_A_JPEG:I = 0x6

.field private static final READ_FIRST_JPEG_BYTE:I = 0x0

.field private static final READ_MARKER_FIRST_BYTE_OR_ENTROPY_DATA:I = 0x2

.field private static final READ_MARKER_SECOND_BYTE:I = 0x3

.field private static final READ_SECOND_JPEG_BYTE:I = 0x1

.field private static final READ_SIZE_FIRST_BYTE:I = 0x4

.field private static final READ_SIZE_SECOND_BYTE:I = 0x5


# instance fields
.field private mBestScanEndOffset:I

.field private mBestScanNumber:I

.field private final mByteArrayPool:Lcom/facebook/imagepipeline/memory/ByteArrayPool;

.field private mBytesParsed:I

.field private mLastByteRead:I

.field private mNextFullScanNumber:I

.field private mParserState:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/ByteArrayPool;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/ByteArrayPool;

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/imagepipeline/memory/ByteArrayPool;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 98
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I

    .line 99
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    .line 100
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    .line 101
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    .line 102
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    return-void
.end method

.method private doParseMoreData(Ljava/io/InputStream;)Z
    .locals 10

    .line 153
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 156
    :try_start_0
    iget v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    if-eq v4, v3, :cond_e

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 157
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 159
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/16 v6, 0xff

    if-eqz v5, :cond_b

    const/4 v7, 0x2

    if-eq v5, v2, :cond_9

    const/4 v8, 0x3

    if-eq v5, v7, :cond_8

    const/4 v9, 0x4

    if-eq v5, v8, :cond_2

    const/4 v6, 0x5

    if-eq v5, v9, :cond_1

    if-eq v5, v6, :cond_0

    .line 218
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    goto :goto_1

    .line 205
    :cond_0
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    sub-int/2addr v5, v7

    int-to-long v8, v5

    .line 211
    invoke-static {p1, v8, v9}, Lcom/facebook/common/util/StreamUtil;->skip(Ljava/io/InputStream;J)J

    .line 212
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 213
    iput v7, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    .line 201
    :cond_1
    iput v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    .line 184
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 186
    iput v7, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_4
    const/16 v5, 0xda

    if-eq v4, v5, :cond_5

    const/16 v5, 0xd9

    if-ne v4, v5, :cond_6

    .line 189
    :cond_5
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->newScanOrImageEndFound(I)V

    .line 192
    :cond_6
    invoke-static {v4}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->doesMarkerStartSegment(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    .line 195
    :cond_7
    iput v7, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_8
    if-ne v4, v6, :cond_d

    .line 178
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_9
    const/16 v5, 0xd8

    if-ne v4, v5, :cond_a

    .line 170
    iput v7, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    .line 172
    :cond_a
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    :cond_b
    if-ne v4, v6, :cond_c

    .line 162
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_1

    .line 164
    :cond_c
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    .line 221
    :cond_d
    :goto_1
    iput v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 227
    :cond_e
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    if-eq p1, v3, :cond_f

    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    if-eq p1, v0, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method private static doesMarkerStartSegment(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_1

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private newScanOrImageEndFound(I)V
    .locals 1

    .line 246
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    if-lez v0, :cond_0

    .line 247
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    .line 249
    :cond_0
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    return-void
.end method


# virtual methods
.method public getBestScanEndOffset()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    return v0
.end method

.method public getBestScanNumber()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    return v0
.end method

.method public isJpeg()Z
    .locals 3

    .line 253
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public parseMoreData(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 4

    .line 118
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    .line 127
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    if-gt v0, v2, :cond_1

    return v1

    .line 131
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/PooledByteArrayBufferedInputStream;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/imagepipeline/memory/ByteArrayPool;

    const/16 v3, 0x4000

    .line 133
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/imagepipeline/memory/ByteArrayPool;

    invoke-direct {v0, p1, v2, v3}, Lcom/facebook/imagepipeline/memory/PooledByteArrayBufferedInputStream;-><init>(Ljava/io/InputStream;[BLcom/facebook/common/references/ResourceReleaser;)V

    .line 136
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/facebook/common/util/StreamUtil;->skip(Ljava/io/InputStream;J)J

    .line 137
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->doParseMoreData(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method
