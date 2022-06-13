.class public Lcom/tencent/liteav/network/o;
.super Ljava/lang/Object;
.source "TXRTMPAccUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/o$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lcom/tencent/liteav/network/o;->a:I

    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/tencent/liteav/network/o;->b:I

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->c:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/tencent/liteav/network/o;->e:I

    .line 47
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/o;->g:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/network/o;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/tencent/liteav/network/o;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/network/o;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/tencent/liteav/network/o;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/liteav/network/o;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[?&]"

    .line 335
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 336
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    const-string v4, "="

    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const-string v4, "[=]"

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 339
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 340
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 341
    aget-object v3, v3, v5

    if-eqz v4, :cond_1

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)V
    .locals 10

    .line 152
    new-instance v9, Lcom/tencent/liteav/network/o$2;

    const-string v2, "getRTMPAccUrl"

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tencent/liteav/network/o$2;-><init>(Lcom/tencent/liteav/network/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)V

    .line 327
    invoke-virtual {v9}, Lcom/tencent/liteav/network/o$2;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/liteav/network/o;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/liteav/network/o;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)I
    .locals 12

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->c:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/tencent/liteav/network/o;->e:I

    .line 83
    iput-object v0, p0, Lcom/tencent/liteav/network/o;->f:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v2, "TXRTMPAccUrlFetcher"

    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getStreamIDByStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "bizid"

    .line 96
    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "txSecret"

    .line 97
    invoke-direct {p0, v4, p1}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "txTime"

    .line 98
    invoke-direct {p0, v4, p1}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {p0, v2, p1, v11}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    iput v0, p0, Lcom/tencent/liteav/network/o;->e:I

    const-string p1, "invalid signature"

    .line 101
    iput-object p1, p0, Lcom/tencent/liteav/network/o;->f:Ljava/lang/String;

    const/4 p1, -0x3

    return p1

    .line 105
    :cond_2
    new-instance v0, Lcom/tencent/liteav/network/o$1;

    move-object v4, v0

    move-object v5, p0

    move-object v6, v3

    move-object v7, v2

    move-object v8, v11

    move-object v9, p1

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/tencent/liteav/network/o$1;-><init>(Lcom/tencent/liteav/network/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/network/o$a;)V

    move-object v4, p0

    move-object v5, v3

    move-object v6, v2

    move-object v7, v11

    move-object v8, p1

    move v9, p2

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)V

    return v1

    :cond_3
    :goto_0
    const-string p1, "getAccerateStreamPlayUrl streamID is empty"

    .line 92
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_4
    :goto_1
    const-string p1, "getAccerateStreamPlayUrl input playUrl is empty"

    .line 86
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/network/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/network/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/tencent/liteav/network/o;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tencent/liteav/network/o;->f:Ljava/lang/String;

    return-object v0
.end method
