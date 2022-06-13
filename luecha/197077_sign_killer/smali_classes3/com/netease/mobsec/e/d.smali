.class public Lcom/netease/mobsec/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lcom/netease/mobsec/e/d;

.field private static j:Landroid/content/Context;

.field private static k:Lcom/netease/mobsec/e/b;

.field private static l:Z


# instance fields
.field a:Lcom/netease/mobsec/e/h;

.field b:Lorg/json/JSONObject;

.field c:Lorg/json/JSONArray;

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/netease/mobsec/e/d;->d:J

    const/4 v3, 0x0

    iput v3, p0, Lcom/netease/mobsec/e/d;->e:I

    iput-wide v1, p0, Lcom/netease/mobsec/e/d;->f:J

    iput-wide v1, p0, Lcom/netease/mobsec/e/d;->g:J

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    sput-object p1, Lcom/netease/mobsec/e/d;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsec/e/h;

    invoke-direct {v0, p1}, Lcom/netease/mobsec/e/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    :cond_0
    new-instance v0, Lcom/netease/mobsec/e/b;

    invoke-direct {v0, p1}, Lcom/netease/mobsec/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mobsec/e/d;->k:Lcom/netease/mobsec/e/b;

    return-void
.end method

.method static synthetic a(Lcom/netease/mobsec/e/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/netease/mobsec/e/d;->d:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/e/d;
    .locals 2

    sget-object v0, Lcom/netease/mobsec/e/d;->i:Lcom/netease/mobsec/e/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobsec/e/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobsec/e/d;->i:Lcom/netease/mobsec/e/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobsec/e/d;

    invoke-direct {v1, p0}, Lcom/netease/mobsec/e/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/mobsec/e/d;->i:Lcom/netease/mobsec/e/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mobsec/e/d;->i:Lcom/netease/mobsec/e/d;

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/netease/mobsec/e/d;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/mobsec/e/d;)I
    .locals 0

    iget p0, p0, Lcom/netease/mobsec/e/d;->e:I

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 9

    sget-boolean v0, Lcom/netease/mobsec/e/d;->l:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/mobsec/e/d;->c()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mobsec/e/h;->b()Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget-object v3, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v3}, Lcom/netease/mobsec/e/h;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/h;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v5}, Lcom/netease/mobsec/e/h;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v6}, Lcom/netease/mobsec/e/h;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const-string v8, "ac"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "gr"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "or"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "li"

    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "st"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    iget v4, p0, Lcom/netease/mobsec/e/d;->e:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v3, p0, Lcom/netease/mobsec/e/d;->e:I

    if-lt v2, v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    iget-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/h;->a()V

    iget-object v0, p0, Lcom/netease/mobsec/e/d;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/mobsec/e/d;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 8

    sget-boolean v0, Lcom/netease/mobsec/e/d;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/netease/mobsec/e/d;->k:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->w()I

    move-result v0

    iput v0, p0, Lcom/netease/mobsec/e/d;->e:I

    sget-object v0, Lcom/netease/mobsec/e/d;->k:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mobsec/e/d;->f:J

    sget-object v0, Lcom/netease/mobsec/e/d;->k:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mobsec/e/d;->g:J

    iget v2, p0, Lcom/netease/mobsec/e/d;->e:I

    if-nez v2, :cond_1

    const/16 v2, 0xa

    iput v2, p0, Lcom/netease/mobsec/e/d;->e:I

    :cond_1
    iget-wide v2, p0, Lcom/netease/mobsec/e/d;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/netease/mobsec/e/d;->f:J

    :cond_2
    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/mobsec/e/d;->g:J

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/mobsec/e/d;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mobsec/e/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/mobsec/e/d;->d:J

    iget-object v0, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    :cond_4
    iget-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/netease/mobsec/e/h;

    sget-object v1, Lcom/netease/mobsec/e/d;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/mobsec/e/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    :goto_0
    invoke-virtual {v0}, Lcom/netease/mobsec/e/h;->b()Z

    invoke-direct {p0}, Lcom/netease/mobsec/e/d;->c()V

    :try_start_0
    new-instance v3, Lcom/netease/mobsec/e/d$a;

    invoke-direct {v3, p0}, Lcom/netease/mobsec/e/d$a;-><init>(Lcom/netease/mobsec/e/d;)V

    iget-object v2, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/netease/mobsec/e/d;->g:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobsec/e/d;->h:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/netease/mobsec/e/d;->a:Lcom/netease/mobsec/e/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mobsec/e/h;->a()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/mobsec/e/d;->l:Z

    return-void
.end method
