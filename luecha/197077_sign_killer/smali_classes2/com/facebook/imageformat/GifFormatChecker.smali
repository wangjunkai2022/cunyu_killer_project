.class public final Lcom/facebook/imageformat/GifFormatChecker;
.super Ljava/lang/Object;
.source "GifFormatChecker.java"


# static fields
.field private static final FRAME_HEADER_END_1:[B

.field private static final FRAME_HEADER_END_2:[B

.field private static final FRAME_HEADER_SIZE:I = 0xa

.field private static final FRAME_HEADER_START:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_START:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_1

    sput-object v1, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_1:[B

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_2:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x21t
        -0x7t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x21t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static circularBufferMatchesBytePattern([BI[B)Z
    .locals 5

    .line 89
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 91
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 92
    array-length v2, p2

    array-length v3, p0

    if-le v2, v3, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 96
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_3

    add-int v3, v2, p1

    .line 97
    array-length v4, p0

    rem-int/2addr v3, v4

    aget-byte v3, p0, v3

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public static isAnimated(Ljava/io/InputStream;)Z
    .locals 7

    const/16 v0, 0xa

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move v0, v2

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p0, v1, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 61
    sget-object v6, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_START:[B

    invoke-static {v1, v5, v6}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x9

    sget-object v6, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_1:[B

    .line 62
    invoke-static {v1, v0, v6}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/facebook/imageformat/GifFormatChecker;->FRAME_HEADER_END_2:[B

    .line 63
    invoke-static {v1, v0, v6}, Lcom/facebook/imageformat/GifFormatChecker;->circularBufferMatchesBytePattern([BI[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    if-le v3, v4, :cond_1

    return v4

    .line 69
    :cond_1
    array-length v0, v1

    rem-int v0, v5, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
