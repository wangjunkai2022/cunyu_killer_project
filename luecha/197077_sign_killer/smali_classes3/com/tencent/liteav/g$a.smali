.class Lcom/tencent/liteav/g$a;
.super Lcom/tencent/liteav/g$b;
.source "TXCVodPlayReportControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private c:I

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(IZJLjava/lang/String;)V
    .locals 2

    const-string v0, "40305"

    .line 400
    invoke-direct {p0, p5, v0}, Lcom/tencent/liteav/g$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p5, 0x3c

    .line 394
    iput p5, p0, Lcom/tencent/liteav/g$a;->c:I

    const/4 p5, 0x0

    .line 395
    iput-boolean p5, p0, Lcom/tencent/liteav/g$a;->d:Z

    const-wide/16 v0, 0x0

    .line 396
    iput-wide v0, p0, Lcom/tencent/liteav/g$a;->e:J

    .line 401
    iput p1, p0, Lcom/tencent/liteav/g$a;->c:I

    .line 402
    iput-boolean p2, p0, Lcom/tencent/liteav/g$a;->d:Z

    .line 403
    iput-wide p3, p0, Lcom/tencent/liteav/g$a;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 406
    invoke-direct {p0}, Lcom/tencent/liteav/g$b;-><init>()V

    const/16 v0, 0x3c

    .line 394
    iput v0, p0, Lcom/tencent/liteav/g$a;->c:I

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/tencent/liteav/g$a;->d:Z

    const-wide/16 v0, 0x0

    .line 396
    iput-wide v0, p0, Lcom/tencent/liteav/g$a;->e:J

    .line 407
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/g$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/g$a;)J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/tencent/liteav/g$a;->e:J

    return-wide v0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "SengmentDuration"

    .line 418
    iget v2, p0, Lcom/tencent/liteav/g$a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ReportSwitch"

    .line 419
    iget-boolean v2, p0, Lcom/tencent/liteav/g$a;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ExpireTime"

    .line 420
    iget-wide v2, p0, Lcom/tencent/liteav/g$a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "appid"

    .line 421
    iget-object v2, p0, Lcom/tencent/liteav/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventid"

    .line 422
    iget-object v2, p0, Lcom/tencent/liteav/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJsonObject jsonexception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVodPlayReportControl"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/tencent/liteav/g$a;)I
    .locals 0

    .line 393
    iget p0, p0, Lcom/tencent/liteav/g$a;->c:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/g$a;)Z
    .locals 0

    .line 393
    iget-boolean p0, p0, Lcom/tencent/liteav/g$a;->d:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x3c

    .line 432
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SengmentDuration"

    .line 433
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/g$a;->c:I

    const-string p1, "ReportSwitch"

    .line 434
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/g$a;->d:Z

    const-string p1, "ExpireTime"

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0xe10

    add-long/2addr v4, v6

    invoke-virtual {v3, p1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/liteav/g$a;->e:J

    const-string p1, "appid"

    .line 436
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/g$a;->a:Ljava/lang/String;

    const-string p1, "eventid"

    .line 437
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/g$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFromString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TXCVodPlayReportControl"

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iput v2, p0, Lcom/tencent/liteav/g$a;->c:I

    .line 441
    iput-boolean v1, p0, Lcom/tencent/liteav/g$a;->d:Z

    const-wide/16 v1, 0x0

    .line 442
    iput-wide v1, p0, Lcom/tencent/liteav/g$a;->e:J

    .line 443
    iput-object v0, p0, Lcom/tencent/liteav/g$a;->a:Ljava/lang/String;

    const-string p1, "40305"

    .line 444
    iput-object p1, p0, Lcom/tencent/liteav/g$a;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/tencent/liteav/g$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
