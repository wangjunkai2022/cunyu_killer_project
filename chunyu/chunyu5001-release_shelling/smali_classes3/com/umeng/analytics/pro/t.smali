.class public Lcom/umeng/analytics/pro/t;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lcom/umeng/analytics/pro/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/t$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "session_start_time"

.field public static final b:Ljava/lang/String; = "session_end_time"

.field public static final c:Ljava/lang/String; = "session_id"

.field public static final d:Ljava/lang/String; = "pre_session_id"

.field public static final e:Ljava/lang/String; = "a_start_time"

.field public static final f:Ljava/lang/String; = "a_end_time"

.field public static final g:Ljava/lang/String; = "fg_count"

.field private static h:Ljava/lang/String; = null

.field private static i:Landroid/content/Context; = null

.field private static j:Z = false

.field private static k:J = 0x0L

.field private static l:Z = true

.field private static m:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/x;->a(Lcom/umeng/analytics/pro/x$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/t$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/umeng/analytics/pro/t;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "fg_count"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-wide v0
.end method

.method public static a()Lcom/umeng/analytics/pro/t;
    .locals 1

    .line 73
    invoke-static {}, Lcom/umeng/analytics/pro/t$a;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJJ)V
    .locals 6

    .line 570
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 573
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__f"

    .line 580
    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p5, "__g"

    .line 583
    invoke-virtual {v0, p5, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 585
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 586
    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_2

    const-string p6, "__sp"

    .line 587
    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 591
    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_3

    const-string p6, "__pp"

    .line 592
    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    :cond_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p5

    sget-object p6, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p5, p6, v0, v1}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :catch_0
    :try_start_1
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string p6, "__e"

    .line 601
    invoke-virtual {p5, p6, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 602
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/h$a;->c:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p3, p2, p5, p4}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    const-string p3, "header_foreground_count"

    .line 603
    invoke-static {p3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 606
    sput-wide p7, Lcom/umeng/analytics/pro/t;->m:J

    .line 607
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->d(Landroid/content/Context;)V

    .line 608
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 609
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 608
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :catch_1
    :cond_4
    sput-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 10

    .line 619
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    .line 627
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 630
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "__ii"

    .line 631
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "__e"

    .line 632
    invoke-virtual {v4, v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "__f"

    .line 633
    invoke-virtual {v4, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 635
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 637
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "lat"

    .line 638
    aget-wide v6, p2, p3

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "lng"

    .line 639
    aget-wide v6, p2, v0

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "ts"

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "__d"

    .line 641
    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "android.net.TrafficStats"

    .line 644
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "getUidRxBytes"

    new-array v5, v0, [Ljava/lang/Class;

    .line 645
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, p3

    invoke-virtual {p2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v5, "getUidTxBytes"

    new-array v6, v0, [Ljava/lang/Class;

    .line 646
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 647
    sget-object v5, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return-void

    :cond_2
    new-array v6, v0, [Ljava/lang/Object;

    .line 651
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-array v0, v0, [Ljava/lang/Object;

    .line 652
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {p2, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long v0, v8, v2

    if-lez v0, :cond_4

    cmp-long v0, p2, v2

    if-gtz v0, :cond_3

    goto :goto_0

    .line 656
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download_traffic"

    .line 657
    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "upload_traffic"

    .line 658
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "__c"

    .line 659
    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    :cond_4
    :goto_0
    sget-object p2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/h$a;->e:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p2, p1, v4, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 663
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    .line 664
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .line 95
    sget-object p0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "fg_count"

    .line 97
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 101
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fg_count"

    const-wide/16 v1, 0x0

    .line 79
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 383
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 393
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->f(Landroid/content/Context;)V

    .line 399
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/n;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 413
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 415
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 3

    .line 317
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/x;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> onInstantSessionInternal: current session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 323
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "__e"

    .line 324
    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 326
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 327
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, "__sp"

    .line 328
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 332
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_2

    const-string p3, "__pp"

    .line 333
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_2
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/h$a;->f:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p2, v0, v1, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 340
    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1, v1, p4}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 1

    .line 109
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "session_start_time"

    .line 113
    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 12

    const-string v0, ""

    const-string v1, "versionname"

    .line 123
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 128
    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    sget-object p2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 133
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    sget-object v6, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "MobclickRT"

    const-string v9, "versioncode"

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    .line 143
    :try_start_1
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--->>> onStartSessionInternal: upgrade version: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-> "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p2, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "pre_date"

    .line 150
    invoke-interface {p2, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "pre_version"

    .line 151
    invoke-interface {p2, v11, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vers_date"

    .line 158
    invoke-interface {v4, p1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vers_pre_version"

    .line 159
    invoke-interface {v4, p1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "cur_version"

    .line 160
    invoke-interface {v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vers_code"

    .line 176
    invoke-interface {v4, p1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vers_name"

    .line 177
    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    sget-boolean p1, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p1, :cond_4

    .line 185
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    .line 188
    :cond_4
    sget-boolean p1, Lcom/umeng/analytics/pro/t;->j:Z

    if-eqz p1, :cond_5

    .line 189
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->j:Z

    .line 193
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    .line 194
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, p1, v2, v3}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V

    :cond_5
    return-void

    .line 200
    :cond_6
    :goto_0
    sget-boolean v0, Lcom/umeng/analytics/pro/t;->j:Z

    if-eqz v0, :cond_8

    .line 201
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->j:Z

    .line 202
    sget-boolean p2, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p2, :cond_7

    .line 203
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    .line 205
    :cond_7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u521b\u5efa\u65b0\u4f1a\u8bdd: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSessionChanged flag has been set, Start new session: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "session_id"

    const/4 v1, 0x0

    .line 209
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    const-string p2, "a_start_time"

    .line 210
    invoke-interface {v4, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "a_end_time"

    const-wide/16 v0, 0x0

    .line 211
    invoke-interface {v4, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5ef6\u7eed\u4e0a\u4e00\u4e2a\u4f1a\u8bdd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extend current session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-boolean p2, Lcom/umeng/analytics/pro/t;->l:Z

    if-eqz p2, :cond_9

    .line 216
    sput-boolean v10, Lcom/umeng/analytics/pro/t;->l:Z

    const-string p2, "header_foreground_count"

    .line 217
    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 219
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 220
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 226
    :cond_9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/t;->f(Landroid/content/Context;)V

    .line 228
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/umeng/analytics/pro/n;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .locals 0

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/t;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 9

    .line 548
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;Ljava/lang/String;JJJ)V

    const-string v0, "MobclickRT"

    const-string v1, "saveSessionToDB: complete"

    .line 549
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    const v1, 0x9051

    .line 554
    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 552
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 526
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;J)V
    .locals 0

    .line 511
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 520
    :cond_0
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/n;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "MobclickRT"

    .line 240
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 241
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    :cond_0
    if-nez p2, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    .line 248
    :cond_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 251
    :goto_0
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "a_end_time"

    const-wide/16 v3, 0x0

    .line 256
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/umeng/analytics/pro/t;->k:J

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------>>> lastActivityEndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/umeng/analytics/pro/t;->k:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "versionname"

    const-string v3, ""

    .line 258
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 265
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "session_start_time"

    const/4 v6, 0x1

    if-nez v4, :cond_4

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "--->>> requestNewInstantSessionIf: version upgrade"

    .line 266
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v1, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    sget-object v1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 278
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> force generate new session: session id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sput-boolean v6, Lcom/umeng/analytics/pro/t;->j:Z

    .line 281
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v6}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    return-void

    .line 286
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/x;->e(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v2, "--->>> More then 30 sec from last session."

    .line 288
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sput-boolean v6, Lcom/umeng/analytics/pro/t;->j:Z

    .line 292
    invoke-interface {v1, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string p1, "--->>> less then 30 sec from last session, do nothing."

    .line 297
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sput-boolean v3, Lcom/umeng/analytics/pro/t;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public b(Landroid/content/Context;JZ)Z
    .locals 10

    const/4 v0, 0x0

    .line 429
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 434
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const-string v3, "a_start_time"

    const-wide/16 v4, 0x0

    .line 440
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "a_end_time"

    .line 441
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v6, v4

    if-lez v1, :cond_8

    cmp-long v1, v8, v4

    if-nez v1, :cond_8

    const/4 v0, 0x1

    const-string v1, "MobclickRT"

    if-eqz p4, :cond_3

    .line 449
    :try_start_1
    sget-wide v6, Lcom/umeng/analytics/pro/t;->k:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, p2

    goto :goto_0

    .line 453
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/umeng/analytics/pro/t;->k:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_1

    .line 458
    :cond_3
    sget-object v3, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    move-wide v6, p2

    .line 463
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "__f"

    if-eqz p4, :cond_4

    .line 467
    :try_start_2
    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 470
    :cond_4
    invoke-virtual {v3, v8, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 473
    :goto_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 474
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_5

    const-string p3, "__sp"

    .line 475
    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    :cond_5
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 479
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_6

    const-string p3, "__pp"

    .line 480
    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string p2, "header_foreground_count"

    .line 483
    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p3, "__g"

    if-eqz p2, :cond_7

    .line 484
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>>*** foregroundCount = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/umeng/analytics/pro/t;->m:J

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-wide v6, Lcom/umeng/analytics/pro/t;->m:J

    invoke-virtual {v3, p3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 486
    sput-wide v4, Lcom/umeng/analytics/pro/t;->m:J

    goto :goto_3

    .line 488
    :cond_7
    invoke-virtual {v3, p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 491
    :goto_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p1, v2, v3, p2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z

    .line 494
    sget-object p1, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_8
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 542
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 532
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 533
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 537
    :catchall_0
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/t;->h:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6

    .line 348
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->i:Landroid/content/Context;

    .line 353
    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 354
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "a_start_time"

    const-wide/16 v2, 0x0

    .line 359
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-nez p2, :cond_2

    const-string p1, "onPause called before onResume"

    .line 362
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "MobclickRT"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> onEndSessionInternal: write activity end time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "a_end_time"

    .line 368
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "session_end_time"

    .line 369
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
