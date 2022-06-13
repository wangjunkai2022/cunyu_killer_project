.class public Lcom/tencent/liteav/g;
.super Ljava/lang/Object;
.source "TXCVodPlayReportControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/g$a;,
        Lcom/tencent/liteav/g$b;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/tencent/liteav/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/g$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/g;->c:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/g;->a:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/tencent/liteav/g;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/g;
    .locals 2

    .line 58
    sget-object v0, Lcom/tencent/liteav/g;->d:Lcom/tencent/liteav/g;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/tencent/liteav/g;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/g;->d:Lcom/tencent/liteav/g;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/tencent/liteav/g;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/g;->d:Lcom/tencent/liteav/g;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/g;->d:Lcom/tencent/liteav/g;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/g$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 320
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/g$b;

    .line 323
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 324
    iget-object v4, v2, Lcom/tencent/liteav/g$b;->b:Ljava/lang/String;

    const-string v5, "40305"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "TXCVodPlayReportControl"

    if-eqz v4, :cond_1

    .line 325
    check-cast v2, Lcom/tencent/liteav/g$a;

    :try_start_0
    const-string v4, "appid"

    .line 327
    iget-object v7, v2, Lcom/tencent/liteav/g$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "eventid"

    .line 328
    iget-object v7, v2, Lcom/tencent/liteav/g$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {v2}, Lcom/tencent/liteav/g$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlDataListToString jsonObject.put\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 336
    :try_start_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArray.put\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "vod_report_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    const-string v3, "value"

    .line 157
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 162
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 163
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 164
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-direct {p0, v4}, Lcom/tencent/liteav/g;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 166
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 167
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/liteav/g$b;

    iget-object v5, v5, Lcom/tencent/liteav/g$b;->a:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayReportControl"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/g;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/g;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/liteav/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/tencent/liteav/g;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetReportExpireTime in mem appid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCVodPlayReportControl"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "controlInfos"

    .line 271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "appId"

    .line 272
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TXCVodPlayReportControl"

    const-string v0, "response appid is zero!"

    .line 274
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_6

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 279
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 280
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "eventId"

    .line 284
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "40305"

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    const-string v6, "expireTime"

    .line 286
    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v4, v10, v4

    if-lez v4, :cond_3

    const-string v4, "switch"

    .line 288
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3c

    const-string v6, "frequency"

    .line 289
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v5, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v3

    .line 293
    :goto_1
    new-instance v3, Lcom/tencent/liteav/g$a;

    const-string v5, "on"

    .line 294
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/tencent/liteav/g$a;-><init>(IZJLjava/lang/String;)V

    .line 296
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_4
    monitor-enter p0

    .line 301
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/tencent/liteav/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_5
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method private b()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/tencent/liteav/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "vod_report_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 182
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 184
    iget-object v3, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v5, v1, 0x1

    .line 186
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/tencent/liteav/g;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TXCVodPlayReportControl"

    invoke-static {v4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v5

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)J
    .locals 4

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/tencent/liteav/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/g$b;

    .line 118
    iget-object v2, v1, Lcom/tencent/liteav/g$b;->b:Ljava/lang/String;

    const-string v3, "40305"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/liteav/g$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    check-cast v1, Lcom/tencent/liteav/g$a;

    .line 120
    invoke-static {v1}, Lcom/tencent/liteav/g$a;->a(Lcom/tencent/liteav/g$a;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0

    .line 110
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    const-string v0, "bufferedReader.close :"

    const-string v1, "TXCVodPlayReportControl"

    const/4 v2, 0x0

    .line 200
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_0

    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openConnection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    const/16 v3, 0x1f40

    .line 216
    :try_start_2
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 217
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    .line 218
    invoke-virtual {p1, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 219
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 220
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 221
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request report control response code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v4, v3, :cond_2

    .line 224
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 225
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/liteav/g;->f(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_4

    .line 236
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    if-eqz v2, :cond_4

    .line 239
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_6

    :catch_4
    move-exception v3

    .line 234
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect or read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 236
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    if-eqz v2, :cond_4

    .line 239
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 236
    :goto_6
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    if-eqz v2, :cond_3

    .line 239
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3
    :goto_7
    throw v3

    :cond_4
    :goto_8
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    const-string v0, "TXCVodPlayReportControl"

    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 255
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "message"

    .line 256
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestId"

    .line 257
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , requestID= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "version"

    .line 260
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 262
    invoke-direct {p0, v1}, Lcom/tencent/liteav/g;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseJson err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "response msg is empty"

    .line 250
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 310
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://vodreport.qcloud.com/describeControlInfos/v1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?sdkVersion="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayReportControl"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private h(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/g$b;",
            ">;"
        }
    .end annotation

    const-string v0, "40305"

    const-string v1, ""

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 348
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 349
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "appid"

    .line 351
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "eventid"

    .line 352
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 356
    new-instance v5, Lcom/tencent/liteav/g$a;

    invoke-direct {v5, v4}, Lcom/tencent/liteav/g$a;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlDataListParseFormString :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayReportControl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0x3c

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/g$b;

    if-eqz v2, :cond_1

    const-string v3, "40305"

    .line 76
    iget-object v4, v2, Lcom/tencent/liteav/g$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/tencent/liteav/g$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    check-cast v2, Lcom/tencent/liteav/g$a;

    if-eqz v2, :cond_1

    .line 78
    invoke-static {v2}, Lcom/tencent/liteav/g$a;->a(Lcom/tencent/liteav/g$a;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 79
    invoke-static {v2}, Lcom/tencent/liteav/g$a;->b(Lcom/tencent/liteav/g$a;)I

    move-result p1

    monitor-exit p0

    return p1

    .line 84
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/g$b;

    if-eqz v2, :cond_1

    const-string v3, "40305"

    .line 96
    iget-object v4, v2, Lcom/tencent/liteav/g$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/tencent/liteav/g$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    check-cast v2, Lcom/tencent/liteav/g$a;

    if-eqz v2, :cond_1

    .line 98
    invoke-static {v2}, Lcom/tencent/liteav/g$a;->a(Lcom/tencent/liteav/g$a;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 99
    invoke-static {v2}, Lcom/tencent/liteav/g$a;->c(Lcom/tencent/liteav/g$a;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 104
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/g;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "TXCVodPlayReportControl"

    const-string v1, "RequestReportControl"

    .line 140
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/liteav/g;->a(Ljava/lang/String;J)V

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/liteav/g$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/g$1;-><init>(Lcom/tencent/liteav/g;Ljava/lang/String;)V

    const-string p1, "report_control"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
