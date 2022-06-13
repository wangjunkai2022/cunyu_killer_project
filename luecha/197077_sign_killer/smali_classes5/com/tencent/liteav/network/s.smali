.class public Lcom/tencent/liteav/network/s;
.super Ljava/lang/Object;
.source "UploadQualityReport.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/tencent/liteav/network/s;->w:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/network/s;->a:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/tencent/liteav/network/s;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/network/s;->b:Ljava/lang/String;

    const-string p1, "Android"

    .line 57
    iput-object p1, p0, Lcom/tencent/liteav/network/s;->d:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/network/s;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/q;->a(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/liteav/network/s;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 279
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private e()V
    .locals 4

    .line 95
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->p:J

    .line 96
    iget-wide v2, p0, Lcom/tencent/liteav/network/s;->q:J

    .line 98
    invoke-virtual {p0}, Lcom/tencent/liteav/network/s;->a()V

    .line 100
    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->n:J

    .line 101
    iput-wide v2, p0, Lcom/tencent/liteav/network/s;->o:J

    return-void
.end method

.method private f()V
    .locals 21

    move-object/from16 v0, p0

    .line 181
    iget-wide v1, v0, Lcom/tencent/liteav/network/s;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/tencent/liteav/network/s;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/network/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/tencent/liteav/network/s;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/network/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 186
    :cond_0
    iget-object v1, v0, Lcom/tencent/liteav/network/s;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getStreamIDByStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/tencent/liteav/network/s;->f:J

    sub-long v13, v5, v7

    .line 194
    iget-wide v5, v0, Lcom/tencent/liteav/network/s;->p:J

    iget-wide v7, v0, Lcom/tencent/liteav/network/s;->n:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    sub-long/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 197
    :goto_0
    iget-wide v7, v0, Lcom/tencent/liteav/network/s;->q:J

    iget-wide v9, v0, Lcom/tencent/liteav/network/s;->o:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    sub-long/2addr v7, v9

    goto :goto_1

    :cond_2
    move-wide v7, v3

    .line 204
    :goto_1
    iget-wide v9, v0, Lcom/tencent/liteav/network/s;->v:J

    cmp-long v2, v9, v3

    if-lez v2, :cond_3

    .line 205
    iget-wide v11, v0, Lcom/tencent/liteav/network/s;->r:J

    div-long/2addr v11, v9

    .line 206
    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->s:J

    div-long/2addr v3, v9

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/16 v11, 0x0

    .line 211
    :goto_2
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txCreateToken()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v9, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v9}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    const/4 v10, 0x0

    .line 213
    iput-boolean v10, v9, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 214
    iput-boolean v10, v9, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 215
    iget-object v10, v0, Lcom/tencent/liteav/network/s;->e:Ljava/lang/String;

    iput-object v10, v9, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 216
    iget-object v10, v0, Lcom/tencent/liteav/network/s;->a:Landroid/content/Context;

    sget v15, Lcom/tencent/liteav/basic/datareport/a;->T:I

    move-wide/from16 v19, v3

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->an:I

    invoke-static {v10, v2, v15, v3, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 217
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-object v4, v0, Lcom/tencent/liteav/network/s;->b:Ljava/lang/String;

    const-string v9, "str_user_id"

    invoke-static {v2, v3, v9, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v4, "str_stream_id"

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-object v3, v0, Lcom/tencent/liteav/network/s;->c:Ljava/lang/String;

    const-string v4, "str_access_id"

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-object v3, v0, Lcom/tencent/liteav/network/s;->d:Ljava/lang/String;

    const-string v4, "str_platform"

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->g:J

    const-string v9, "u32_server_type"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 222
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-object v3, v0, Lcom/tencent/liteav/network/s;->h:Ljava/lang/String;

    const-string v4, "str_server_addr"

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->i:J

    const-string v9, "u32_dns_timecost"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 224
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->j:J

    const-string v9, "u32_connect_timecost"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 225
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->k:J

    const-string v9, "u32_handshake_timecost"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 226
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->l:J

    const-string v9, "u32_push_type"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 227
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "u32_totaltime"

    invoke-static {v2, v1, v3, v13, v14}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 228
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->m:J

    const-string v9, "u32_block_count"

    invoke-static {v2, v1, v9, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 229
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "u32_video_drop"

    invoke-static {v2, v1, v3, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 230
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "u32_audio_drop"

    invoke-static {v2, v1, v3, v7, v8}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 231
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "u32_video_que_avg"

    invoke-static {v2, v1, v3, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 232
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "u32_audio_que_avg"

    move-wide/from16 v4, v19

    invoke-static {v2, v1, v3, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 233
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->t:J

    const-string v5, "u32_video_que_max"

    invoke-static {v2, v1, v5, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 234
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    iget-wide v3, v0, Lcom/tencent/liteav/network/s;->u:J

    const-string v5, "u32_audio_que_max"

    invoke-static {v2, v1, v5, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 235
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    const-wide/16 v1, 0x0

    cmp-long v3, v13, v1

    const/4 v4, 0x0

    if-lez v3, :cond_5

    .line 242
    iget-wide v5, v0, Lcom/tencent/liteav/network/s;->m:J

    cmp-long v3, v5, v1

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    long-to-float v3, v5

    const v5, 0x476a6000    # 60000.0f

    mul-float/2addr v3, v5

    long-to-float v5, v13

    div-float/2addr v3, v5

    move/from16 v17, v3

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v17, v4

    .line 249
    :goto_4
    iget-wide v5, v0, Lcom/tencent/liteav/network/s;->v:J

    cmp-long v3, v5, v1

    if-lez v3, :cond_8

    .line 250
    iget-wide v7, v0, Lcom/tencent/liteav/network/s;->r:J

    cmp-long v3, v7, v1

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_5

    :cond_6
    long-to-float v3, v7

    long-to-float v5, v5

    div-float/2addr v3, v5

    .line 257
    :goto_5
    iget-wide v5, v0, Lcom/tencent/liteav/network/s;->s:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_7

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_6

    :cond_7
    long-to-float v1, v5

    .line 261
    iget-wide v4, v0, Lcom/tencent/liteav/network/s;->v:J

    long-to-float v2, v4

    div-float/2addr v1, v2

    move/from16 v19, v1

    move/from16 v18, v3

    goto :goto_6

    :cond_8
    move/from16 v18, v4

    move/from16 v19, v18

    .line 264
    :goto_6
    iget-boolean v1, v0, Lcom/tencent/liteav/network/s;->w:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/tencent/liteav/network/s;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/network/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-wide v1, v0, Lcom/tencent/liteav/network/s;->k:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 265
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object v9

    iget-object v10, v0, Lcom/tencent/liteav/network/s;->c:Ljava/lang/String;

    iget-wide v11, v0, Lcom/tencent/liteav/network/s;->g:J

    iget-wide v1, v0, Lcom/tencent/liteav/network/s;->k:J

    move-wide v15, v1

    invoke-virtual/range {v9 .. v19}, Lcom/tencent/liteav/network/q;->a(Ljava/lang/String;JJJFFF)V

    :cond_9
    :goto_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/tencent/liteav/network/s;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->f:J

    const-wide/16 v3, -0x1

    .line 68
    iput-wide v3, p0, Lcom/tencent/liteav/network/s;->g:J

    .line 69
    iput-object v0, p0, Lcom/tencent/liteav/network/s;->h:Ljava/lang/String;

    .line 71
    iput-wide v3, p0, Lcom/tencent/liteav/network/s;->i:J

    .line 72
    iput-wide v3, p0, Lcom/tencent/liteav/network/s;->j:J

    .line 73
    iput-wide v3, p0, Lcom/tencent/liteav/network/s;->k:J

    .line 75
    iput-wide v3, p0, Lcom/tencent/liteav/network/s;->l:J

    .line 76
    iput-object v0, p0, Lcom/tencent/liteav/network/s;->e:Ljava/lang/String;

    .line 78
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->m:J

    .line 80
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->n:J

    .line 81
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->o:J

    .line 82
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->p:J

    .line 83
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->q:J

    .line 85
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->r:J

    .line 86
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->s:J

    .line 87
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->t:J

    .line 88
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->u:J

    .line 89
    iput-wide v1, p0, Lcom/tencent/liteav/network/s;->v:J

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/tencent/liteav/network/s;->w:Z

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->p:J

    .line 165
    iput-wide p3, p0, Lcom/tencent/liteav/network/s;->q:J

    return-void
.end method

.method public a(JJJ)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->i:J

    .line 155
    iput-wide p3, p0, Lcom/tencent/liteav/network/s;->j:J

    .line 156
    iput-wide p5, p0, Lcom/tencent/liteav/network/s;->k:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/liteav/network/s;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 116
    :goto_0
    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->l:J

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/tencent/liteav/network/s;->w:Z

    :cond_1
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 127
    iput-object p2, p0, Lcom/tencent/liteav/network/s;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    .line 129
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->g:J

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    const-string p1, ":"

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 136
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    const-string p1, "[.]"

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 141
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    .line 142
    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/s;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 p1, 0x3

    .line 143
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->g:J

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 p1, 0x2

    .line 147
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->g:J

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->f:J

    .line 107
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/network/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/s;->c:Ljava/lang/String;

    return-void
.end method

.method public b(JJ)V
    .locals 4

    .line 169
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->v:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->v:J

    .line 170
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->r:J

    .line 171
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->s:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->s:J

    .line 172
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->t:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 173
    iput-wide p1, p0, Lcom/tencent/liteav/network/s;->t:J

    .line 175
    :cond_0
    iget-wide p1, p0, Lcom/tencent/liteav/network/s;->u:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 176
    iput-wide p3, p0, Lcom/tencent/liteav/network/s;->u:J

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/tencent/liteav/network/s;->f()V

    .line 112
    invoke-direct {p0}, Lcom/tencent/liteav/network/s;->e()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 160
    iget-wide v0, p0, Lcom/tencent/liteav/network/s;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/network/s;->m:J

    return-void
.end method
