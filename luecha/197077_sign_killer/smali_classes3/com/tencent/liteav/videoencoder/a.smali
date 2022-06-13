.class Lcom/tencent/liteav/videoencoder/a;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# static fields
.field private static a:Ljava/lang/String; = "MediaFormatUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/media/MediaCodec;Ljava/lang/String;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 372
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    return-object v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    .line 376
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 381
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 3

    .line 358
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 361
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    .line 199
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 203
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 206
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 207
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IIIII)Landroid/media/MediaFormat;
    .locals 3

    .line 26
    sget-object v0, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBaseFormat:  mineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  bitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  gop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v1

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    return-object v0

    .line 34
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    mul-int/lit16 p3, p3, 0x400

    const-string p1, "bitrate"

    .line 35
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "frame-rate"

    .line 36
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x7f000789

    const-string p2, "color-format"

    .line 37
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    .line 38
    invoke-virtual {p0, p1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Ljava/lang/String;IIZ)V
    .locals 8

    .line 55
    sget-object v0, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormat: format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  bitrateMod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  targetProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  fullIFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-static {p2}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 67
    :cond_2
    invoke-virtual {v0, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 73
    :cond_3
    iget-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v6, v1, v3

    .line 74
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-gt v7, p4, :cond_5

    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-gt v7, v4, :cond_4

    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v7, v4, :cond_5

    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v7, v5, :cond_5

    .line 77
    :cond_4
    iget v4, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 78
    iget v5, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string p4, "profile"

    .line 81
    invoke-virtual {p1, p4, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    sget-object p4, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFormat: targetProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  fixLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p4

    const/16 v1, 0x17

    if-lt p4, v1, :cond_7

    const-string p4, "level"

    .line 84
    invoke-virtual {p1, p4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    invoke-static {p2, v4, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 88
    :cond_7
    invoke-static {v0, p3, p1, p5}, Lcom/tencent/liteav/videoencoder/a;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;ILandroid/media/MediaFormat;Z)V

    .line 89
    invoke-static {p1, v0}, Lcom/tencent/liteav/videoencoder/a;->a(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 91
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p3

    if-lt p3, v1, :cond_8

    .line 92
    invoke-static {p2, p0, p1, v4, v5}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;Landroid/media/MediaCodec;Landroid/media/MediaFormat;II)Z

    :cond_8
    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo$CodecCapabilities;ILandroid/media/MediaFormat;Z)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 99
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v0

    const-string v1, "bitrate-mode"

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p2, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 108
    invoke-virtual {p0, p3}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p2, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 111
    invoke-virtual {p2, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 115
    invoke-virtual {p2, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 119
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getComplexityRange()Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 121
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p3, "complexity"

    invoke-virtual {p2, p3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 122
    sget-object p1, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createFormat:MediaFormat.KEY_COMPLEXITY :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 6

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p1

    .line 183
    sget-object v0, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitrateRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bitrate"

    .line 184
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 185
    sget-object v4, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bitrate = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "fix bitrate = "

    if-ge v1, v2, :cond_3

    .line 188
    sget-object v2, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to lower "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 192
    sget-object v2, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to upper "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/media/MediaCodec;Landroid/media/MediaFormat;II)Z
    .locals 1

    .line 219
    invoke-static {p0, p2, p3, p4}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;Landroid/media/MediaFormat;II)Z

    move-result v0

    .line 221
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoencoder/a;->b(Ljava/lang/String;Landroid/media/MediaCodec;Landroid/media/MediaFormat;II)Z

    move-result p1

    .line 223
    invoke-static {p0, p2, p3, p4}, Lcom/tencent/liteav/videoencoder/a;->b(Ljava/lang/String;Landroid/media/MediaFormat;II)Z

    move-result p0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Ljava/lang/String;Landroid/media/MediaFormat;II)Z
    .locals 8

    .line 229
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 235
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 239
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p2

    const/4 p3, -0x1

    .line 240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 242
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 244
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 246
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/lang/Integer;

    .line 248
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_b

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string p0, "width"

    .line 251
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const-string v2, "height"

    .line 252
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    if-le p2, v3, :cond_6

    .line 253
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_7

    :cond_6
    if-ge p2, v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_8

    .line 254
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v7, v0

    move-object v0, p3

    move-object p3, v7

    .line 258
    :goto_0
    sget-object v4, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateToCodecSupportSize: srcWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " srcHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, p2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v3, :cond_9

    goto :goto_1

    :cond_9
    return v1

    .line 260
    :cond_a
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    int-to-float p2, p2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, p2, v4

    div-float/2addr v1, v5

    .line 261
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    mul-float/2addr v4, v3

    div-float/2addr v5, v4

    .line 262
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 265
    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 266
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 267
    sget-object p0, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaFormatToUpperSize:upperW:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " upperH:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " fixUpperW:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fixUpperH:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_2
    return v1
.end method

.method private static b(Ljava/lang/String;Landroid/media/MediaCodec;Landroid/media/MediaFormat;II)Z
    .locals 5

    .line 276
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 279
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p3

    if-nez p3, :cond_1

    return v1

    .line 284
    :cond_1
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p4

    .line 285
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p3

    if-eqz p4, :cond_7

    if-nez p3, :cond_2

    goto/16 :goto_1

    .line 289
    :cond_2
    invoke-virtual {p4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 290
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 293
    invoke-static {p1, p0}, Lcom/tencent/liteav/videoencoder/a;->a(Landroid/media/MediaCodec;Ljava/lang/String;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 295
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p1

    .line 296
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 298
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 299
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 302
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_7

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "width"

    .line 305
    invoke-virtual {p2, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string v0, "height"

    .line 306
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 307
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    .line 308
    :cond_6
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, p1, v3

    div-float/2addr v1, v4

    .line 309
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    mul-float/2addr v3, v2

    div-float/2addr v4, v3

    .line 310
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 313
    invoke-virtual {p2, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 315
    sget-object p0, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMediaFormatToLowerSize:lowerW:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " lowerH:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " fixLowW:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fixLowH:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    return v1
.end method

.method private static b(Ljava/lang/String;Landroid/media/MediaFormat;II)Z
    .locals 6

    .line 323
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 326
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 331
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result p2

    .line 332
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 334
    sget-object p3, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthAlignment:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " heightAlignment:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x2

    if-lt p2, p3, :cond_5

    if-lt p0, p3, :cond_5

    .line 335
    rem-int/lit8 p3, p2, 0x2

    if-nez p3, :cond_5

    rem-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "width"

    .line 339
    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "height"

    .line 340
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 342
    div-int v4, v0, p2

    mul-int/2addr v4, p2

    .line 343
    div-int v5, v3, p0

    mul-int/2addr v5, p0

    if-ne v0, v4, :cond_4

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 346
    :cond_4
    :goto_0
    invoke-virtual {p1, p3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 347
    invoke-virtual {p1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 348
    sget-object p1, Lcom/tencent/liteav/videoencoder/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMediaFormatWithAlignment: fixSize: src:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fix:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " widthAlignment\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  heightAlignment\uff1a"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method
