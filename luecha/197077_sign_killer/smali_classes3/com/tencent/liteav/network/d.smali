.class Lcom/tencent/liteav/network/d;
.super Ljava/lang/Object;
.source "TXCIntelligentRoute.java"


# instance fields
.field public a:Lcom/tencent/liteav/network/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private m:Ljava/lang/Thread;

.field private n:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://tcdns.myqcloud.com/queryip"

    .line 54
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->b:Ljava/lang/String;

    const-string v0, "https://tcdnsipv6.myqcloud.com/queryip"

    .line 55
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->c:Ljava/lang/String;

    const-string v0, "forward_stream"

    .line 57
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->d:Ljava/lang/String;

    const-string v0, "forward_num"

    .line 58
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->e:Ljava/lang/String;

    const-string v0, "request_type"

    .line 59
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->f:Ljava/lang/String;

    const-string v0, "sdk_version"

    .line 60
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->g:Ljava/lang/String;

    const-string v0, "sdk_type"

    .line 61
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->h:Ljava/lang/String;

    const-string v0, "use"

    .line 62
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->i:Ljava/lang/String;

    const-string v0, "51451748-d8f2-4629-9071-db2983aa7251"

    .line 64
    iput-object v0, p0, Lcom/tencent/liteav/network/d;->j:Ljava/lang/String;

    const/4 v0, 0x5

    .line 66
    iput v0, p0, Lcom/tencent/liteav/network/d;->k:I

    const/4 v1, 0x2

    .line 67
    iput v1, p0, Lcom/tencent/liteav/network/d;->l:I

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    .line 70
    iput-object v1, p0, Lcom/tencent/liteav/network/d;->m:Ljava/lang/Thread;

    .line 71
    iput v0, p0, Lcom/tencent/liteav/network/d;->n:I

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/tencent/liteav/network/a;
    .locals 3

    const-string v0, "type"

    .line 284
    new-instance v1, Lcom/tencent/liteav/network/a;

    invoke-direct {v1}, Lcom/tencent/liteav/network/a;-><init>()V

    :try_start_0
    const-string v2, "ip"

    .line 286
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    const-string v2, "port"

    .line 287
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 288
    iput v2, v1, Lcom/tencent/liteav/network/a;->e:I

    .line 289
    iput-boolean v2, v1, Lcom/tencent/liteav/network/a;->c:Z

    .line 290
    iget-object v2, v1, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/liteav/network/d;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/network/a;->d:Z

    .line 291
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, v1, Lcom/tencent/liteav/network/a;->c:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "TXCIntelligentRoute"

    const-string v1, "get ip record from json object failed."

    .line 295
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;"
        }
    .end annotation

    const-string v0, "51451748-d8f2-4629-9071-db2983aa7251"

    const-string v1, "Network"

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 227
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    return-object v4

    :cond_0
    const-string p1, "content"

    .line 232
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "list"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v4

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    .line 238
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 239
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 240
    invoke-direct {p0, v5}, Lcom/tencent/liteav/network/d;->a(Lorg/json/JSONObject;)Lcom/tencent/liteav/network/a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 241
    iget-boolean v6, v5, Lcom/tencent/liteav/network/a;->c:Z

    if-eqz v6, :cond_2

    .line 242
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v3

    .line 246
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 247
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 248
    invoke-direct {p0, v5}, Lcom/tencent/liteav/network/d;->a(Lorg/json/JSONObject;)Lcom/tencent/liteav/network/a;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 249
    iget-boolean v6, v5, Lcom/tencent/liteav/network/a;->c:Z

    if-nez v6, :cond_4

    .line 250
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p1

    const-string v4, "EnableRouteOptimize"

    invoke-virtual {p1, v1, v4}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 255
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/network/q;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/network/d;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 258
    invoke-direct {p0, v2}, Lcom/tencent/liteav/network/d;->a(Ljava/util/ArrayList;)V

    return-object v2

    .line 263
    :cond_6
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p1

    const-string v4, "RouteSamplingMaxCount"

    invoke-virtual {p1, v1, v4}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v4, v6

    if-ltz p1, :cond_7

    .line 265
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/q;->a(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-gtz p1, :cond_7

    .line 268
    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/network/d;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 270
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object p1

    add-long/2addr v8, v6

    invoke-virtual {p1, v0, v8, v9}, Lcom/tencent/liteav/network/q;->a(Ljava/lang/String;J)V

    .line 274
    :cond_7
    invoke-direct {p0, v2}, Lcom/tencent/liteav/network/d;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "TXCIntelligentRoute"

    const-string v1, "get records from json string failed."

    .line 278
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 337
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/a;

    .line 340
    iget-boolean v4, v0, Lcom/tencent/liteav/network/a;->c:Z

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_1
    iget-boolean v4, v0, Lcom/tencent/liteav/network/a;->d:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_3

    .line 376
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 378
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/liteav/network/a;

    if-eqz p2, :cond_6

    .line 379
    iget-object p2, p2, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/liteav/network/d;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    if-eqz v3, :cond_6

    .line 381
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-eqz v3, :cond_8

    .line 355
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 362
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 363
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    if-eqz v3, :cond_b

    .line 367
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_b
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 371
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    :goto_5
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/network/a;

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n Nearest IP: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Port: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Q Channel: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/tencent/liteav/network/a;->c:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p1, "TXCIntelligentRoute"

    .line 395
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/network/d;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/d;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    const-string v0, "use"

    const-string v1, "TXCIntelligentRoute"

    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    const/4 v3, 0x1

    xor-int/2addr p3, v3

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    if-eqz p1, :cond_1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown value for key:\'use\', push directly to domain name. use = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object p1, v4

    goto :goto_1

    :cond_2
    const-string p1, "server error, use = -1, but current SDK isn\'t international, push directly to domain name"

    .line 138
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 158
    iget-object p2, p0, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    invoke-interface {p2, v2, p1}, Lcom/tencent/liteav/network/b;->onFetchDone(ILjava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    return v2

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    invoke-interface {p1, v2, v4}, Lcom/tencent/liteav/network/b;->onFetchDone(ILjava/util/ArrayList;)V

    :goto_2
    return v3

    :catch_0
    move-exception p1

    const-string p2, "get value from json failed."

    .line 152
    invoke-static {v1, p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/d;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 175
    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 177
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TXCIntelligentRoute"

    const-string p3, "get json string from url failed."

    .line 181
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 304
    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "2"

    .line 188
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    const/4 v1, 0x0

    .line 192
    :try_start_0
    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "GET"

    .line 193
    invoke-virtual {p3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "forward_stream"

    .line 194
    invoke-virtual {p3, v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "forward_num"

    .line 195
    invoke-virtual {p3, p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdk_version"

    .line 196
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    const-string v2, "request_type"

    if-ne p2, p1, :cond_0

    :try_start_1
    const-string p1, "1"

    .line 201
    invoke-virtual {p3, v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 203
    invoke-virtual {p3, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "3"

    .line 205
    invoke-virtual {p3, v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/network/d;->n:I

    if-lez p1, :cond_2

    .line 208
    iget p1, p0, Lcom/tencent/liteav/network/d;->n:I

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 209
    iget p1, p0, Lcom/tencent/liteav/network/d;->n:I

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 211
    :cond_2
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 213
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    .line 214
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TXCIntelligentRoute"

    const-string p3, "https failed."

    .line 217
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .line 311
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/d;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "[.]"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 316
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 317
    invoke-direct {p0, v3}, Lcom/tencent/liteav/network/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 327
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 79
    new-instance v0, Lcom/tencent/liteav/network/d$1;

    const-string v1, "TXCPushRoute"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/liteav/network/d$1;-><init>(Lcom/tencent/liteav/network/d;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/liteav/network/d;->m:Ljava/lang/Thread;

    .line 112
    iget-object p1, p0, Lcom/tencent/liteav/network/d;->m:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
