.class public Lcom/tencent/liteav/b;
.super Ljava/lang/Object;
.source "TXCDataReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/b$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/liteav/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/lang/String; = "TXCDataReport"


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:I

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/b;->A:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lcom/tencent/liteav/b;->o:J

    .line 205
    iput-wide v0, p0, Lcom/tencent/liteav/b;->p:J

    const/4 v2, 0x0

    .line 208
    iput-boolean v2, p0, Lcom/tencent/liteav/b;->q:Z

    .line 209
    iput-wide v0, p0, Lcom/tencent/liteav/b;->r:J

    .line 210
    iput-wide v0, p0, Lcom/tencent/liteav/b;->s:J

    .line 211
    iput-wide v0, p0, Lcom/tencent/liteav/b;->t:J

    .line 212
    iput-wide v0, p0, Lcom/tencent/liteav/b;->u:J

    .line 213
    iput-wide v0, p0, Lcom/tencent/liteav/b;->v:J

    .line 214
    iput-wide v0, p0, Lcom/tencent/liteav/b;->w:J

    .line 215
    iput v2, p0, Lcom/tencent/liteav/b;->x:I

    .line 216
    iput-wide v0, p0, Lcom/tencent/liteav/b;->y:J

    const-string v2, ""

    .line 388
    iput-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    .line 393
    iput-object v2, p0, Lcom/tencent/liteav/b;->C:Ljava/lang/String;

    .line 223
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    .line 225
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    const/16 p1, 0x1388

    .line 226
    iput p1, p0, Lcom/tencent/liteav/b;->n:I

    .line 227
    iput-wide v0, p0, Lcom/tencent/liteav/b;->v:J

    return-void
.end method

.method private a(I)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 521
    new-instance v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v2}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 522
    iget-object v3, v0, Lcom/tencent/liteav/b;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    const/4 v3, 0x0

    .line 523
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 524
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 525
    iget-object v3, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "token"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 526
    iget-object v4, v0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ao:I

    invoke-static {v4, v3, v1, v5, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 528
    invoke-direct {v0, v1, v3}, Lcom/tencent/liteav/b;->a(ILjava/lang/String;)V

    .line 529
    iget-object v2, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "u64_timestamp"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 530
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v5

    :goto_0
    invoke-static {v3, v1, v4, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 534
    iget-object v2, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bc3

    invoke-static {v2, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v5

    .line 535
    iget-object v2, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v7, 0x1bc4

    invoke-static {v2, v7}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    sub-long/2addr v7, v5

    :cond_1
    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-gez v2, :cond_2

    move-wide v13, v9

    goto :goto_1

    :cond_2
    move-wide v13, v7

    :goto_1
    const-string v2, "u32_dns_time"

    .line 539
    invoke-static {v3, v1, v2, v13, v14}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 542
    iget-object v13, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x1bc5

    invoke-static {v13, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v13

    cmp-long v15, v13, v9

    if-eqz v15, :cond_3

    sub-long/2addr v13, v5

    :cond_3
    cmp-long v5, v13, v11

    if-gez v5, :cond_4

    move-wide v5, v9

    goto :goto_2

    :cond_4
    move-wide v5, v13

    :goto_2
    const-string v15, "u32_connect_server_time"

    .line 546
    invoke-static {v3, v1, v15, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 549
    iget-object v5, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v6, 0x138c

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v5

    int-to-long v9, v5

    const-string v6, "u32_video_decode_type"

    .line 550
    invoke-static {v3, v1, v6, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 554
    iget-object v9, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x1771

    invoke-static {v9, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/tencent/liteav/b;->y:J

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lcom/tencent/liteav/b;->f:J

    .line 555
    iget-wide v9, v0, Lcom/tencent/liteav/b;->f:J

    const-wide/16 v11, 0x0

    cmp-long v18, v9, v11

    if-gez v18, :cond_5

    const-wide/16 v9, -0x1

    :cond_5
    const-string v11, "u32_first_i_frame"

    invoke-static {v3, v1, v11, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 558
    iget-object v9, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x1bbf

    invoke-static {v9, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v9

    move-object/from16 v20, v11

    iget-wide v11, v0, Lcom/tencent/liteav/b;->y:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v18, v9, v11

    if-gez v18, :cond_6

    move-wide/from16 v21, v9

    const-wide/16 v11, -0x1

    goto :goto_3

    :cond_6
    move-wide v11, v9

    move-wide/from16 v21, v11

    :goto_3
    const-string v9, "u32_first_frame_down"

    .line 559
    invoke-static {v3, v1, v9, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 563
    iget-object v10, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v11, 0x138d

    invoke-static {v10, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v10

    move v12, v5

    move-object/from16 v23, v6

    iget-wide v5, v0, Lcom/tencent/liteav/b;->y:J

    sub-long v5, v10, v5

    const-wide/16 v10, 0x0

    cmp-long v18, v5, v10

    if-gez v18, :cond_7

    move-wide/from16 v24, v5

    const-wide/16 v10, -0x1

    goto :goto_4

    :cond_7
    move-wide v10, v5

    move-wide/from16 v24, v10

    :goto_4
    const-string v5, "u32_first_video_decode_time"

    .line 564
    invoke-static {v3, v1, v5, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 567
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x1bc0

    invoke-static {v6, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v10

    move-object/from16 v26, v5

    iget-wide v5, v0, Lcom/tencent/liteav/b;->y:J

    sub-long v5, v10, v5

    const-wide/16 v10, 0x0

    cmp-long v18, v5, v10

    if-gez v18, :cond_8

    move-wide/from16 v27, v5

    const-wide/16 v10, -0x1

    goto :goto_5

    :cond_8
    move-wide v10, v5

    move-wide/from16 v27, v10

    :goto_5
    const-string v5, "u32_first_audio_frame_down"

    .line 568
    invoke-static {v3, v1, v5, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 572
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x7f1

    invoke-static {v6, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v10

    move-object/from16 v29, v5

    iget-wide v5, v0, Lcom/tencent/liteav/b;->y:J

    sub-long v5, v10, v5

    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_9

    move-wide/from16 v16, v5

    const-wide/16 v10, -0x1

    goto :goto_6

    :cond_9
    move-wide v10, v5

    move-wide/from16 v16, v10

    :goto_6
    const-string v5, "u32_first_audio_render_time"

    .line 573
    invoke-static {v3, v1, v5, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 576
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x1bc1

    invoke-static {v6, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    int-to-long v10, v6

    move/from16 v18, v6

    const-string v6, "u64_err_code"

    .line 577
    invoke-static {v3, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 580
    iget-object v10, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v11, 0x1bc2

    invoke-static {v10, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v5

    move-object/from16 v19, v6

    int-to-long v5, v10

    move/from16 v30, v10

    const-string v10, "str_err_info"

    .line 581
    invoke-static {v3, v1, v10, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 584
    iget-object v5, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v6, 0x1bc8

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v5

    .line 585
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "u32_link_type"

    invoke-static {v3, v1, v10, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v10, 0x1bc7

    invoke-static {v6, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    .line 589
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v31, v6

    const-string v6, "u32_channel_type"

    invoke-static {v3, v1, v6, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v6, v0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    const-string v10, "str_app_version"

    invoke-static {v3, v1, v10, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 597
    sget-object v6, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v6

    const-string v6, "report evt "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": token="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "str_user_id"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    move/from16 v33, v5

    const-string v5, "str_user_id"

    .line 598
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dev_uuid"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "dev_uuid"

    .line 599
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_session_id"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "str_session_id"

    .line 600
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_device_type"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "str_device_type"

    .line 601
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_os_info"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "str_os_info"

    .line 602
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_package_name"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "str_package_name"

    .line 603
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "u32_network_type"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "u32_network_type"

    .line 604
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "u32_server_ip"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "u32_server_ip"

    .line 605
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_stream_url"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v6, "str_stream_url"

    .line 606
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    .line 607
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v21

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v24

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/tencent/liteav/b;->f:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v27

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v16

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "str_err_info"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v30

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_link_type"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v33

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_channel_type"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v31

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "str_app_version"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v32

    .line 597
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    .line 842
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1bd1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v2, "str_session_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v3, 0x1bc6

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "u32_server_ip"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    const-string v1, "str_stream_url"

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bcc

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bcf

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "str_user_id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v4, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "dev_uuid"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v4, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v2, "str_device_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v2, "str_os_info"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v2, "str_package_name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "u32_network_type"

    .line 865
    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->g(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {p2, p1, v0, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 866
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v3, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, p1, v1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .locals 56

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 657
    new-instance v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v2}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 658
    iget-object v3, v0, Lcom/tencent/liteav/b;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    const/4 v3, 0x0

    .line 659
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 660
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 661
    iget-object v3, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "token"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 662
    iget-object v4, v0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ao:I

    invoke-static {v4, v3, v1, v5, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 664
    invoke-direct {v0, v1, v3}, Lcom/tencent/liteav/b;->a(ILjava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v4

    const-string v2, "u64_end_timestamp"

    .line 666
    invoke-static {v3, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v2, "u64_timestamp"

    .line 667
    invoke-static {v3, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 670
    iget-object v4, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x232a

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v4

    .line 671
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u32_avg_cpu_usage"

    invoke-static {v3, v1, v7, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v8, 0x232d

    invoke-static {v6, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v8

    .line 675
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v10, "u32_avg_memory"

    invoke-static {v3, v1, v10, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-wide v11, v0, Lcom/tencent/liteav/b;->v:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v11, "u64_begin_timestamp"

    .line 679
    invoke-static {v3, v1, v11, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v12, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x1bc3

    invoke-static {v12, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v12

    .line 684
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v14, v12

    const-wide/16 v12, 0x0

    cmp-long v16, v14, v12

    const-wide/16 v17, -0x1

    move-object/from16 v21, v6

    if-gez v16, :cond_0

    move-wide/from16 v12, v17

    goto :goto_0

    :cond_0
    move-wide v12, v14

    :goto_0
    const-string v6, "u64_playtime"

    .line 685
    invoke-static {v3, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    if-gez v16, :cond_1

    move-wide/from16 v12, v17

    goto :goto_1

    :cond_1
    move-wide v12, v14

    :goto_1
    const-string v6, "u32_result"

    .line 686
    invoke-static {v3, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 689
    iget-object v12, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x1bc1

    invoke-static {v12, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v12

    move-wide/from16 v22, v14

    int-to-long v13, v12

    const-string v15, "u64_err_code"

    .line 690
    invoke-static {v3, v1, v15, v13, v14}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 693
    iget-object v13, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x7d4

    invoke-static {v13, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v13

    move-object v14, v11

    move/from16 v16, v12

    int-to-long v11, v13

    move-object/from16 v24, v14

    const-string v14, "u32_speed_cnt"

    .line 694
    invoke-static {v3, v1, v14, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 697
    iget-object v11, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v12, 0x7d8

    invoke-static {v11, v12}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v11

    move/from16 v25, v13

    int-to-long v12, v11

    move-object/from16 v26, v15

    const-string v15, "u64_audio_cache_avg"

    .line 698
    invoke-static {v3, v1, v15, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v15, "u32_avg_cache_time"

    .line 699
    invoke-static {v3, v1, v15, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 702
    iget-object v12, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x7d3

    invoke-static {v12, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v27, v6

    .line 703
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v28, v12

    const-string v12, "u32_max_load"

    invoke-static {v3, v1, v12, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x7d1

    invoke-static {v6, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v30, v12

    int-to-long v12, v6

    .line 707
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move/from16 v31, v11

    const-string v11, "u32_avg_load"

    invoke-static {v3, v1, v11, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    move-object/from16 v32, v11

    const/16 v11, 0x7d2

    invoke-static {v6, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    move-object v11, v14

    move-object/from16 v33, v15

    int-to-long v14, v6

    .line 711
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v34, v11

    const-string v11, "u32_load_cnt"

    invoke-static {v3, v1, v11, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v11, 0x7d5

    invoke-static {v6, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    move-wide/from16 v35, v8

    int-to-long v8, v6

    const-string v11, "u32_nodata_cnt"

    .line 715
    invoke-static {v3, v1, v11, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    mul-long v8, v12, v14

    const-string v11, "u32_audio_block_time"

    .line 719
    invoke-static {v3, v1, v11, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    move-wide/from16 v37, v14

    .line 722
    iget-wide v14, v0, Lcom/tencent/liteav/b;->f:J

    const-wide/16 v19, 0x0

    cmp-long v11, v14, v19

    if-gez v11, :cond_2

    move-wide/from16 v14, v17

    :cond_2
    const-string v11, "u32_first_i_frame"

    invoke-static {v3, v1, v11, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 725
    iget-object v11, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x177a

    invoke-static {v11, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v11

    int-to-long v14, v11

    move-wide/from16 v17, v8

    const-string v8, "u32_video_width"

    .line 726
    invoke-static {v3, v1, v8, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 729
    iget-object v8, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v9, 0x177b

    invoke-static {v8, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v8

    int-to-long v14, v8

    const-string v9, "u32_video_height"

    .line 730
    invoke-static {v3, v1, v9, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 733
    iget-object v9, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x1777

    invoke-static {v9, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v14

    .line 734
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v39, v12

    const-string v12, "u32_video_avg_fps"

    invoke-static {v3, v1, v12, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v9, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v12, 0x1773

    invoke-static {v9, v12}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v12

    .line 737
    iget-object v9, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    move/from16 v41, v6

    const/16 v6, 0x1775

    move-wide/from16 v42, v14

    invoke-static {v9, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v14

    .line 738
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v9, 0x1776

    move/from16 v44, v8

    invoke-static {v6, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v8

    const-wide/16 v19, 0x0

    cmp-long v6, v12, v19

    if-lez v6, :cond_3

    .line 741
    div-long v19, v8, v12

    :cond_3
    move/from16 v45, v11

    move-wide/from16 v54, v19

    move-object/from16 v19, v10

    move-wide/from16 v10, v54

    const-string v6, "u64_block_duration_avg"

    .line 745
    invoke-static {v3, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v6, "u32_avg_block_time"

    .line 746
    invoke-static {v3, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v6, "u64_block_count"

    .line 749
    invoke-static {v3, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v6, "u32_video_block_time"

    .line 752
    invoke-static {v3, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v6, "u64_block_duration_max"

    .line 755
    invoke-static {v3, v1, v6, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 758
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x17d7

    invoke-static {v6, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v14

    const-string v6, "u64_jitter_cache_max"

    .line 759
    invoke-static {v3, v1, v6, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 762
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    move-wide/from16 v46, v14

    const/16 v14, 0x17d6

    invoke-static {v6, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v14

    const-string v6, "u64_jitter_cache_avg"

    .line 763
    invoke-static {v3, v1, v6, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 766
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    move-wide/from16 v48, v14

    const/16 v14, 0x1bc8

    invoke-static {v6, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    .line 767
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v14, "u32_link_type"

    invoke-static {v3, v1, v14, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v6, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v14, 0x1bc7

    invoke-static {v6, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    .line 771
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "u32_channel_type"

    invoke-static {v3, v1, v15, v14}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v14, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v15, 0x1bc9

    invoke-static {v14, v15}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v14

    .line 775
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v50, v12

    const-string v12, "u32_ip_count_quic"

    invoke-static {v3, v1, v12, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v12, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x1bca

    invoke-static {v12, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v12

    .line 779
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "u32_connect_count_quic"

    invoke-static {v3, v1, v15, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v13, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v15, 0x1bcb

    invoke-static {v13, v15}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v13

    .line 783
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v13

    const-string v13, "u32_connect_count_tcp"

    invoke-static {v3, v1, v13, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v13, v0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    const-string v15, "str_app_version"

    invoke-static {v3, v1, v15, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-boolean v13, v0, Lcom/tencent/liteav/b;->q:Z

    move v15, v12

    int-to-long v12, v13

    move/from16 v52, v15

    const-string v15, "u32_is_real_time"

    .line 790
    invoke-static {v3, v1, v15, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 793
    iget-object v12, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v13, 0x177d

    invoke-static {v12, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v12

    const-string v15, "u32_first_frame_black"

    invoke-static {v3, v1, v15, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 795
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 797
    sget-object v12, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "report evt "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": token="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "str_user_id"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    move-object/from16 v53, v12

    const-string v12, "str_user_id"

    .line 798
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "dev_uuid"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "dev_uuid"

    .line 799
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "str_session_id"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "str_session_id"

    .line 800
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "str_device_type"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "str_device_type"

    .line 801
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "str_os_info"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "str_os_info"

    .line 802
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "str_package_name"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "str_package_name"

    .line 803
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "u32_network_type"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "u32_network_type"

    .line 804
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "u32_server_ip"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "u32_server_ip"

    .line 805
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "str_stream_url"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v15, "str_stream_url"

    .line 806
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    .line 807
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v35

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_first_i_frame"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/tencent/liteav/b;->f:J

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_video_width"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v45

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_video_height"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v44

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_video_avg_fps"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v42

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v25

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_nodata_cnt"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v41

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v33

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v31

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_avg_block_time"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v39

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v28

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_video_block_time"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_audio_block_time"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_load_cnt"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v37

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v22

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_channel_type"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_ip_count_quic"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_connect_count_quic"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v52

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_connect_count_tcp"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v20

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u64_block_count"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v50

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u64_jitter_cache_max"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v46

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u64_jitter_cache_avg"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v48

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_is_real_time"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x7d9

    .line 834
    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "str_app_version"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v53

    .line 797
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)V
    .locals 13

    .line 872
    new-instance v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 873
    iget-object v1, p0, Lcom/tencent/liteav/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 874
    iput-boolean v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    const/4 v2, 0x1

    .line 875
    iput-boolean v2, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 876
    iget-object v3, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v4, "token"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 877
    iget-object v4, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ao:I

    invoke-static {v4, v3, p1, v5, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 879
    invoke-direct {p0, p1, v3}, Lcom/tencent/liteav/b;->a(ILjava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v4

    const-string v0, "u64_timestamp"

    .line 881
    invoke-static {v3, p1, v0, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 884
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v0

    .line 885
    aget v4, v0, v2

    int-to-long v4, v4

    const-string v6, "u32_cpu_usage"

    invoke-static {v3, p1, v6, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 888
    aget v0, v0, v1

    int-to-long v0, v0

    const-string v4, "u32_app_cpu_usage"

    invoke-static {v3, p1, v4, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 891
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x232a

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    .line 892
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u32_avg_cpu_usage"

    invoke-static {v3, p1, v1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x232d

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    .line 896
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u32_avg_memory"

    invoke-static {v3, p1, v1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x17dc

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v0

    const-string v4, "u32_recv_av_diff_time"

    .line 900
    invoke-static {v3, p1, v4, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 903
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x17db

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v0

    const-string v4, "u32_play_av_diff_time"

    .line 904
    invoke-static {v3, p1, v4, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 907
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/liteav/b;->v:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 908
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u64_playtime"

    invoke-static {v3, p1, v1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7df

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    int-to-long v0, v2

    const-string v2, "u32_audio_decode_type"

    .line 916
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 919
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v0

    .line 920
    iget-wide v4, p0, Lcom/tencent/liteav/b;->k:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    const-string v8, "u32_audio_block_count"

    const-wide/16 v9, 0x0

    if-nez v2, :cond_1

    .line 921
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, p1, v8, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    sub-long v4, v0, v4

    .line 924
    invoke-static {v3, p1, v8, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0

    .line 926
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, p1, v8, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 929
    :goto_0
    iput-wide v0, p0, Lcom/tencent/liteav/b;->k:J

    .line 932
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7da

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "u32_audio_cache_time"

    .line 933
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 936
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7de

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "u32_audio_drop"

    .line 937
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 940
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x138c

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "u32_video_decode_type"

    .line 941
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 944
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x138f

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    double-to-int v0, v0

    if-nez v0, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/tencent/liteav/b;->h()I

    move-result v0

    :cond_3
    int-to-long v0, v0

    const-string v2, "u32_video_recv_fps"

    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 948
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1772

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-long v0, v0

    const-string v2, "u32_fps"

    .line 949
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 952
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x17d5

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "u32_video_cache_time"

    .line 953
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 956
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x17d6

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v0

    const-string v2, "u32_video_cache_count"

    .line 957
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v2, "u32_avg_cache_count"

    .line 958
    invoke-static {v3, p1, v2, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 961
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1774

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v4

    .line 962
    iget-wide v11, p0, Lcom/tencent/liteav/b;->g:J

    cmp-long v2, v11, v6

    const-string v6, "u32_video_block_count"

    if-nez v2, :cond_4

    .line 963
    invoke-static {v3, p1, v6, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1

    :cond_4
    cmp-long v2, v4, v11

    if-ltz v2, :cond_5

    sub-long v7, v4, v11

    .line 966
    invoke-static {v3, p1, v6, v7, v8}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1

    .line 968
    :cond_5
    invoke-static {v3, p1, v6, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 971
    :goto_1
    iput-wide v4, p0, Lcom/tencent/liteav/b;->g:J

    .line 974
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1bbe

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    .line 975
    iget-object v4, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bbd

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v4

    add-int v5, v2, v4

    int-to-long v5, v5

    const-string v7, "u32_net_speed"

    .line 977
    invoke-static {v3, p1, v7, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    const-string v7, "u32_avg_net_speed"

    .line 978
    invoke-static {v3, p1, v7, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    int-to-long v5, v2

    const-string v2, "u32_avg_audio_bitrate"

    .line 981
    invoke-static {v3, p1, v2, v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    int-to-long v4, v4

    const-string v2, "u32_avg_video_bitrate"

    .line 984
    invoke-static {v3, p1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 987
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1bc8

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    .line 988
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "u32_link_type"

    invoke-static {v3, p1, v4, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1bc7

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    .line 992
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "u32_channel_type"

    invoke-static {v3, p1, v4, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Lcom/tencent/liteav/b;->e:Ljava/lang/String;

    const-string v4, "str_app_version"

    invoke-static {v3, p1, v4, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1779

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v4

    .line 999
    iget-wide v6, p0, Lcom/tencent/liteav/b;->h:J

    cmp-long v2, v4, v6

    const-string v8, "u32_video_light_block_count"

    if-lez v2, :cond_6

    sub-long v6, v4, v6

    .line 1000
    invoke-static {v3, p1, v8, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_2

    .line 1002
    :cond_6
    invoke-static {v3, p1, v8, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1004
    :goto_2
    iput-wide v4, p0, Lcom/tencent/liteav/b;->h:J

    .line 1007
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1773

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v4

    .line 1008
    iget-wide v6, p0, Lcom/tencent/liteav/b;->i:J

    cmp-long v2, v4, v6

    const-string v8, "u32_video_large_block_count"

    if-lez v2, :cond_7

    sub-long v6, v4, v6

    .line 1009
    invoke-static {v3, p1, v8, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_3

    .line 1011
    :cond_7
    invoke-static {v3, p1, v8, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1013
    :goto_3
    iput-wide v4, p0, Lcom/tencent/liteav/b;->i:J

    .line 1016
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x7f2

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    .line 1017
    iget-wide v6, p0, Lcom/tencent/liteav/b;->j:J

    cmp-long v2, v4, v6

    const-string v8, "u32_audio_jitter_60ms_count"

    if-lez v2, :cond_8

    sub-long v6, v4, v6

    .line 1018
    invoke-static {v3, p1, v8, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_4

    .line 1020
    :cond_8
    invoke-static {v3, p1, v8, v9, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1022
    :goto_4
    iput-wide v4, p0, Lcom/tencent/liteav/b;->j:J

    .line 1025
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x138e

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    const-string v2, "u32_video_decode_fail"

    .line 1026
    invoke-static {v3, p1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1029
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x7f3

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    const-string v2, "u32_audio_decode_fail"

    .line 1030
    invoke-static {v3, p1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1032
    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 1035
    iget-boolean p1, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz p1, :cond_9

    .line 1036
    iget-wide v2, p0, Lcom/tencent/liteav/b;->u:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/b;->u:J

    .line 1037
    iget-wide v2, p0, Lcom/tencent/liteav/b;->t:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tencent/liteav/b;->t:J

    .line 1038
    iget-wide v2, p0, Lcom/tencent/liteav/b;->s:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_9

    .line 1039
    iput-wide v0, p0, Lcom/tencent/liteav/b;->s:J

    :cond_9
    return-void
.end method

.method protected static c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "myqcloud"

    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 385
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .line 43
    sget-object v0, Lcom/tencent/liteav/b;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "room://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 627
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    const-string v0, "_"

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 630
    iget-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v0, 0x1bc8

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)I
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 1433
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g()V
    .locals 3

    const/16 v0, 0x1772

    const/16 v1, 0x1777

    const/16 v2, 0x1778

    .line 431
    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/liteav/b;->a(III)V

    .line 434
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2329

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v0, 0x232a

    const/16 v1, 0x232b

    .line 436
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/liteav/b;->a(III)V

    .line 439
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x232c

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v0, 0x232d

    const/16 v1, 0x232e

    .line 440
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/liteav/b;->a(III)V

    return-void
.end method

.method private h()I
    .locals 14

    .line 636
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 637
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v3, 0x17dd

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 638
    iget-wide v4, p0, Lcom/tencent/liteav/b;->o:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    sub-long v4, v0, v4

    .line 640
    iget-wide v12, p0, Lcom/tencent/liteav/b;->p:J

    sub-long v12, v2, v12

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    mul-long/2addr v12, v9

    .line 642
    div-long/2addr v12, v4

    long-to-int v4, v12

    move v11, v4

    goto :goto_0

    .line 645
    :cond_0
    iget-wide v4, p0, Lcom/tencent/liteav/b;->w:J

    sub-long v4, v0, v4

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    mul-long/2addr v9, v2

    .line 647
    div-long/2addr v9, v4

    long-to-int v11, v9

    .line 650
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/tencent/liteav/b;->o:J

    .line 651
    iput-wide v2, p0, Lcom/tencent/liteav/b;->p:J

    return v11
.end method

.method private i()V
    .locals 10

    .line 1083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1086
    iget-object v1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v2, 0x1bcc

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1087
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v3, 0x1bcd

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1088
    iget-object v3, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1bce

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1089
    iget-object v4, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bc1

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v4

    .line 1090
    iget-object v5, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v6, 0x1bc2

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1091
    iget-object v6, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v7, 0x1bc7

    invoke-static {v6, v7}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "stream_url"

    .line 1093
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stream_id"

    .line 1094
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bizid"

    .line 1095
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "err_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "err_info"

    .line 1097
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1103
    iget-wide v3, p0, Lcom/tencent/liteav/b;->r:J

    sub-long v3, v1, v3

    .line 1104
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/tencent/liteav/b;->r:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "start_time"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v2, 0x1773

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v1

    .line 1111
    iget-object v3, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v4, 0x1776

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v3

    .line 1112
    iget-object v5, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v6, 0x1775

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 1115
    div-long/2addr v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, v7

    .line 1117
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_duration_max"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_duration_avg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-wide v1, p0, Lcom/tencent/liteav/b;->u:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 1125
    iget-wide v3, p0, Lcom/tencent/liteav/b;->t:J

    div-long v1, v3, v1

    goto :goto_1

    :cond_1
    move-wide v1, v7

    .line 1127
    :goto_1
    iget-wide v3, p0, Lcom/tencent/liteav/b;->s:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jitter_cache_max"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jitter_cache_avg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txCreateToken()Ljava/lang/String;

    move-result-object v1

    .line 1133
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    .line 1134
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->an:I

    .line 1135
    new-instance v4, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v4}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    const-string v5, "LINKMIC"

    .line 1136
    iput-object v5, v4, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->command_id_comment:Ljava/lang/String;

    .line 1138
    iget-object v5, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    invoke-static {v5, v1, v2, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 1139
    sget-object v3, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report evt 40402: token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1141
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1145
    sget-object v5, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RealTimePlayStatisticInfo: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 1146
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-eqz v3, :cond_2

    .line 1147
    invoke-static {v1, v2, v4, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1150
    :cond_3
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 1153
    iput-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    .line 1154
    iput-wide v7, p0, Lcom/tencent/liteav/b;->r:J

    .line 1155
    iput-wide v7, p0, Lcom/tencent/liteav/b;->u:J

    .line 1156
    iput-wide v7, p0, Lcom/tencent/liteav/b;->t:J

    .line 1157
    iput-wide v7, p0, Lcom/tencent/liteav/b;->s:J

    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1440
    iput-boolean v0, p0, Lcom/tencent/liteav/b;->l:Z

    const-wide/16 v1, 0x0

    .line 1441
    iput-wide v1, p0, Lcom/tencent/liteav/b;->m:J

    .line 1442
    iput v0, p0, Lcom/tencent/liteav/b;->x:I

    .line 1457
    iget-object v0, p0, Lcom/tencent/liteav/b;->C:Ljava/lang/String;

    .line 1458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1461
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    const-string v2, "str_user_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v1

    const-string v2, "str_device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "u32_network_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "str_package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dev_uuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Version()Ljava/lang/String;

    move-result-object v1

    const-string v2, "str_os_info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->v:J

    .line 1489
    iget-object v0, p0, Lcom/tencent/liteav/b;->b:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/tencent/liteav/b;->v:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "u64_timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->w:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/tencent/liteav/b;->j()V

    const-wide/16 v0, -0x1

    .line 235
    iput-wide v0, p0, Lcom/tencent/liteav/b;->g:J

    .line 236
    iput-wide v0, p0, Lcom/tencent/liteav/b;->k:J

    const-wide/16 v0, 0x0

    .line 237
    iput-wide v0, p0, Lcom/tencent/liteav/b;->h:J

    .line 238
    iput-wide v0, p0, Lcom/tencent/liteav/b;->i:J

    .line 239
    iput-wide v0, p0, Lcom/tencent/liteav/b;->j:J

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->r:J

    .line 241
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->y:J

    return-void
.end method

.method public a(III)V
    .locals 6

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    const/16 v2, 0x1772

    if-ne p1, v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v2

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    .line 450
    iget-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-double/2addr v2, v0

    int-to-double v4, p1

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 453
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 454
    iget-object p2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result p1

    int-to-double v2, p1

    cmpg-double p1, v2, v0

    if-gez p1, :cond_2

    return-void

    .line 460
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v0

    .line 461
    iget-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-double/2addr v2, v0

    int-to-double v4, p1

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 464
    iget-object v2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 465
    iget-object p2, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/tencent/liteav/b;->c:Ljava/lang/String;

    .line 299
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/tencent/liteav/b;->q:Z

    return-void
.end method

.method public b()V
    .locals 5

    .line 254
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->l:Z

    if-eqz v0, :cond_3

    .line 256
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_0

    .line 257
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Y:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->c(I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/b;->c()Lcom/tencent/liteav/b$a;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/b$a;->c:Lcom/tencent/liteav/b$a;

    if-eq v0, v1, :cond_1

    .line 260
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->V:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->c(I)V

    .line 262
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_2

    .line 263
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->b(I)V

    goto :goto_1

    .line 265
    :cond_2
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->W:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->b(I)V

    goto :goto_1

    .line 269
    :cond_3
    sget-object v0, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_4

    .line 271
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->X:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->a(I)V

    goto :goto_1

    .line 274
    :cond_4
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->U:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->a(I)V

    .line 278
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_5

    .line 279
    invoke-direct {p0}, Lcom/tencent/liteav/b;->i()V

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1bc3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7f1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1771

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1bc0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1bc4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/b;->z:Ljava/lang/String;

    return-void
.end method

.method protected c()Lcom/tencent/liteav/b$a;
    .locals 4

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/b;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    sget-object v0, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    return-object v0

    .line 326
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 328
    sget-object v0, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    return-object v0

    :cond_2
    const-string v3, "rtmp"

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 330
    sget-object v0, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    return-object v0

    .line 331
    :cond_3
    invoke-static {v1}, Lcom/tencent/liteav/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    sget-object v0, Lcom/tencent/liteav/b$a;->b:Lcom/tencent/liteav/b$a;

    return-object v0

    .line 334
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "bizid"

    .line 336
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "txTime"

    .line 337
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "txSecret"

    .line 338
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    :cond_5
    sget-object v0, Lcom/tencent/liteav/b$a;->b:Lcom/tencent/liteav/b$a;

    return-object v0

    .line 341
    :cond_6
    sget-object v0, Lcom/tencent/liteav/b;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    sget-object v0, Lcom/tencent/liteav/b;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/b$a;

    return-object v0

    .line 344
    :cond_7
    sget-object v0, Lcom/tencent/liteav/b;->A:Ljava/util/HashMap;

    sget-object v2, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/liteav/b$1;

    invoke-direct {v2, p0, v1}, Lcom/tencent/liteav/b$1;-><init>(Lcom/tencent/liteav/b;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 368
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    sget-object v1, Lcom/tencent/liteav/b;->a:Ljava/lang/String;

    const-string v2, "check stream failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    :goto_0
    sget-object v0, Lcom/tencent/liteav/b$a;->a:Lcom/tencent/liteav/b$a;

    return-object v0
.end method

.method public d()V
    .locals 13

    .line 470
    invoke-direct {p0}, Lcom/tencent/liteav/b;->g()V

    .line 471
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->l:Z

    const/4 v1, 0x1

    const/16 v2, 0x1388

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1771

    invoke-static {v0, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v5

    .line 473
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v7, 0x1bc0

    invoke-static {v0, v7}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v7

    .line 474
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v9, 0x7f1

    invoke-static {v0, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v9

    .line 475
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v11, 0x1bc4

    invoke-static {v0, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v11

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    cmp-long v0, v7, v3

    if-lez v0, :cond_1

    cmp-long v0, v11, v3

    if-lez v0, :cond_1

    cmp-long v0, v9, v3

    if-lez v0, :cond_1

    .line 477
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->X:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->U:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->a(I)V

    .line 478
    iput v2, p0, Lcom/tencent/liteav/b;->n:I

    .line 479
    iput-boolean v1, p0, Lcom/tencent/liteav/b;->l:Z

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v5, 0x1bcf

    invoke-static {v0, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/b;->b(Ljava/lang/String;)V

    .line 488
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/b;->x:I

    const/4 v5, 0x3

    if-lt v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/tencent/liteav/b;->l:Z

    if-nez v0, :cond_4

    .line 489
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->X:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->U:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->a(I)V

    .line 490
    iput v2, p0, Lcom/tencent/liteav/b;->n:I

    .line 491
    iput-boolean v1, p0, Lcom/tencent/liteav/b;->l:Z

    .line 493
    :cond_4
    iget v0, p0, Lcom/tencent/liteav/b;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/liteav/b;->x:I

    .line 495
    iget-wide v0, p0, Lcom/tencent/liteav/b;->m:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_5

    .line 496
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->m:J

    .line 499
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/tencent/liteav/b;->m:J

    iget v5, p0, Lcom/tencent/liteav/b;->n:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-lez v0, :cond_9

    .line 500
    iget-boolean v0, p0, Lcom/tencent/liteav/b;->q:Z

    if-eqz v0, :cond_6

    .line 501
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Y:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->c(I)V

    .line 502
    iput v2, p0, Lcom/tencent/liteav/b;->n:I

    goto :goto_2

    .line 504
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/liteav/b;->c()Lcom/tencent/liteav/b$a;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/b$a;->c:Lcom/tencent/liteav/b$a;

    if-ne v0, v1, :cond_7

    return-void

    .line 506
    :cond_7
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->V:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/b;->c(I)V

    .line 507
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->getStatusReportInterval()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/b;->n:I

    .line 508
    iget v0, p0, Lcom/tencent/liteav/b;->n:I

    if-ge v0, v2, :cond_8

    .line 509
    iput v2, p0, Lcom/tencent/liteav/b;->n:I

    .line 512
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x1774

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->g:J

    .line 513
    iget-object v0, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->k:J

    .line 515
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/b;->m:J

    :cond_9
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/tencent/liteav/b;->B:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/tencent/liteav/b;->C:Ljava/lang/String;

    return-void
.end method
