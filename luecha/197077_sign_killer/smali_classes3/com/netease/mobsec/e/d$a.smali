.class Lcom/netease/mobsec/e/d$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/e/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/e/d;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/netease/mobsec/e/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    invoke-static {v2}, Lcom/netease/mobsec/e/d;->a(Lcom/netease/mobsec/e/d;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/d;->e()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v0, v0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/h;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v1, v1, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v1}, Lcom/netease/mobsec/e/h;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v2, v2, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v2}, Lcom/netease/mobsec/e/h;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v3, v3, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v3}, Lcom/netease/mobsec/e/h;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "ac"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gr"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "or"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "li"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "st"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v0, v0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    invoke-static {v1}, Lcom/netease/mobsec/e/d;->b(Lcom/netease/mobsec/e/d;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v0, v0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v0, v0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    invoke-static {v1}, Lcom/netease/mobsec/e/d;->b(Lcom/netease/mobsec/e/d;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v1, v0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/netease/mobsec/e/d;->b(Lcom/netease/mobsec/e/d;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object v0, p0, Lcom/netease/mobsec/e/d$a;->a:Lcom/netease/mobsec/e/d;

    iget-object v1, v0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "data"

    :try_start_2
    iget-object v0, v0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
