.class public Lcom/facebook/imageformat/ImageFormatChecker;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static final BMP_HEADER:[B

.field private static final EXTENDED_WEBP_HEADER_LENGTH:I = 0x15

.field private static final GIF_HEADER_87A:[B

.field private static final GIF_HEADER_89A:[B

.field private static final GIF_HEADER_LENGTH:I = 0x6

.field private static final JPEG_HEADER:[B

.field private static final MAX_HEADER_LENGTH:I

.field private static final PNG_HEADER:[B

.field private static final SIMPLE_WEBP_HEADER_LENGTH:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 235
    fill-array-data v1, :array_0

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->JPEG_HEADER:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 257
    fill-array-data v1, :array_1

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->PNG_HEADER:[B

    const-string v1, "GIF87a"

    .line 280
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->GIF_HEADER_87A:[B

    const-string v1, "GIF89a"

    .line 281
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->GIF_HEADER_89A:[B

    const-string v1, "BM"

    .line 303
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->BMP_HEADER:[B

    const/4 v1, 0x6

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x14

    aput v4, v2, v3

    .line 328
    sget-object v3, Lcom/facebook/imageformat/ImageFormatChecker;->JPEG_HEADER:[B

    array-length v3, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    sget-object v3, Lcom/facebook/imageformat/ImageFormatChecker;->PNG_HEADER:[B

    array-length v3, v3

    aput v3, v2, v0

    const/4 v0, 0x4

    aput v1, v2, v0

    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->BMP_HEADER:[B

    array-length v0, v0

    const/4 v1, 0x5

    aput v0, v2, v1

    invoke-static {v2}, Lcom/facebook/common/internal/Ints;->max([I)I

    move-result v0

    sput v0, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asciiBytes(Ljava/lang/String;)[B
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "ASCII"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static doGetImageFormat([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->getWebpFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->isJpegHeader([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 51
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->isPngHeader([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->PNG:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 55
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->isGifHeader([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->GIF:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 59
    :cond_3
    invoke-static {p0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->isBmpHeader([BI)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->BMP:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 63
    :cond_4
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-object p0
.end method

.method public static getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget v0, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    new-array v0, v0, [B

    .line 111
    invoke-static {p0, v0}, Lcom/facebook/imageformat/ImageFormatChecker;->readHeaderFromStream(Ljava/io/InputStream;[B)I

    move-result p0

    .line 112
    invoke-static {v0, p0}, Lcom/facebook/imageformat/ImageFormatChecker;->doGetImageFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .locals 2

    const/4 v0, 0x0

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 140
    :catch_1
    :goto_0
    :try_start_2
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw p0
.end method

.method public static getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 0

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 123
    invoke-static {p0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getWebpFormat([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 2

    const/4 v0, 0x0

    .line 209
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 210
    invoke-static {p0, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isSimpleWebpHeader([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 214
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isLosslessWebpHeader([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 218
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->isExtendedWebpHeader([BII)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 219
    invoke-static {p0, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isAnimatedWebpHeader([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 222
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/common/webp/WebpSupportStatus;->isExtendedWebpHeaderWithAlpha([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 223
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 225
    :cond_3
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 228
    :cond_4
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-object p0
.end method

.method private static isBmpHeader([BI)Z
    .locals 3

    .line 314
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->BMP_HEADER:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    return v2

    .line 317
    :cond_0
    invoke-static {p0, v2, v0}, Lcom/facebook/imageformat/ImageFormatChecker;->matchBytePattern([BI[B)Z

    move-result p0

    return p0
.end method

.method private static isGifHeader([BI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    return v0

    .line 296
    :cond_0
    sget-object p1, Lcom/facebook/imageformat/ImageFormatChecker;->GIF_HEADER_87A:[B

    invoke-static {p0, v0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->matchBytePattern([BI[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/facebook/imageformat/ImageFormatChecker;->GIF_HEADER_89A:[B

    .line 297
    invoke-static {p0, v0, p1}, Lcom/facebook/imageformat/ImageFormatChecker;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isJpegHeader([BI)Z
    .locals 3

    .line 249
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->JPEG_HEADER:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    invoke-static {p0, v2, v0}, Lcom/facebook/imageformat/ImageFormatChecker;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isPngHeader([BI)Z
    .locals 3

    .line 272
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->PNG_HEADER:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    invoke-static {p0, v2, v0}, Lcom/facebook/imageformat/ImageFormatChecker;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static matchBytePattern([BI[B)Z
    .locals 5

    .line 158
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 160
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 161
    array-length v2, p2

    add-int/2addr v2, p1

    array-length v3, p0

    if-le v2, v3, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 165
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_3

    add-int v3, v2, p1

    .line 166
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

.method private static readHeaderFromStream(Ljava/io/InputStream;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    array-length v0, p1

    sget v1, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :try_start_0
    sget v0, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 89
    sget v0, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw p1

    .line 94
    :cond_1
    sget v0, Lcom/facebook/imageformat/ImageFormatChecker;->MAX_HEADER_LENGTH:I

    invoke-static {p0, p1, v2, v0}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method
