.class public Lcom/tencent/liteav/network/q;
.super Ljava/lang/Object;
.source "UploadQualityData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/q$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/tencent/liteav/network/q;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/tencent/liteav/network/q;

    invoke-direct {v0}, Lcom/tencent/liteav/network/q;-><init>()V

    sput-object v0, Lcom/tencent/liteav/network/q;->a:Lcom/tencent/liteav/network/q;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    const-wide/16 v0, 0x3

    .line 36
    iput-wide v0, p0, Lcom/tencent/liteav/network/q;->c:J

    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/tencent/liteav/network/q$a;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "avgAudioQue"

    const-string v2, "avgVideoQue"

    const-string v3, "avgBlockCnt"

    const-string v4, "networkRTT"

    const-string v5, ""

    .line 194
    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/network/q;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    .line 199
    :cond_0
    :try_start_0
    iget-object v6, v1, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    const-string v8, "com.tencent.liteav.network"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "34238512-C08C-4931-A000-40E1D8B5BA5B"

    .line 200
    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-direct {v1, v6}, Lcom/tencent/liteav/network/q;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v7

    .line 205
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p1

    .line 210
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v7

    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "DomainArrayData"

    goto :goto_0

    :cond_3
    const-string v8, "OriginArrayData"

    .line 215
    :goto_0
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_4

    return-object v7

    .line 220
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    int-to-long v10, v8

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    return-object v7

    :cond_5
    const/4 v8, 0x0

    move-object v15, v5

    move/from16 p1, v8

    move/from16 v12, p1

    move v13, v12

    move v14, v13

    move v5, v9

    :goto_1
    int-to-long v7, v5

    cmp-long v7, v7, v10

    if-gez v7, :cond_6

    .line 232
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    move-wide/from16 v16, v10

    .line 234
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float v9, v9

    add-float v9, p1, v9

    float-to-double v10, v12

    .line 235
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v10, v10, v18

    double-to-float v12, v10

    float-to-double v10, v13

    .line 236
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v10, v10, v18

    double-to-float v13, v10

    float-to-double v10, v14

    .line 237
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v10, v10, v18

    double-to-float v14, v10

    const-string v10, "%s \n isDomainAddressBetter\uff1aitemData domain = %b NetworkRTT = %d avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v11, v8

    .line 240
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v18, 0x1

    aput-object v15, v11, v18

    const/4 v15, 0x2

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v11, v15

    const/4 v15, 0x3

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v11, v15

    const/4 v15, 0x4

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v11, v15

    const/4 v15, 0x5

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v11, v15

    .line 239
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    move/from16 p1, v9

    move-wide/from16 v10, v16

    move v9, v8

    goto :goto_1

    :cond_6
    move-wide v2, v10

    long-to-float v0, v2

    div-float v4, p1, v0

    div-float/2addr v12, v0

    div-float/2addr v13, v0

    div-float/2addr v14, v0

    .line 249
    new-instance v0, Lcom/tencent/liteav/network/q$a;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/network/q$a;-><init>(Lcom/tencent/liteav/network/q;)V

    .line 250
    iput v4, v0, Lcom/tencent/liteav/network/q$a;->a:F

    .line 251
    iput v12, v0, Lcom/tencent/liteav/network/q$a;->b:F

    .line 252
    iput v13, v0, Lcom/tencent/liteav/network/q$a;->c:F

    .line 253
    iput v14, v0, Lcom/tencent/liteav/network/q$a;->d:F

    .line 254
    iput-wide v2, v0, Lcom/tencent/liteav/network/q$a;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UploadQualityData"

    const-string v3, "get quality data failed."

    .line 259
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static a()Lcom/tencent/liteav/network/q;
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/liteav/network/q;->a:Lcom/tencent/liteav/network/q;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 268
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

.method private c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 277
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "UploadQualityData"

    const-string v1, "failed to parse json string"

    .line 282
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private d()V
    .locals 5

    .line 290
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    const-string v1, "Network"

    const-string v2, "QualityDataCacheCount"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/q;->c:J

    .line 291
    iget-wide v0, p0, Lcom/tencent/liteav/network/q;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3

    if-eqz v2, :cond_0

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 292
    :cond_0
    iput-wide v3, p0, Lcom/tencent/liteav/network/q;->c:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const-string v4, "com.tencent.liteav.network"

    .line 298
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.tencent.liteav.network"

    .line 305
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJJFFF)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    const-string v2, "34238512-C08C-4931-A000-40E1D8B5BA5B"

    .line 92
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v3

    const-string v4, "Network"

    const-string v5, "QualityDataCacheCount"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 98
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "updateQualityData: accessID = %s serverType = %d totalTime = %d networkRTT = %d avgBlockCnt = %f avgVideoQue = %f avgAudioQue = %f"

    .line 97
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UploadQualityData"

    invoke-static {v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/network/q;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 105
    :cond_2
    :try_start_0
    iget-object v3, v1, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    const-string v6, "com.tencent.liteav.network"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, ""

    .line 106
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-direct {p0, v5}, Lcom/tencent/liteav/network/q;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    .line 111
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    const-wide/16 v7, 0x3

    cmp-long v7, p2, v7

    if-nez v7, :cond_4

    const-string v7, "DomainArrayData"

    goto :goto_1

    :cond_4
    const-string v7, "OriginArrayData"

    .line 115
    :goto_1
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_5

    .line 117
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 120
    :cond_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "totalTime"

    move-wide/from16 v11, p4

    .line 121
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "networkRTT"

    move-wide/from16 v11, p6

    .line 122
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "avgBlockCnt"

    move/from16 v11, p8

    float-to-double v11, v11

    .line 123
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "avgVideoQue"

    move/from16 v11, p9

    float-to-double v11, v11

    .line 124
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "avgAudioQue"

    move/from16 v11, p10

    float-to-double v11, v11

    .line 125
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    int-to-long v10, v9

    .line 129
    iget-wide v12, v1, Lcom/tencent/liteav/network/q;->c:J

    cmp-long v12, v10, v12

    if-lez v12, :cond_7

    .line 130
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 131
    iget-wide v13, v1, Lcom/tencent/liteav/network/q;->c:J

    sub-long/2addr v10, v13

    long-to-int v10, v10

    :goto_2
    if-ge v10, v9, :cond_6

    .line 132
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object v8, v12

    .line 137
    :cond_7
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "build json object failed."

    .line 145
    invoke-static {v4, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 55
    iget-object v1, p0, Lcom/tencent/liteav/network/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "wifi:"

    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v0, "4g:"

    return-object v0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v0, "3g:"

    return-object v0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string v0, "2g:"

    return-object v0

    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    const-string v0, "ethernet:"

    return-object v0

    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    const-string v0, "5g:"

    return-object v0

    :cond_6
    const-string v0, "xg:"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get network type failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadQualityData"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public c()Z
    .locals 13

    .line 150
    invoke-direct {p0}, Lcom/tencent/liteav/network/q;->d()V

    .line 152
    invoke-virtual {p0}, Lcom/tencent/liteav/network/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDomainAddressBetter: accessID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " minQualityDataCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/network/q;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 156
    invoke-direct {p0, v0, v2}, Lcom/tencent/liteav/network/q;->a(Ljava/lang/String;Z)Lcom/tencent/liteav/network/q$a;

    move-result-object v3

    const/4 v4, 0x0

    .line 157
    invoke-direct {p0, v0, v4}, Lcom/tencent/liteav/network/q;->a(Ljava/lang/String;Z)Lcom/tencent/liteav/network/q$a;

    move-result-object v0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-eqz v3, :cond_0

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v4

    .line 159
    iget-wide v11, v3, Lcom/tencent/liteav/network/q$a;->e:J

    .line 160
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v2

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v8

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v7

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v6

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v5

    const-string v1, "%s \n isDomainAddressBetter\uff1adomainQualityData count = %d avgNetworkRTT = %f avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f"

    .line 159
    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v4

    .line 163
    iget-wide v10, v0, Lcom/tencent/liteav/network/q$a;->e:J

    .line 164
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v2

    iget v1, v0, Lcom/tencent/liteav/network/q$a;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v8

    iget v1, v0, Lcom/tencent/liteav/network/q$a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v7

    iget v1, v0, Lcom/tencent/liteav/network/q$a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v6

    iget v1, v0, Lcom/tencent/liteav/network/q$a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v5

    const-string v1, "%s \n isDomainAddressBetter\uff1aoriginQualityData count = %d avgNetworkRTT = %f avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f"

    .line 163
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v5, "UploadQualityData"

    .line 167
    invoke-static {v5, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 169
    iget-wide v5, v3, Lcom/tencent/liteav/network/q$a;->e:J

    iget-wide v7, p0, Lcom/tencent/liteav/network/q;->c:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    if-eqz v0, :cond_3

    iget-wide v5, v0, Lcom/tencent/liteav/network/q$a;->e:J

    iget-wide v7, p0, Lcom/tencent/liteav/network/q;->c:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget v1, v3, Lcom/tencent/liteav/network/q$a;->b:F

    iget v5, v0, Lcom/tencent/liteav/network/q$a;->b:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->c:F

    iget v5, v0, Lcom/tencent/liteav/network/q$a;->c:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget v1, v3, Lcom/tencent/liteav/network/q$a;->d:F

    iget v0, v0, Lcom/tencent/liteav/network/q$a;->d:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v4
.end method
