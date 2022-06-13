.class public Lcom/umeng/analytics/pro/k;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/k$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/umeng/analytics/MobclickAgent$PageMode;

.field static e:Ljava/lang/String;

.field static f:I

.field private static j:Lorg/json/JSONArray;

.field private static k:Ljava/lang/Object;

.field private static l:Landroid/app/Application;

.field private static p:Z

.field private static q:Ljava/lang/Object;


# instance fields
.field c:Z

.field d:Z

.field g:Lcom/umeng/analytics/vshelper/a;

.field h:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    .line 62
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sput-object v1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 81
    sput-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 82
    sput v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/umeng/analytics/pro/k;->p:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 74
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->c:Z

    .line 77
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->d:Z

    .line 79
    iput v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    .line 80
    iput v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    .line 105
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor;->getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lcom/umeng/analytics/vshelper/a;

    .line 251
    new-instance v0, Lcom/umeng/analytics/pro/k$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/k$1;-><init>(Lcom/umeng/analytics/pro/k;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->f()V

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/k$1;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/k;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->o:I

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;
    .locals 2

    const-class v0, Lcom/umeng/analytics/pro/k;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 94
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 95
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    goto :goto_0

    .line 96
    :cond_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 97
    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    .line 101
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/pro/k$a;->a()Lcom/umeng/analytics/pro/k;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 217
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lcom/umeng/analytics/vshelper/a;

    invoke-interface {v1, v0}, Lcom/umeng/analytics/vshelper/a;->activityResume(Ljava/lang/String;)V

    .line 224
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/k;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 225
    iput-boolean v1, p0, Lcom/umeng/analytics/pro/k;->c:Z

    .line 226
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/app/Activity;)V

    .line 229
    sget-object p1, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 230
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 231
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    :cond_1
    sput-object v0, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/app/Activity;)V

    .line 239
    sget-object p1, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 240
    :try_start_1
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->h()V

    .line 241
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 172
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    sget-object v1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    .line 175
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 177
    sput-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    :cond_0
    if-eqz p0, :cond_1

    .line 181
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "isMainProcess"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Context"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    const-string v1, "$$_onUMengEnterBackground"

    invoke-virtual {p1, p0, v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/umeng/analytics/pro/k;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/k;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->n:I

    return v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    .line 471
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    monitor-enter p1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/pro/k;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/umeng/analytics/pro/k;->n:I

    return p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 9

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 481
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    .line 486
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 488
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 490
    iget-object p1, p0, Lcom/umeng/analytics/pro/k;->i:Ljava/util/Map;

    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v7

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 493
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 495
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 497
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "page_name"

    .line 499
    sget-object v6, Lcom/umeng/analytics/pro/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "duration"

    .line 500
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "page_start"

    .line 501
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x0

    .line 502
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    sget-object v1, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :catchall_0
    :try_start_4
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_2
    move-exception p1

    .line 493
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 196
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 197
    sget-object v1, Lcom/umeng/analytics/pro/k;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/k;->j:Lorg/json/JSONArray;

    .line 201
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "__b"

    .line 205
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-static {p0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p0

    .line 207
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/h$a;->a:Lcom/umeng/analytics/pro/h$a;

    .line 206
    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 201
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/umeng/analytics/pro/k;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/umeng/analytics/pro/k;->o:I

    return p0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 53
    sget-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/analytics/pro/k;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->o:I

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/umeng/analytics/pro/k;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/umeng/analytics/pro/k;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/umeng/analytics/pro/k;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->n:I

    return v0
.end method

.method private f()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 145
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->m:Z

    .line 158
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 160
    sget-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 v0, 0x0

    .line 162
    sput-object v0, Lcom/umeng/analytics/pro/k;->l:Landroid/app/Application;

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 109
    sget-object v0, Lcom/umeng/analytics/pro/k;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-boolean v1, Lcom/umeng/analytics/pro/k;->p:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 111
    sput-boolean v1, Lcom/umeng/analytics/pro/k;->p:Z

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "MobclickRT"

    const-string v0, "--->>> init\u89e6\u53d1onResume: \u65e0\u524d\u53f0Activity\uff0c\u76f4\u63a5\u9000\u51fa\u3002"

    .line 119
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> init\u89e6\u53d1onResume: \u8865\u6551\u6210\u529f\uff0c\u524d\u53f0Activity\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/app/Activity;)V

    return-void

    :cond_1
    :try_start_1
    const-string p1, "MobclickRT"

    const-string v1, "--->>> init\u89e6\u53d1onResume: firstResumeCall = false\uff0c\u76f4\u63a5\u8fd4\u56de\u3002"

    .line 113
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/k;->c(Landroid/app/Activity;)V

    .line 168
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->b()V

    return-void
.end method
