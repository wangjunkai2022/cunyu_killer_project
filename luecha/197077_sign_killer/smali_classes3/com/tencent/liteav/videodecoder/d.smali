.class public Lcom/tencent/liteav/videodecoder/d;
.super Ljava/lang/Object;
.source "TXCH264SPSModifier.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    return-void
.end method

.method private a(Lcom/tencent/liteav/videodecoder/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SPS: cpb_cnt_minus1"

    .line 251
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "HRD: bit_rate_scale"

    .line 252
    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v2, "HRD: cpb_size_scale"

    .line 253
    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    const-string v2, "HRD: bit_rate_value_minus1"

    .line 256
    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v2, "HRD: cpb_size_value_minus1"

    .line 257
    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "HRD: cbr_flag"

    .line 258
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const-string v1, "HRD: initial_cpb_removal_delay_length_minus1"

    .line 260
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v1, "HRD: cpb_removal_delay_length_minus1"

    .line 261
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v1, "HRD: dpb_output_delay_length_minus1"

    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v1, "HRD: time_offset_length"

    .line 263
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 5

    .line 25
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const-string v1, ""

    .line 28
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    const/16 v2, 0x100

    if-ge v0, v2, :cond_1

    .line 29
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[H264SPSModifier]"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private b(Lcom/tencent/liteav/videodecoder/c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VUI: aspect_ratio_info_present_flag"

    .line 268
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const-string v0, "VUI: aspect_ratio"

    .line 270
    invoke-virtual {p1, v1, v0}, Lcom/tencent/liteav/videodecoder/c;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    const-string v2, "VUI: sar_width"

    .line 272
    invoke-virtual {p1, v0, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v2, "VUI: sar_height"

    .line 273
    invoke-virtual {p1, v0, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_0
    const-string v0, "VUI: overscan_info_present_flag"

    .line 276
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "VUI: overscan_appropriate_flag"

    .line 278
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_1
    const-string v0, "VUI: video_signal_type_present_flag"

    .line 280
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v3, "VUI: video_format"

    .line 282
    invoke-virtual {p1, v0, v3}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: video_full_range_flag"

    .line 283
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: colour_description_present_flag"

    .line 284
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VUI: colour_primaries"

    .line 286
    invoke-virtual {p1, v1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: transfer_characteristics"

    .line 287
    invoke-virtual {p1, v1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: matrix_coefficients"

    .line 288
    invoke-virtual {p1, v1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_2
    const-string v0, "VUI: chroma_loc_info_present_flag"

    .line 291
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VUI chroma_sample_loc_type_top_field"

    .line 293
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v0, "VUI chroma_sample_loc_type_bottom_field"

    .line 294
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    :cond_3
    const-string v0, "VUI: timing_info_present_flag"

    .line 296
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    const-string v1, "VUI: num_units_in_tick"

    .line 298
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v1, "VUI: time_scale"

    .line 299
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: fixed_frame_rate_flag"

    .line 300
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_4
    const-string v0, "VUI: nal_hrd_parameters_present_flag"

    .line 302
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/d;->a(Lcom/tencent/liteav/videodecoder/c;)V

    :cond_5
    const-string v1, "VUI: vcl_hrd_parameters_present_flag"

    .line 305
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/d;->a(Lcom/tencent/liteav/videodecoder/c;)V

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    const-string v0, "VUI: low_delay_hrd_flag"

    .line 309
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_8
    const-string v0, "VUI: pic_struct_present_flag"

    .line 311
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v0, "VUI: bitstream_restriction_flag"

    .line 312
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "VUI: motion_vectors_over_pic_boundaries_flag"

    const-string v3, "VUI: set bitstream_restriction_flag"

    const-string v4, "[H264SPSModifier]"

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    .line 314
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "steve:VUI has bs restriction!!"

    .line 315
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_9
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    .line 318
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    const-string v0, "VUI max_bytes_per_pic_denom"

    .line 319
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v0, "VUI max_bits_per_mb_denom"

    .line 320
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v0, "VUI log2_max_mv_length_horizontal"

    .line 321
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v0, "VUI log2_max_mv_length_vertical"

    .line 322
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v0, "VUI num_reorder_frames"

    .line 323
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    if-nez v0, :cond_a

    .line 326
    invoke-virtual {p1, v5}, Lcom/tencent/liteav/videodecoder/c;->c(Z)I

    move-result p1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode: do not add max_dec_frame_buffering when it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iput-boolean v2, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    :cond_a
    return v5

    .line 335
    :cond_b
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "steve:VUI has NO bs restriction!!"

    .line 336
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    .line 339
    invoke-virtual {p1, v2, v1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string v0, "VUI: max_bytes_per_pic_denom"

    .line 340
    invoke-virtual {p1, v5, v0}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string v0, "VUI: max_bits_per_mb_denom"

    .line 341
    invoke-virtual {p1, v5, v0}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const/16 v0, 0xa

    const-string v1, "VUI: log2_max_mv_length_horizontal"

    .line 342
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string v1, "VUI: log2_max_mv_length_vertical"

    .line 343
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string v0, "VUI: num_reorder_frames"

    .line 344
    invoke-virtual {p1, v5, v0}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string v0, "VUI: max_dec_frame_buffering"

    .line 345
    invoke-virtual {p1, v2, v0}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    .line 346
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    if-nez p1, :cond_d

    const-string p1, "decode: add max_dec_frame_buffering 1 when it is no exist"

    .line 347
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iput-boolean v2, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    :cond_d
    return v2
.end method

.method private b([B)[B
    .locals 8

    .line 40
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 42
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 43
    array-length v4, p1

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    aget-byte v4, p1, v2

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v6, p1, v4

    if-nez v6, :cond_0

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    if-ne v6, v5, :cond_0

    add-int/lit8 v6, v2, 0x3

    aget-byte v7, p1, v6

    if-gt v7, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 44
    aget-byte v2, p1, v2

    aput-byte v2, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 45
    aget-byte v2, p1, v4

    aput-byte v2, v0, v5

    move v2, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 48
    aget-byte v5, p1, v2

    aput-byte v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 53
    :cond_1
    array-length p1, p1

    if-eq v3, p1, :cond_2

    .line 54
    new-array p1, v3, [B

    .line 55
    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c([B)[B
    .locals 8

    .line 63
    array-length v0, p1

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 65
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 66
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_0

    aget-byte v5, p1, v3

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p1, v5

    if-nez v6, :cond_0

    add-int/lit8 v6, v3, 0x2

    aget-byte v7, p1, v6

    if-gt v7, v1, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 67
    aget-byte v3, p1, v3

    aput-byte v3, v0, v4

    add-int/lit8 v3, v7, 0x1

    .line 68
    aget-byte v4, p1, v5

    aput-byte v4, v0, v7

    add-int/lit8 v4, v3, 0x1

    .line 69
    aput-byte v1, v0, v3

    move v3, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 72
    aget-byte v6, p1, v3

    aput-byte v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 77
    :cond_1
    array-length v1, p1

    if-eq v4, v1, :cond_2

    .line 78
    new-array p1, v4, [B

    .line 79
    invoke-static {v0, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    new-instance v1, Lcom/tencent/liteav/videodecoder/c;

    invoke-direct {v1, p1, v0}, Lcom/tencent/liteav/videodecoder/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/16 p1, 0x8

    const-string v2, "NALU type"

    .line 112
    invoke-virtual {v1, p1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v2, "SPS: profile_idc"

    .line 113
    invoke-virtual {v1, p1, v2}, Lcom/tencent/liteav/videodecoder/c;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "SPS: constraint_set_0-3_flag and reserved_zero_4bits"

    .line 114
    invoke-virtual {v1, p1, v3}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v3, "SPS: level_idc"

    .line 115
    invoke-virtual {v1, p1, v3}, Lcom/tencent/liteav/videodecoder/c;->a(ILjava/lang/String;)J

    const-string v3, "SPS: seq_parameter_set_id"

    .line 116
    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x64

    if-eq v2, v5, :cond_0

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_0

    const/16 v5, 0x7a

    if-eq v2, v5, :cond_0

    const/16 v5, 0x90

    if-ne v2, v5, :cond_4

    :cond_0
    const-string v2, "SPS: chroma_format_idc"

    .line 120
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    const-string v2, "SPS: residual_color_transform_flag"

    .line 122
    invoke-virtual {v1, v4, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_1
    const-string v2, "SPS: bit_depth_luma_minus8"

    .line 124
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v2, "SPS: bit_depth_chroma_minus8"

    .line 125
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string v2, "SPS: qpprime_y_zero_transform_bypass_flag"

    .line 126
    invoke-virtual {v1, v4, v2}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string v2, "SPS: seq_scaling_matrix_present_lag"

    .line 128
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    if-ge v2, p1, :cond_4

    const-string v5, "SPS: seqScalingListPresentFlag"

    .line 131
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    if-ge v2, v5, :cond_2

    const/16 v5, 0x10

    .line 134
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videodecoder/c;->c(I)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x40

    .line 136
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videodecoder/c;->c(I)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "SPS: log2_max_frame_num_minus4"

    .line 142
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: pic_order_cnt_type"

    .line 143
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    .line 145
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne p1, v4, :cond_6

    const-string p1, "SPS: delta_pic_order_always_zero_flag"

    .line 147
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string p1, "SPS: offset_for_non_ref_pic"

    .line 148
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: offset_for_top_to_bottom_field"

    .line 149
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: num_ref_frames_in_pic_order_cnt_cycle"

    .line 151
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/lang/String;)I

    move-result p1

    move v2, v3

    :goto_2
    if-ge v2, p1, :cond_6

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPS: offsetForRefFrame ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const-string p1, "SPS: num_ref_frames"

    .line 159
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/lang/String;)I

    move-result p1

    .line 160
    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    const-string v5, "[H264SPSModifier]"

    if-eqz v2, :cond_7

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPS: num_ref_frames: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string p1, "SPS: gaps_in_frame_num_value_allowed_flag"

    .line 166
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string p1, "SPS: pic_width_in_mbs_minus1"

    .line 167
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: pic_height_in_map_units_minus1"

    .line 168
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: frame_mbs_only_flag"

    .line 169
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "SPS: mb_adaptive_frame_field_flag"

    .line 171
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    :cond_8
    const-string p1, "SPS: direct_8x8_inference_flag"

    .line 173
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->b(ILjava/lang/String;)V

    const-string p1, "SPS: frame_cropping_flag"

    .line 174
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "SPS: frame_crop_left_offset"

    .line 176
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: frame_crop_right_offset"

    .line 177
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: frame_crop_top_offset"

    .line 178
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    const-string p1, "SPS: frame_crop_bottom_offset"

    .line 179
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->b(Ljava/lang/String;)V

    :cond_9
    const-string p1, "SPS: vui_parameters_present_flag"

    .line 181
    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videodecoder/c;->e(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "VUI set 1: "

    if-eqz p1, :cond_b

    .line 185
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz p1, :cond_a

    const-string p1, "vui_parameters_present_flag exist!! modify max_dec_frame_buffering"

    .line 186
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_a
    invoke-virtual {v1, v4, v2}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    .line 190
    invoke-direct {p0, v1}, Lcom/tencent/liteav/videodecoder/d;->b(Lcom/tencent/liteav/videodecoder/c;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 196
    :cond_b
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz p1, :cond_c

    const-string p1, "vui_parameters_present_flag NOT exist!! add max_dec_frame_buffering"

    .line 197
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_c
    invoke-virtual {v1, v4, v2}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: aspect_ratio_info_present_flag"

    .line 203
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: overscan_info_present_flag"

    .line 204
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: video_signal_type_present_flag"

    .line 205
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: chroma_loc_info_present_flag"

    .line 206
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: timing_info_present_flag"

    .line 207
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: nal_hrd_parameters_present_flag"

    .line 208
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: vcl_hrd_parameters_present_flag"

    .line 209
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: pic_struct_present_flag"

    .line 210
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: bitstream_restriction_flag"

    .line 212
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: motion_vectors_over_pic_boundaries_flag"

    .line 214
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->a(ZLjava/lang/String;)V

    const-string p1, "VUI: max_bytes_per_pic_denom"

    .line 215
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string p1, "VUI: max_bits_per_mb_denom"

    .line 216
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const/16 p1, 0xa

    const-string v2, "VUI: log2_max_mv_length_horizontal"

    .line 217
    invoke-virtual {v1, p1, v2}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string v2, "VUI: log2_max_mv_length_vertical"

    .line 218
    invoke-virtual {v1, p1, v2}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string p1, "VUI: num_reorder_frames"

    .line 219
    invoke-virtual {v1, v3, p1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    const-string p1, "VUI: max_dec_frame_buffering"

    .line 220
    invoke-virtual {v1, v4, p1}, Lcom/tencent/liteav/videodecoder/c;->c(ILjava/lang/String;)V

    .line 221
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    if-nez p1, :cond_d

    const-string p1, "decode: add max_dec_frame_buffering 1 when vui is no exist"

    .line 222
    invoke-static {v5, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-boolean v4, p0, Lcom/tencent/liteav/videodecoder/d;->b:Z

    .line 228
    :cond_d
    invoke-virtual {v1}, Lcom/tencent/liteav/videodecoder/c;->c()V

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 231
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/d;->a:Z

    if-eqz v0, :cond_10

    const-string v0, ""

    .line 233
    :goto_4
    array-length v1, p1

    if-ge v3, v1, :cond_f

    .line 234
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_e

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 240
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object p1
.end method

.method public a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "origin sps : "

    .line 87
    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/videodecoder/d;->a(Ljava/lang/String;[B)V

    .line 90
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/d;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "deEmulationPrevention sps : "

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videodecoder/d;->a(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    move-object v2, v0

    move v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videodecoder/d;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string v1, "new sps : "

    .line 99
    invoke-direct {p0, v1, p1}, Lcom/tencent/liteav/videodecoder/d;->a(Ljava/lang/String;[B)V

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/d;->c([B)[B

    move-result-object p1

    const-string v0, "emulationPrevention sps : "

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/videodecoder/d;->a(Ljava/lang/String;[B)V

    :cond_1
    return-object p1
.end method
