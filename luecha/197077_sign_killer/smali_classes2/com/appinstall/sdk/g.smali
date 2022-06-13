.class public Lcom/appinstall/sdk/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/g;->g:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/appinstall/sdk/g;
    .locals 4

    new-instance v0, Lcom/appinstall/sdk/g;

    invoke-direct {v0}, Lcom/appinstall/sdk/g;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p0, "wakeupStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->a(Ljava/lang/Boolean;)V

    :cond_1
    const-string p0, "aliveStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->c(Ljava/lang/Boolean;)V

    :cond_2
    const-string p0, "registerStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->b(Ljava/lang/Boolean;)V

    :cond_3
    const-string p0, "eventStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->c(Ljava/lang/Boolean;)V

    :cond_4
    const-string p0, "reportPeriod"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->a(Ljava/lang/Long;)V

    :cond_5
    const-string p0, "installId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/g;->a(Ljava/lang/String;)V

    :catch_0
    :cond_6
    return-object v0
.end method

.method private d(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lcom/appinstall/sdk/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->d()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/g;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->d()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->g()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/appinstall/sdk/g;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/appinstall/sdk/g;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/appinstall/sdk/g;

    iget-object v2, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/appinstall/sdk/g;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/appinstall/sdk/g;->b:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/appinstall/sdk/g;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    :cond_9
    iget-object v2, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    :cond_b
    iget-object v2, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_c
    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    :goto_5
    return v0

    :cond_e
    :goto_6
    return v1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/appinstall/sdk/g;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appinstall/sdk/g;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/appinstall/sdk/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appinstall/sdk/c;

    invoke-interface {v1, p0}, Lcom/appinstall/sdk/c;->a(Lcom/appinstall/sdk/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "wakeupStatsEnabled"

    iget-object v2, p0, Lcom/appinstall/sdk/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "registerStatsEnabled"

    iget-object v2, p0, Lcom/appinstall/sdk/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventStatsEnabled"

    iget-object v2, p0, Lcom/appinstall/sdk/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reportPeriod"

    iget-object v2, p0, Lcom/appinstall/sdk/g;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installId"

    iget-object v2, p0, Lcom/appinstall/sdk/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
