.class public final Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final EXIF_HEADER:J = 0x45786966L

.field private static final EXIF_ID_CODE_LENGTH:I = 0x6

.field private static final HEADER_XMP_APP1:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final IMAGE_TRACK_ID:I = 0x400

.field private static final MARKER_APP0:I = 0xffe0

.field private static final MARKER_APP1:I = 0xffe1

.field private static final MARKER_SOI:I = 0xffd8

.field private static final MARKER_SOS:I = 0xffda

.field private static final STATE_ENDED:I = 0x6

.field private static final STATE_READING_MARKER:I = 0x0

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x5

.field private static final STATE_READING_SEGMENT:I = 0x2

.field private static final STATE_READING_SEGMENT_LENGTH:I = 0x1

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x4


# instance fields
.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private marker:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

.field private mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private segmentLength:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    return-void
.end method

.method private advancePeekPositionToNextSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    .line 192
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method private endReadingWithImageTrack()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 267
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x6

    .line 270
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private static getMotionPhotoMetadata(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 307
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 311
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->getMotionPhotoMetadata(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p0

    return-object p0
.end method

.method private varargs outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 275
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v2, "image/jpeg"

    .line 278
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 279
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 276
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    return p1
.end method

.method private readMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 198
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 199
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v0, 0xffda

    if-ne p1, v0, :cond_1

    .line 200
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 201
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_0

    :cond_1
    const v0, 0xffd0

    if-lt p1, v0, :cond_2

    const v0, 0xffd9

    if-le p1, v0, :cond_3

    .line 205
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v0, 0xff01

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    .line 206
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    :cond_3
    :goto_0
    return-void
.end method

.method private readSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-ne v0, v2, :cond_0

    .line 219
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 220
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v2, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->getMotionPhotoMetadata(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 226
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-eqz p1, :cond_1

    .line 227
    iget-wide v2, p1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    goto :goto_0

    .line 232
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 234
    :cond_1
    :goto_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private readSegmentLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 214
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private sniffMotionPhotoVideo(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 241
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-interface {p1, v0, v2, v1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 249
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 251
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 253
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 252
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->startReadingMotionPhoto()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    :goto_0
    return-void
.end method

.method private startReadingMotionPhoto()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v0, 0x5

    .line 263
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x6

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eq p1, v0, :cond_3

    .line 147
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 148
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 153
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 155
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    :cond_4
    return p1

    .line 139
    :cond_5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    .line 140
    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v2

    .line 143
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->sniffMotionPhotoVideo(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 136
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 133
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readSegmentLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 130
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1
.end method

.method public release()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->release()V

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    goto :goto_0

    .line 170
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffe0

    if-ne v0, v2, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->advancePeekPositionToNextSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 111
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffe1

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    .line 114
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
