.class public Lcom/tencent/liteav/basic/d/c;
.super Ljava/lang/Object;
.source "TXCVideoEncoderUtils.java"


# direct methods
.method public static a(III)Z
    .locals 12

    .line 15
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 18
    :cond_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 19
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 20
    array-length v3, v0

    move v4, v1

    :goto_0
    const-string v5, "TXCVideoEncoderUtils"

    if-ge v4, v3, :cond_6

    aget-object v6, v0, v4

    .line 21
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 23
    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 24
    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    const-string v11, "video/hevc"

    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    if-nez v7, :cond_3

    return v1

    .line 31
    :cond_3
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    if-nez v7, :cond_4

    return v1

    :cond_4
    int-to-double v8, p2

    .line 35
    invoke-virtual {v7, p0, p1, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 36
    invoke-virtual {v7, p1, p0, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    aput-object v10, p0, v2

    const-string p1, "got hevc encoder:%s, type:%s"

    invoke-static {v5, p1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "not got hevc encoder"

    .line 43
    invoke-static {v5, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
