.class public Lcom/tencent/liteav/network/f;
.super Ljava/lang/Object;
.source "TXCPlayInfoParserV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/f$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/liteav/network/f;->a:Lorg/json/JSONObject;

    .line 38
    invoke-direct {p0}, Lcom/tencent/liteav/network/f;->j()V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/f;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/tencent/liteav/network/g$b;

    invoke-direct {v2}, Lcom/tencent/liteav/network/g$b;-><init>()V

    const-string v3, "width"

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    .line 48
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 49
    iput v3, v2, Lcom/tencent/liteav/network/g$b;->b:I

    .line 50
    iput v4, v2, Lcom/tencent/liteav/network/g$b;->c:I

    const-string v3, "resolutionName"

    .line 51
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/liteav/network/g$b;->a:Ljava/lang/String;

    const-string v3, "type"

    .line 52
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/liteav/network/g$b;->d:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/tencent/liteav/network/f;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()V
    .locals 9

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->a:Lorg/json/JSONObject;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "basicInfo"

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "name"

    .line 68
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/network/f;->b:Ljava/lang/String;

    const-string v2, "description"

    .line 69
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/network/f;->d:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/tencent/liteav/network/f;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/tencent/liteav/network/f;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/liteav/network/f;->d:Ljava/lang/String;

    :cond_0
    const-string v2, "coverUrl"

    .line 73
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/network/f;->e:Ljava/lang/String;

    const-string v2, "duration"

    .line 74
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/liteav/network/f;->f:I

    const-string v2, "size"

    .line 75
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/network/f;->g:I

    :cond_1
    const-string v1, "streamingInfo"

    .line 79
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "plainOutput"

    .line 81
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "subStreams"

    const-string v3, "url"

    if-eqz v1, :cond_2

    .line 83
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/liteav/network/f;->c:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/liteav/network/f;->a(Lorg/json/JSONArray;)V

    :cond_2
    const-string v1, "drmOutput"

    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/network/f;->h:Ljava/util/List;

    const/4 v4, 0x0

    .line 89
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 90
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    .line 91
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    new-instance v8, Lcom/tencent/liteav/network/f$a;

    invoke-direct {v8}, Lcom/tencent/liteav/network/f$a;-><init>()V

    .line 94
    iput-object v6, v8, Lcom/tencent/liteav/network/f$a;->a:Ljava/lang/String;

    .line 95
    iput-object v7, v8, Lcom/tencent/liteav/network/f$a;->b:Ljava/lang/String;

    .line 96
    iput-object v6, p0, Lcom/tencent/liteav/network/f;->k:Ljava/lang/String;

    .line 97
    iget-object v6, p0, Lcom/tencent/liteav/network/f;->h:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tencent/liteav/network/f;->a(Lorg/json/JSONArray;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "drmToken"

    .line 101
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/f;->j:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCPlayInfoParserV4"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->c:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/tencent/liteav/network/f;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "SimpleAES"

    .line 117
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/network/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/network/f$a;

    .line 125
    iget-object v2, v1, Lcom/tencent/liteav/network/f$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/liteav/network/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object p1, v1, Lcom/tencent/liteav/network/f$a;->b:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->j:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/tencent/liteav/network/f;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/tencent/liteav/network/f;->g:I

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/g$b;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->i:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/network/f;->k:Ljava/lang/String;

    return-object v0
.end method
