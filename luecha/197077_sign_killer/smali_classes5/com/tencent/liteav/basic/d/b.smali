.class public Lcom/tencent/liteav/basic/d/b;
.super Ljava/lang/Object;
.source "TXCVideoDecoderUtils.java"


# direct methods
.method public static a(III)Z
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p1

    .line 20
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-ge v2, v4, :cond_0

    return v3

    .line 25
    :cond_0
    new-instance v2, Landroid/media/MediaCodecList;

    invoke-direct {v2, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 26
    invoke-virtual {v2}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 27
    array-length v5, v4

    move v6, v3

    move v7, v6

    :goto_0
    const-string v8, "TXCVideoDecoderUtils"

    const/4 v9, 0x1

    if-ge v6, v5, :cond_c

    aget-object v10, v4, v6

    .line 28
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 29
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    :goto_1
    move/from16 v12, p2

    move v11, v3

    move-object/from16 v16, v4

    goto/16 :goto_4

    .line 32
    :cond_2
    array-length v12, v11

    move v13, v3

    :goto_2
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    const-string v15, "video/hevc"

    .line 33
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v10, v14}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v12, p2

    move-object/from16 v16, v4

    int-to-double v3, v12

    .line 44
    invoke-virtual {v11, v0, v1, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v17

    .line 45
    invoke-virtual {v11, v1, v0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v4, v11

    aput-object v14, v4, v9

    const/4 v10, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v10

    const-string v10, "got hevc decoder:%s, type:%s, supportPort= %b,supportLand=%b"

    .line 46
    invoke-static {v8, v10, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_7

    if-eqz v17, :cond_7

    move v7, v9

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    if-nez v3, :cond_8

    if-nez v17, :cond_8

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    .line 55
    invoke-static {v15, v1, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    goto :goto_3

    :cond_9
    if-nez v17, :cond_a

    .line 57
    invoke-static {v15, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    :cond_a
    :goto_3
    if-eqz v4, :cond_6

    .line 60
    invoke-virtual {v2, v4}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const-string v10, "findDecoderForFormat hevc decodername:%s"

    .line 61
    invoke-static {v8, v10, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_b

    move v7, v9

    :cond_b
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v3, v11

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_c
    move v11, v3

    if-eqz v7, :cond_d

    .line 70
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/f/c;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v9, v11

    .line 71
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config hevc decoder switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method
