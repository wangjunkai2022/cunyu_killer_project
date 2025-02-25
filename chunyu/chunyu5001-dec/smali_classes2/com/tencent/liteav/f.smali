.class public Lcom/tencent/liteav/f;
.super Ljava/lang/Object;
.source "TXCVodPlayCollection.java"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:F

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TXCVodPlayCollection"

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/f;->a:Ljava/lang/String;

    const-string v0, "1"

    .line 29
    iput-object v0, p0, Lcom/tencent/liteav/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/tencent/liteav/f;->e:J

    .line 34
    iput-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    .line 35
    iput-wide v0, p0, Lcom/tencent/liteav/f;->g:J

    const/4 v2, 0x0

    .line 36
    iput-boolean v2, p0, Lcom/tencent/liteav/f;->h:Z

    const/4 v3, 0x1

    .line 37
    iput-boolean v3, p0, Lcom/tencent/liteav/f;->i:Z

    .line 38
    iput-boolean v2, p0, Lcom/tencent/liteav/f;->j:Z

    .line 39
    iput-boolean v2, p0, Lcom/tencent/liteav/f;->k:Z

    .line 40
    iput v2, p0, Lcom/tencent/liteav/f;->l:I

    .line 41
    iput v2, p0, Lcom/tencent/liteav/f;->m:I

    .line 42
    iput v2, p0, Lcom/tencent/liteav/f;->n:I

    .line 43
    iput-wide v0, p0, Lcom/tencent/liteav/f;->o:J

    .line 44
    iput v2, p0, Lcom/tencent/liteav/f;->p:I

    .line 45
    iput v2, p0, Lcom/tencent/liteav/f;->q:I

    .line 46
    iput v2, p0, Lcom/tencent/liteav/f;->r:I

    .line 49
    iput-boolean v2, p0, Lcom/tencent/liteav/f;->u:Z

    .line 50
    iput-boolean v2, p0, Lcom/tencent/liteav/f;->v:Z

    .line 51
    iput v2, p0, Lcom/tencent/liteav/f;->w:I

    .line 52
    iput v2, p0, Lcom/tencent/liteav/f;->x:I

    const-string v0, "0"

    .line 53
    iput-object v0, p0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/tencent/liteav/f;->C:I

    .line 58
    iput v2, p0, Lcom/tencent/liteav/f;->D:I

    .line 59
    iput v2, p0, Lcom/tencent/liteav/f;->E:I

    .line 60
    iput v2, p0, Lcom/tencent/liteav/f;->F:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    iput v1, p0, Lcom/tencent/liteav/f;->H:F

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/f;->t:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    return-void
.end method

.method private c(I)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v1, "str_sdk_name"

    const-string v2, "liteavSdk"

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "str_brand_type"

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "str_device_resolution"

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "str_device_type"

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    int-to-long v2, v0

    const-string v0, "u32_network_type"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "dev_uuid"

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/liteav/f;->t:Ljava/lang/String;

    const-string v3, "str_app_version"

    invoke-static {v1, p1, v3, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/tencent/liteav/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v3, "str_app_name"

    invoke-static {v2, p1, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget-object v2, Lcom/tencent/liteav/basic/datareport/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    const-string v3, "str_stream_url"

    invoke-static {v1, p1, v3, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "token"

    invoke-static {v1, p1, v2, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "str_user_id"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getExtIDMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    iget-object v4, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    invoke-static {v4, p1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extValue = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TXCVodPlayCollection"

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    const-string v2, "str_package_name"

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    const-string v2, "u32_app_id"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 17

    move-object/from16 v0, p0

    .line 170
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    const/4 v2, 0x0

    .line 172
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 173
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 174
    iget-object v3, v0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 175
    iget-object v3, v0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    sget v6, Lcom/tencent/liteav/basic/datareport/a;->au:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 177
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/f;->c(I)V

    .line 180
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->n:I

    int-to-long v4, v4

    const-string v6, "u32_timeuse"

    invoke-static {v1, v3, v6, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 182
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->l:I

    int-to-long v4, v4

    const-string v7, "u32_videotime"

    invoke-static {v1, v3, v7, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 184
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->q:I

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/tencent/liteav/f;->r:I

    div-int/2addr v5, v4

    int-to-long v4, v5

    :goto_0
    const-string v10, "u32_avg_load"

    invoke-static {v1, v3, v10, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 186
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->q:I

    int-to-long v4, v4

    const-string v11, "u32_load_cnt"

    invoke-static {v1, v3, v11, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 188
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->s:I

    int-to-long v4, v4

    const-string v12, "u32_max_load"

    invoke-static {v1, v3, v12, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 190
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->r:I

    int-to-long v4, v4

    const-string v13, "u32_avg_block_time"

    invoke-static {v1, v3, v13, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 192
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->x:I

    int-to-long v4, v4

    const-string v14, "u32_player_type"

    invoke-static {v1, v3, v14, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 194
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->E:I

    if-lez v4, :cond_1

    int-to-long v4, v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v15, "u32_dns_time"

    invoke-static {v1, v3, v15, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 196
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->D:I

    if-lez v4, :cond_2

    int-to-long v4, v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    const-string v2, "u32_tcp_did_connect"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 198
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->F:I

    if-lez v4, :cond_3

    int-to-long v4, v4

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    :goto_3
    const-string v8, "u32_first_video_packet"

    invoke-static {v1, v3, v8, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 200
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->p:I

    if-lez v4, :cond_4

    int-to-long v4, v4

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x0

    :goto_4
    const-string v9, "u32_first_i_frame"

    invoke-static {v1, v3, v9, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 202
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    const-string v5, "u32_server_ip"

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->K:Ljava/lang/String;

    const-string v5, "u32_drm_type"

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    const-string v5, "str_fileid"

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    const-string v5, "u32_playmode"

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->A:I

    int-to-long v4, v4

    move-object/from16 v16, v9

    const-string v9, "u64_err_code"

    invoke-static {v1, v3, v9, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 212
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    const-string v5, "str_err_info"

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->C:I

    int-to-long v4, v4

    const-string v9, "u32_video_decode_type"

    invoke-static {v1, v3, v9, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 216
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    iget v4, v0, Lcom/tencent/liteav/f;->H:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    const-string v9, "u32_speed"

    invoke-static {v1, v3, v9, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 218
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ad:I

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report evt 40304: token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dev_uuid"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    .line 220
    invoke-static {v5}, Lcom/tencent/liteav/basic/util/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_app_version"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->t:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/liteav/basic/datareport/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "str_stream_url"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->n:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->l:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->q:I

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    iget v6, v0, Lcom/tencent/liteav/f;->r:I

    div-int v5, v6, v5

    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->s:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->r:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->x:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/f;->E:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->D:I

    if-lez v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, -0x1

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->F:I

    if-lez v2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, -0x1

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_server_ip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_drm_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "str_fileid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_playmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u64_err_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "str_err_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->H:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_app_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "u32_video_decode_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/f;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVodPlayCollection"

    .line 219
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 8

    .line 259
    iget-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    const-string v1, "TXCVodPlayCollection"

    if-nez v0, :cond_0

    const-string v0, "calculateSegmentPlayTime mBeginPlayTS == 0"

    .line 260
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateSegmentPlayTime mCurIndexPlayTime= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/f;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mBeginPlayTS="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/f;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-wide v0, p0, Lcom/tencent/liteav/f;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/f;->f:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/f;->o:J

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    .line 266
    iget-object v0, p0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/g;->a(Landroid/content/Context;)Lcom/tencent/liteav/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/g;->a(Landroid/content/Context;)Lcom/tencent/liteav/g;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/g;->c(Ljava/lang/String;)V

    .line 272
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/f;->h:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/tencent/liteav/f;->p()V

    .line 275
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/f;->n:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/liteav/f;->o:J

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    add-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/f;->n:I

    .line 276
    rem-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/f;->o:J

    :cond_3
    return-void
.end method

.method private p()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "TXCVodPlayCollection"

    const-string v2, "onSegmentReport"

    .line 281
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v2}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    const/4 v3, 0x0

    .line 283
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 284
    iput-boolean v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 285
    iget-object v3, v0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 286
    iget-object v3, v0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    sget v6, Lcom/tencent/liteav/basic/datareport/a;->au:I

    invoke-static {v3, v4, v5, v6, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 288
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    invoke-direct {v0, v2}, Lcom/tencent/liteav/f;->c(I)V

    .line 291
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget v4, v0, Lcom/tencent/liteav/f;->l:I

    int-to-long v4, v4

    const-string v6, "u32_videotime"

    invoke-static {v2, v3, v6, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 293
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget v4, v0, Lcom/tencent/liteav/f;->x:I

    int-to-long v4, v4

    const-string v7, "u32_player_type"

    invoke-static {v2, v3, v7, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 295
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    const-string v5, "u32_server_ip"

    invoke-static {v2, v3, v5, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->K:Ljava/lang/String;

    const-string v8, "u32_drm_type"

    invoke-static {v2, v3, v8, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    const-string v9, "str_fileid"

    invoke-static {v2, v3, v9, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-object v4, v0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    const-string v10, "u32_playmode"

    invoke-static {v2, v3, v10, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget v4, v0, Lcom/tencent/liteav/f;->m:I

    int-to-long v11, v4

    const-string v4, "u32_videoindex"

    invoke-static {v2, v3, v4, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 305
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-wide v11, v0, Lcom/tencent/liteav/f;->o:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-string v15, "u32_realplaytime"

    invoke-static {v2, v3, v15, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 307
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v13, "u64_timestamp"

    invoke-static {v2, v3, v13, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 309
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget v11, v0, Lcom/tencent/liteav/f;->H:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-long v11, v11

    const-string v14, "u32_speed"

    invoke-static {v2, v3, v14, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 311
    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    iget-object v11, v0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/liteav/g;->a(Landroid/content/Context;)Lcom/tencent/liteav/g;

    move-result-object v11

    iget-object v12, v0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/tencent/liteav/g;->a(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    move-object/from16 v16, v1

    const-string v1, "u32_segment_duration"

    invoke-static {v2, v3, v1, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 313
    iget-object v1, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->ae:I

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report evt 40305: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dev_uuid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    .line 315
    invoke-static {v11}, Lcom/tencent/liteav/basic/util/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "str_app_version"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/f;->t:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/tencent/liteav/basic/datareport/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "str_stream_url"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/tencent/liteav/f;->l:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/tencent/liteav/f;->x:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->K:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/liteav/f;->m:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/tencent/liteav/f;->o:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/liteav/f;->H:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "u32_app_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    .line 314
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 87
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_0

    .line 88
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 490
    iput p1, p0, Lcom/tencent/liteav/f;->H:F

    .line 491
    iget-object p1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->bB:I

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSpeed = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/liteav/f;->H:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/tencent/liteav/f;->x:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 248
    iput p1, p0, Lcom/tencent/liteav/f;->l:I

    .line 249
    iget-object p1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/g;->a(Landroid/content/Context;)Lcom/tencent/liteav/g;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/g;->a(Ljava/lang/String;)I

    move-result p1

    div-int/2addr p2, p1

    .line 250
    iget p1, p0, Lcom/tencent/liteav/f;->m:I

    if-eq p2, p1, :cond_0

    .line 251
    iput p2, p0, Lcom/tencent/liteav/f;->m:I

    .line 252
    iget-boolean p1, p0, Lcom/tencent/liteav/f;->i:Z

    if-nez p1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/tencent/liteav/f;->o()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \uff0cerrorInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget v0, p0, Lcom/tencent/liteav/f;->p:I

    if-nez v0, :cond_0

    .line 509
    iput p1, p0, Lcom/tencent/liteav/f;->A:I

    .line 510
    iput-object p2, p0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    .line 511
    iget-object p1, p0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 512
    iput-object p1, p0, Lcom/tencent/liteav/f;->B:Ljava/lang/String;

    .line 515
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/f;->h:Z

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/tencent/liteav/f;->c()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->h:Z

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/f;->f:J

    iput-wide v1, p0, Lcom/tencent/liteav/f;->e:J

    const/4 v1, 0x0

    .line 336
    iput v1, p0, Lcom/tencent/liteav/f;->n:I

    const-wide/16 v2, 0x0

    .line 337
    iput-wide v2, p0, Lcom/tencent/liteav/f;->o:J

    .line 338
    iput v1, p0, Lcom/tencent/liteav/f;->m:I

    .line 339
    iput-wide v2, p0, Lcom/tencent/liteav/f;->g:J

    .line 340
    iput v1, p0, Lcom/tencent/liteav/f;->q:I

    .line 341
    iput v1, p0, Lcom/tencent/liteav/f;->r:I

    .line 342
    iput v1, p0, Lcom/tencent/liteav/f;->s:I

    if-eqz p1, :cond_0

    .line 344
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->i:Z

    goto :goto_0

    .line 346
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->j:Z

    .line 348
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPaused = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/f;->i:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPreLoading = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/f;->j:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 95
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 98
    iput-boolean v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 99
    iget-object v1, p0, Lcom/tencent/liteav/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->af:I

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->au:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 101
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->af:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/f;->c(I)V

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->af:I

    iget-object v2, p0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    const-string v3, "str_fileid"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->af:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report evt 40303: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/tencent/liteav/f;->C:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/tencent/liteav/f;->y:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 472
    iput p1, p0, Lcom/tencent/liteav/f;->G:I

    .line 473
    iget-object p1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->bC:I

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 475
    iput p1, p0, Lcom/tencent/liteav/f;->G:I

    .line 477
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsMirror= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/liteav/f;->G:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 8

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/f;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->i:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/f;->j:Z

    if-nez v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/tencent/liteav/f;->o()V

    .line 358
    iget v0, p0, Lcom/tencent/liteav/f;->n:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/tencent/liteav/f;->o:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/tencent/liteav/f;->n:I

    const-wide/16 v2, 0x0

    .line 359
    iput-wide v2, p0, Lcom/tencent/liteav/f;->o:J

    .line 360
    invoke-direct {p0}, Lcom/tencent/liteav/f;->n()V

    .line 361
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->h:Z

    .line 363
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->u:Z

    .line 364
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->v:Z

    .line 365
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->i:Z

    .line 366
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->j:Z

    .line 367
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->k:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/tencent/liteav/f;->K:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 482
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->k:Z

    .line 484
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/f;->I:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/liteav/f;->I:I

    .line 485
    iget-object p1, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->bD:I

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSetBitrateIndexCnt= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/liteav/f;->I:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 6

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/f;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->i:Z

    if-nez v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/tencent/liteav/f;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/f;->f:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/f;->o:J

    :cond_0
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->i:Z

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/tencent/liteav/f;->z:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 4

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/f;->f:J

    .line 382
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 383
    iget-wide v2, p0, Lcom/tencent/liteav/f;->f:J

    iput-wide v2, p0, Lcom/tencent/liteav/f;->e:J

    .line 384
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->j:Z

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/f;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXCVodPlayCollection"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->i:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    .line 497
    iget-object p1, p0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 498
    iput-object p1, p0, Lcom/tencent/liteav/f;->J:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 6

    .line 391
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/f;->p:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/f;->k:Z

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadEnd mFirstFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/f;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsLoading = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/f;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mBeginLoadTS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/f;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXCVodPlayCollection"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->v:Z

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/f;->g:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 395
    iget v2, p0, Lcom/tencent/liteav/f;->r:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/liteav/f;->r:I

    .line 396
    iget v2, p0, Lcom/tencent/liteav/f;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/liteav/f;->q:I

    .line 397
    iget v2, p0, Lcom/tencent/liteav/f;->s:I

    if-ge v2, v0, :cond_0

    .line 398
    iput v0, p0, Lcom/tencent/liteav/f;->s:I

    .line 400
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->v:Z

    .line 403
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->u:Z

    if-eqz v0, :cond_2

    .line 404
    iput-boolean v1, p0, Lcom/tencent/liteav/f;->u:Z

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/tencent/liteav/f;->M:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "TXCVodPlayCollection"

    const-string v1, "renderStart"

    .line 409
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/tencent/liteav/f;->p:I

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/f;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/f;->p:I

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "TXCVodPlayCollection"

    const-string v1, "setBitrateRenderStart"

    .line 416
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->k:Z

    return-void
.end method

.method public i()V
    .locals 4

    .line 421
    iget v0, p0, Lcom/tencent/liteav/f;->D:I

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/f;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/f;->D:I

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTcpConnectTS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/f;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginBeginPlayTS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/f;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 428
    iget v0, p0, Lcom/tencent/liteav/f;->E:I

    if-nez v0, :cond_0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/f;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/f;->E:I

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 434
    iget v0, p0, Lcom/tencent/liteav/f;->F:I

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/f;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/f;->F:I

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 440
    iget-boolean v0, p0, Lcom/tencent/liteav/f;->u:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/f;->p:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/f;->k:Z

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/f;->g:J

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->v:Z

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoadBegin mBeginLoadTS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/f;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lcom/tencent/liteav/f;->u:Z

    .line 449
    iget v1, p0, Lcom/tencent/liteav/f;->w:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/f;->w:I

    .line 450
    iget-object v0, p0, Lcom/tencent/liteav/f;->c:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->bA:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSeekCnt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/f;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
