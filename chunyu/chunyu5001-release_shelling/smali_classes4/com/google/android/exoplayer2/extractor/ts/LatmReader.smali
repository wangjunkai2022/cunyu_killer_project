.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 80
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private static latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .locals 2

    const/4 v0, 0x2

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 320
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    if-nez v0, :cond_3

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 171
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v0, :cond_2

    .line 172
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    return-void

    .line 167
    :cond_3
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 176
    :cond_4
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/4 v1, 0x1

    .line 273
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v1

    .line 274
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 275
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 276
    iget v1, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 277
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 4

    const/4 v0, 0x3

    .line 249
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    .line 250
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x9

    .line 255
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 252
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :goto_1
    return-void
.end method

.method private parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 283
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 286
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    :cond_1
    const/4 p1, 0x0

    .line 291
    invoke-static {p1, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 306
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 308
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 309
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 310
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method private parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 185
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v4, 0x0

    if-nez v3, :cond_9

    if-ne v1, v0, :cond_1

    .line 187
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    .line 192
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    const/4 v3, 0x4

    .line 193
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x3

    .line 194
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    const/16 v3, 0x8

    if-nez v1, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v4

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v5

    .line 201
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    add-int/lit8 v4, v5, 0x7

    .line 202
    div-int/2addr v4, v3

    new-array v4, v4, [B

    .line 203
    invoke-virtual {p1, v4, v2, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 204
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const-string v5, "audio/mp4a-latm"

    .line 207
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 209
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 210
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 211
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 214
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 215
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v4, 0x3d090000

    .line 216
    iget v6, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 217
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 222
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 224
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v4, 0x0

    .line 226
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 227
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_5

    if-ne v1, v0, :cond_4

    .line 229
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 234
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v1, v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v0, :cond_4

    .line 238
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    return-void

    .line 196
    :cond_7
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 190
    :cond_8
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 244
    :cond_9
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private resetBufferForSize(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 136
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 122
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    .line 123
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->resetBufferForSize(I)V

    .line 126
    :cond_3
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 127
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 115
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 116
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    .line 118
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 109
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 91
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 92
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 93
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    .line 86
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
