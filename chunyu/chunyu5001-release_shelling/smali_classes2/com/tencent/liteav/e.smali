.class public Lcom/tencent/liteav/e;
.super Ljava/lang/Object;
.source "TXCTimeShiftUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/tencent/liteav/e;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/tencent/liteav/e;->c:I

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/e;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/tencent/liteav/e;->f:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/e;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/liteav/e;->c:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/e;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/tencent/liteav/e;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/e;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/liteav/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/liteav/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "#EXT-TX-TS-START-TIME"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#EXT-TX-TS-START-TIME:"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    if-lez v0, :cond_0

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/liteav/e;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/tencent/liteav/e;->c:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/liteav/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/liteav/e;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/liteav/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/liteav/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/tencent/liteav/e;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/liteav/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/liteav/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/e;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/e;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/tencent/liteav/e;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/e$a;)I
    .locals 7

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x2

    return p1

    .line 63
    :cond_1
    new-instance v6, Lcom/tencent/liteav/e$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/e$1;-><init>(Lcom/tencent/liteav/e;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/e$a;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public a()J
    .locals 4

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/e;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 11

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/tencent/liteav/e;->f:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr p1, v4

    add-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/tencent/liteav/e;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v1, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v9, p0, Lcom/tencent/liteav/e;->f:J

    sub-long/2addr v0, v9

    sub-long/2addr v0, p1

    div-long/2addr v0, v4

    new-array p1, v2, [Ljava/lang/Object;

    .line 47
    iget-object p2, p0, Lcom/tencent/liteav/e;->a:Ljava/lang/String;

    aput-object p2, p1, v8

    iget-object p2, p0, Lcom/tencent/liteav/e;->e:Ljava/lang/String;

    aput-object p2, p1, v7

    iget-object p2, p0, Lcom/tencent/liteav/e;->b:Ljava/lang/String;

    aput-object p2, p1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "http://%s/timeshift/%s/%s/timeshift.m3u8?delay=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    .line 49
    iget-object p2, p0, Lcom/tencent/liteav/e;->a:Ljava/lang/String;

    aput-object p2, p1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v7

    iget-object p2, p0, Lcom/tencent/liteav/e;->b:Ljava/lang/String;

    aput-object p2, p1, v6

    aput-object v0, p1, v3

    iget-object p2, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "http://%s/%s/%s/timeshift.m3u8?starttime=%s&appid=%s&txKbps=0"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
