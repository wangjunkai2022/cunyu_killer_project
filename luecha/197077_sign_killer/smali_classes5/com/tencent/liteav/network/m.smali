.class public Lcom/tencent/liteav/network/m;
.super Ljava/lang/Object;
.source "TXPlayInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/m$a;
    }
.end annotation


# instance fields
.field protected a:Lorg/json/JSONObject;

.field b:Lcom/tencent/liteav/network/n;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    return-void
.end method

.method private m()Lcom/tencent/liteav/network/n;
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->g()Lcom/tencent/liteav/network/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->g()Lcom/tencent/liteav/network/n;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/n;

    .line 75
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/n;

    return-object v0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->f()Lcom/tencent/liteav/network/n;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->f()Lcom/tencent/liteav/network/n;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/liteav/network/n;
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/m$a;

    .line 257
    iget-object v3, v2, Lcom/tencent/liteav/network/m$a;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object p1, v2, Lcom/tencent/liteav/network/m$a;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 264
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/n;

    .line 265
    iget v3, v2, Lcom/tencent/liteav/network/n;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 267
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return-object v2

    :cond_4
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/tencent/liteav/network/m;->m()Lcom/tencent/liteav/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, v0, Lcom/tencent/liteav/network/n;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/tencent/liteav/network/m;->m()Lcom/tencent/liteav/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-eqz v0, :cond_1

    .line 48
    iget v0, v0, Lcom/tencent/liteav/network/n;->e:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/liteav/network/n;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/n;

    .line 283
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {v2}, Lcom/tencent/liteav/network/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/tencent/liteav/network/m;->m()Lcom/tencent/liteav/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->b:Lcom/tencent/liteav/network/n;

    if-eqz v0, :cond_1

    .line 62
    iget v0, v0, Lcom/tencent/liteav/network/n;->d:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "coverInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "coverUrl"

    .line 96
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TXPlayInfoResponse"

    const-string v2, "get cover url failed."

    .line 99
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/n;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v2, "videoInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "transcodeList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 110
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    new-instance v4, Lcom/tencent/liteav/network/n;

    invoke-direct {v4}, Lcom/tencent/liteav/network/n;-><init>()V

    const-string v5, "url"

    .line 113
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/liteav/network/n;->a:Ljava/lang/String;

    const-string v5, "duration"

    .line 114
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->e:I

    const-string v5, "width"

    .line 115
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->c:I

    const-string v5, "height"

    .line 116
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->b:I

    const-string v5, "totalSize"

    .line 117
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->d:I

    const-string v5, "bitrate"

    .line 118
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->f:I

    const-string v5, "definition"

    .line 119
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/network/n;->i:I

    const-string v5, "container"

    .line 120
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/liteav/network/n;->g:Ljava/lang/String;

    const-string v5, "templateName"

    .line 121
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/liteav/network/n;->h:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public f()Lcom/tencent/liteav/network/n;
    .locals 4

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "videoInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sourceVideo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/tencent/liteav/network/n;

    invoke-direct {v1}, Lcom/tencent/liteav/network/n;-><init>()V

    const-string v2, "url"

    .line 138
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/liteav/network/n;->a:Ljava/lang/String;

    const-string v2, "duration"

    .line 139
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/network/n;->e:I

    const-string v2, "width"

    .line 140
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/network/n;->c:I

    const-string v2, "height"

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/network/n;->b:I

    const-string v2, "size"

    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "totalSize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/network/n;->d:I

    const-string v2, "bitrate"

    .line 143
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tencent/liteav/network/n;->f:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/tencent/liteav/network/n;
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "videoInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "masterPlayList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/tencent/liteav/network/n;

    invoke-direct {v1}, Lcom/tencent/liteav/network/n;-><init>()V

    const-string v2, "url"

    .line 157
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/network/n;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "videoInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "basicInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "name"

    .line 174
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "videoInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "basicInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "description"

    .line 190
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v1, "playerInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "defaultVideoClassification"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/m$a;",
            ">;"
        }
    .end annotation

    .line 216
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/tencent/liteav/network/m;->a:Lorg/json/JSONObject;

    const-string v2, "playerInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "videoClassification"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 219
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 220
    new-instance v4, Lcom/tencent/liteav/network/m$a;

    invoke-direct {v4}, Lcom/tencent/liteav/network/m$a;-><init>()V

    .line 221
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/liteav/network/m$a;->a:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/liteav/network/m$a;->b:Ljava/lang/String;

    .line 223
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/tencent/liteav/network/m$a;->c:Ljava/util/List;

    .line 224
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "definitionList"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v2

    .line 225
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 226
    iget-object v7, v4, Lcom/tencent/liteav/network/m$a;->c:Ljava/util/List;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->k()Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/tencent/liteav/network/m;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/m$a;

    .line 243
    iget-object v3, v2, Lcom/tencent/liteav/network/m$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v0, v2, Lcom/tencent/liteav/network/m$a;->c:Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
