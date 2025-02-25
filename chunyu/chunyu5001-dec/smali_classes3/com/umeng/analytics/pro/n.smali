.class public Lcom/umeng/analytics/pro/n;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/n$c;,
        Lcom/umeng/analytics/pro/n$a;,
        Lcom/umeng/analytics/pro/n$d;,
        Lcom/umeng/analytics/pro/n$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "ana_is_f"

.field private static final n:Ljava/lang/String; = "thtstart"

.field private static final o:Ljava/lang/String; = "dstk_last_time"

.field private static final p:Ljava/lang/String; = "dstk_cnt"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"

.field private static final t:Ljava/lang/String; = "-1"

.field private static final x:Ljava/lang/String; = "com.umeng.umcrash.UMCrashUtils"

.field private static y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field private b:Lcom/umeng/analytics/pro/n$c;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lorg/json/JSONArray;

.field private final h:I

.field private i:I

.field private j:I

.field private k:J

.field private final s:J

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 111
    invoke-static {}, Lcom/umeng/analytics/pro/n;->h()V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 71
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 72
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    const/16 v0, 0xa

    .line 78
    iput v0, p0, Lcom/umeng/analytics/pro/n;->f:I

    .line 80
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    const/16 v0, 0x1388

    .line 81
    iput v0, p0, Lcom/umeng/analytics/pro/n;->h:I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    .line 83
    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    const-wide/16 v1, 0x0

    .line 84
    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    const-wide/32 v3, 0x1b77400

    .line 93
    iput-wide v3, p0, Lcom/umeng/analytics/pro/n;->s:J

    .line 97
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/n;->u:Z

    .line 98
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/n;->v:Z

    .line 102
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    .line 144
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "thtstart"

    .line 145
    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    const-string v1, "gkvc"

    .line 146
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/n;->i:I

    const-string v1, "ekvc"

    .line 147
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 148
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/n$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;
    .locals 1

    .line 158
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    .line 163
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/n$b;->a()Lcom/umeng/analytics/pro/n;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "header"

    .line 920
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_0

    .line 921
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "eof"

    .line 923
    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 924
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 200
    sget-object v0, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 202
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "MobclickRT"

    const-string p2, "--->>> reflect call setPuidAndProvider method of crash lib failed."

    .line 204
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(JI)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 1457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/32 p1, 0x1b77400

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 1459
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->o()V

    return v0

    :cond_0
    const/16 p1, 0x1388

    if-ge p3, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .locals 7

    .line 583
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v1, "$$_onUMengEnterForeground"

    const-string v2, "$$_onUMengEnterBackground"

    const-string v3, "$$_onUMengEnterForegroundInitError"

    .line 587
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 591
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "id"

    .line 594
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 595
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :catchall_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lt v4, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "ekv"

    .line 617
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 620
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 626
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 628
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 629
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 630
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 632
    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONArray;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lt v3, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 3

    .line 943
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    const/4 p1, 0x0

    .line 946
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 947
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/h;->b()V

    const-string p2, "MobclickRT"

    const-string p3, "--->>> Instant session packet overload !!! "

    .line 948
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    .line 788
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "__av"

    .line 791
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__vc"

    .line 792
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "app_version"

    if-eqz v2, :cond_0

    .line 796
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "version_code"

    if-eqz v1, :cond_1

    .line 802
    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 804
    :cond_1
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 5

    .line 966
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->e()Z

    move-result v0

    const-string v1, "version_code"

    const-string v2, "app_version"

    if-nez v0, :cond_2

    .line 967
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "__av"

    .line 969
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__vc"

    .line 970
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 973
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 981
    :cond_1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 991
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method private c(Z)Z
    .locals 3

    .line 1560
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    if-nez v0, :cond_1

    .line 1565
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->a()V

    .line 1570
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 1572
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1575
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_3

    .line 1579
    :cond_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1580
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 1584
    :cond_3
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_4

    .line 1585
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1586
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 1590
    :cond_4
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u53d1\u9001\u7b56\u7565 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_5
    return p1
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "autopages"

    const-string v2, "version_code"

    const-string v3, "analytics"

    const-string v4, "channel"

    const-string v5, "appkey"

    const-string v6, "device_model"

    const-string v7, "active_user"

    const-string v8, "device_id"

    const-string v9, "activate_msg"

    const-string v10, "sdk_version"

    const-string v11, "sessions"

    const-string v12, "error"

    const-string v13, "gkv"

    const-string v14, "header"

    const-string v15, "ekv"

    move-object/from16 v16, v4

    const-string v4, "dplus"

    if-nez v0, :cond_0

    return-void

    .line 1857
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v17

    if-gtz v17, :cond_1

    return-void

    :cond_1
    move-object/from16 v17, v5

    .line 1858
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1860
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1861
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1862
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    .line 1863
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1864
    invoke-virtual {v5, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4e8b\u4ef6:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1867
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_2
    move-object/from16 v18, v2

    .line 1870
    :cond_3
    :goto_0
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1871
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1872
    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1873
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6e38\u620f\u4e8b\u4ef6:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1875
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1878
    :cond_4
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1879
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1880
    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1881
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9519\u8bef:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1883
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1886
    :cond_5
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1887
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1889
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    .line 1891
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_8

    .line 1892
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1893
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 1894
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1895
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1897
    :cond_6
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1900
    :cond_8
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1901
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f1a\u8bdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1903
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v1

    .line 1906
    :cond_9
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1907
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1908
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    :cond_a
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1911
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1912
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1913
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1915
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2

    :cond_b
    move-object/from16 v18, v2

    .line 1920
    :cond_c
    :goto_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1921
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1922
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1925
    :cond_d
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1926
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1927
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1928
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 1929
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1930
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1932
    :cond_e
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1933
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    :cond_f
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1936
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    move-object/from16 v1, v18

    .line 1938
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "version"

    .line 1939
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    move-object/from16 v1, v17

    .line 1941
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1942
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    move-object/from16 v1, v16

    .line 1944
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1945
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1947
    :cond_13
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u57fa\u7840\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1949
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1954
    :cond_14
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1959
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private d(Z)Z
    .locals 2

    .line 2294
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    if-nez v0, :cond_0

    .line 2295
    new-instance v0, Lcom/umeng/analytics/pro/n$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/n$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 2299
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 2301
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessageByInstant()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 2303
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "__t"

    .line 1410
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const/16 v1, 0x802

    .line 1411
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1412
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/n;->i:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(JI)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1415
    :cond_0
    iget v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x801

    .line 1416
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1417
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/n;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(JI)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1420
    :cond_2
    iget v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1423
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/n;->f:I

    if-lt v0, v1, :cond_4

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** \u8d85\u8fc710\u4e2a\u4e8b\u4ef6\uff0c\u4e8b\u4ef6\u843d\u5e93\u3002"

    .line 1424
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONArray;)V

    .line 1426
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 1428
    :cond_4
    iget-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 1431
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1433
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "version_code"

    const-string v2, "analytics"

    const-string v3, "channel"

    const-string v4, "appkey"

    const-string v5, "device_model"

    const-string v6, "device_id"

    const-string v7, "sdk_version"

    const-string v8, "active_user"

    const-string v9, "sessions"

    const-string v10, "header"

    if-nez v0, :cond_0

    return-void

    .line 1967
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-gtz v11, :cond_1

    return-void

    .line 1968
    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1970
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1971
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1973
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1974
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1976
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    const/4 v14, 0x0

    .line 1978
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 1979
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1980
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 1981
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1984
    :cond_3
    invoke-virtual {v11, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1985
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u672c\u6b21\u542f\u52a8\u4f1a\u8bdd:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1987
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v9

    .line 1991
    :cond_4
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1992
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1993
    invoke-virtual {v11, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1994
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u672c\u6b21\u542f\u52a8\u8d26\u53f7:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1996
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2002
    :cond_5
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2003
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2004
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2005
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 2006
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2007
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2009
    :cond_6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2010
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2012
    :cond_7
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2013
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2015
    :cond_8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "version"

    .line 2016
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2018
    :cond_9
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2019
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2021
    :cond_a
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2022
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2025
    :cond_b
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u6b21\u542f\u52a8\u57fa\u7840\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2027
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2032
    :cond_c
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2037
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 7

    .line 2436
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 2437
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ts"

    .line 2438
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2440
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2441
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 2444
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 2445
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2447
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;J)V

    .line 2449
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "MobclickRT"

    .line 2450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    move-result p1

    .line 2453
    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 2455
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2458
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 2462
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, " Excepthon  in  onProfileSignOff"

    .line 2463
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "header"

    .line 2119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    .line 2120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "sessions"

    const-string v3, "analytics"

    const-string v4, "content"

    if-eqz v0, :cond_2

    .line 2122
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2127
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "MobclickRT"

    if-eqz v0, :cond_1

    .line 2132
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2134
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2135
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2136
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "id"

    .line 2138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--->>> removeAllInstantData: really delete instant session data"

    .line 2143
    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/h;->b(Ljava/lang/String;)V

    .line 2149
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->b()V

    const-string p1, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE."

    .line 2152
    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v0, 0x1101

    .line 2154
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2153
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    .line 2158
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2159
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2162
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2163
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2164
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2166
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2167
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 2172
    :cond_4
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .line 64
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g(Ljava/lang/Object;)V
    .locals 8

    .line 2471
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2472
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    .line 2474
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 2475
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "provider"

    .line 2476
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    .line 2477
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    .line 2478
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2480
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 2481
    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2483
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v6, v2, v3}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;J)V

    .line 2485
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/umeng/analytics/pro/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2487
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v6

    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3, v5}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;JZ)Z

    move-result v5

    .line 2489
    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MobclickRT"

    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2496
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "header"

    .line 2187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    .line 2188
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sessions"

    const-string v4, "analytics"

    const-string v5, "content"

    if-eqz v0, :cond_2

    .line 2190
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2195
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2200
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2202
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2204
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->i()V

    .line 2205
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->h()V

    .line 2206
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 2207
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->a()V

    goto :goto_0

    :cond_1
    const-string p1, "MobclickRT"

    const-string v0, "--->>> Error, Should not go to this branch."

    .line 2210
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2215
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2216
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2219
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2220
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2221
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2223
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2224
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    :cond_4
    const-string v0, "ekv"

    .line 2226
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2227
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/h;->h()V

    :cond_6
    const-string v0, "error"

    .line 2230
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2231
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->i()V

    .line 2236
    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method

.method private static h()V
    .locals 5

    :try_start_0
    const-string v0, "com.umeng.umcrash.UMCrashUtils"

    .line 116
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    sput-object v0, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    const-string v1, "setPuidAndProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 119
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    sput-object v0, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "__ii"

    .line 2507
    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 2508
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2509
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2510
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2511
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2513
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    const-string v0, "exception"

    .line 505
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->b(J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "header"

    .line 509
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "content"

    .line 510
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 512
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string v3, "MobclickRT"

    const-string v4, "--->>> constructInstantMessage: request build envelope."

    .line 514
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 520
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 527
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->e(Lorg/json/JSONObject;)V

    .line 531
    :cond_2
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/n;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private j()V
    .locals 5

    const-string v0, "exception"

    .line 545
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 547
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "header"

    .line 548
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "content"

    .line 549
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 550
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 554
    invoke-static {v3, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 559
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MobclickRT"

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 565
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->d(Lorg/json/JSONObject;)V

    .line 570
    :cond_2
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .locals 3

    .line 955
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->l()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "st"

    const-string v2, "1"

    .line 958
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private l()Lorg/json/JSONObject;
    .locals 11

    const-string v0, "vers_name"

    const-string v1, "$ud_da"

    const-string v2, "$pr_ve"

    const-string v3, ""

    .line 1001
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1003
    :try_start_0
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "wrapper_version"

    .line 1004
    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "wrapper_type"

    .line 1005
    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    :cond_0
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v5

    const-string v6, "vertical_type"

    .line 1018
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const-string v7, "9.3.8"

    const-string v8, "sdk_version"

    if-ne v5, v6, :cond_2

    .line 1020
    :try_start_1
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1021
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v5

    .line 1024
    :goto_0
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1026
    :cond_2
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :goto_1
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1034
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "secret"

    .line 1035
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    :cond_3
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v6, "pr_ve"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1040
    sget-object v6, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1043
    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v8, "ekv_bl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1044
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1045
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "$ekv_bl_ver"

    if-eqz v8, :cond_4

    .line 1046
    :try_start_2
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1048
    :cond_4
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    :cond_5
    :goto_2
    sget-object v7, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v8, "ekv_wl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1053
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1054
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "$ekv_wl_ver"

    if-eqz v8, :cond_6

    .line 1055
    :try_start_3
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 1057
    :cond_6
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    :goto_3
    const-string v7, "pro_ver"

    const-string v8, "1.0.0"

    .line 1062
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "atm"

    const-string v8, "1"

    .line 1066
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_8

    .line 1068
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ana_is_f"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1074
    :cond_8
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_a

    .line 1082
    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1086
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "vers_date"

    const-string v9, "vers_pre_version"

    if-eqz v5, :cond_9

    :try_start_4
    const-string v5, "0"

    .line 1092
    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1098
    :cond_9
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cur_version"

    .line 1100
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_date"

    .line 1101
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1102
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vers_code"

    .line 1103
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1104
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1105
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_4
    return-object v4
.end method

.method private m()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "pre_version"

    const/4 v2, 0x0

    .line 1278
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v4, "pr_ve"

    invoke-static {v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "0"

    if-eqz v3, :cond_4

    .line 1280
    :try_start_1
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    return-object v0

    .line 1283
    :cond_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 1288
    :cond_1
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1289
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "cur_version"

    if-eqz v6, :cond_2

    .line 1292
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v4

    goto :goto_0

    .line 1295
    :cond_2
    iget-object v4, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1297
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1298
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 1309
    :catchall_0
    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/umeng/analytics/pro/n;->d:Ljava/lang/String;

    return-object v2
.end method

.method private n()Ljava/lang/String;
    .locals 7

    const-string v0, "pre_date"

    const/4 v1, 0x0

    .line 1322
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const-string v3, "ud_da"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1325
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    return-object v0

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    .line 1329
    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "yyyy-MM-dd"

    if-eqz v3, :cond_2

    .line 1331
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 1332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1336
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1338
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1339
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 1349
    :catchall_0
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/umeng/analytics/pro/n;->e:Ljava/lang/String;

    return-object v1
.end method

.method private o()V
    .locals 5

    const/4 v0, 0x0

    .line 1475
    :try_start_0
    iput v0, p0, Lcom/umeng/analytics/pro/n;->i:I

    .line 1476
    iput v0, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/n;->k:J

    .line 1479
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1480
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_cnt"

    .line 1481
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private p()Z
    .locals 4

    .line 1608
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v0

    .line 1609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 1616
    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1617
    iget-object v2, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1618
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "__i"

    .line 1619
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :catchall_0
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private q()V
    .locals 7

    const-string v0, "__i"

    .line 2339
    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2345
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 2346
    :goto_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2348
    :try_start_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2349
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2350
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2351
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "-1"

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2352
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v4

    .line 2353
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 2356
    :goto_1
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2358
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 2360
    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2364
    :cond_4
    iput-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    :cond_5
    return-void
.end method

.method private r()V
    .locals 7

    const-string v0, "first_activate_time"

    .line 2373
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2374
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2375
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    .line 2377
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 2379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2380
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private s()Z
    .locals 5

    .line 2421
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2422
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    .line 2424
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .locals 8

    .line 660
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 667
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v2

    .line 672
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gtz v3, :cond_1

    if-eq v2, v4, :cond_5

    return-object v1

    .line 682
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "userlevel"

    const-string v7, "active_user"

    if-ne v3, v5, :cond_3

    .line 683
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    return-object v1

    .line 690
    :cond_2
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v2, v4, :cond_4

    return-object v1

    .line 697
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 699
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 700
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v2, v4, :cond_4

    return-object v1

    :cond_4
    const-string v3, "sessions"

    .line 709
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gkv"

    .line 710
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ekv"

    .line 711
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 713
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 714
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    .line 722
    :cond_5
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->l()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 724
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->c(Lorg/json/JSONObject;)V

    .line 727
    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 729
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "analytics"

    if-ne v2, v4, :cond_7

    .line 731
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 733
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 734
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 737
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "header"

    .line 738
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "content"

    .line 742
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    :cond_a
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v3
.end method

.method public a()V
    .locals 5

    .line 167
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/n;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MobclickRT"

    const-string v3, "--->>> network is now available, rebuild instant session data packet."

    .line 171
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v3, 0x1101

    .line 173
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 172
    invoke-static {v1, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 175
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/n;->v:Z

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v3, 0x1102

    .line 181
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 180
    invoke-static {v0, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 183
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 175
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "exception"

    if-eqz p1, :cond_2

    .line 2062
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 2067
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2068
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x65

    .line 2069
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 2072
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2075
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 6

    .line 210
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2015

    if-eq p2, v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY."

    .line 426
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 429
    iget-object p1, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object p1

    .line 430
    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz p1, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/n;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_1

    .line 421
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "MobclickRT"

    const-string p2, "--->>> receive DELAY_BUILD_ENVELOPE event."

    .line 411
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 p2, 0x2011

    .line 413
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 412
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 414
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 p2, 0x1102

    .line 415
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 414
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 405
    :pswitch_3
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 402
    :pswitch_4
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 354
    :pswitch_5
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->k()V

    goto/16 :goto_1

    .line 348
    :pswitch_6
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->m()V

    goto/16 :goto_1

    .line 342
    :pswitch_7
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    if-nez p1, :cond_2

    return-void

    .line 317
    :cond_2
    sget-object p2, Lcom/umeng/analytics/pro/n;->y:Ljava/lang/Class;

    if-eqz p2, :cond_5

    sget-object p2, Lcom/umeng/analytics/pro/n;->z:Ljava/lang/reflect/Method;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_CHANGE_NOTIFY"

    .line 320
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string p2, ""

    const-string v0, ""

    .line 324
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    .line 325
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 326
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "provider"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p2, "provider"

    .line 328
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "uid"

    .line 329
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :goto_0
    return-void

    .line 239
    :pswitch_9
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_c

    .line 244
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    goto/16 :goto_1

    .line 248
    :cond_6
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 249
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 248
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_1

    .line 373
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->c()V

    goto/16 :goto_1

    .line 390
    :pswitch_b
    invoke-virtual {p0, p1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    :pswitch_c
    const-string p2, "MobclickRT"

    const-string v0, "--->>> INSTANT_SESSION_START"

    .line 379
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 381
    iget-object p2, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 382
    :try_start_2
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/n;->u:Z

    .line 383
    monitor-exit p2

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 293
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->h(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 286
    :pswitch_e
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    goto/16 :goto_1

    .line 397
    :pswitch_f
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    const-string p2, "MobclickRT"

    const-string v0, "--->>> START_SESSION"

    .line 361
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 364
    iget-object p2, p0, Lcom/umeng/analytics/pro/n;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 365
    :try_start_3
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/n;->v:Z

    .line 366
    monitor-exit p2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_11
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNOFF"

    .line 308
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 311
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNIN"

    .line 299
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;Z)V

    .line 302
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->g(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 279
    :pswitch_13
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 273
    :pswitch_14
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_15
    if-eqz p1, :cond_7

    .line 259
    :try_start_4
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 261
    :cond_7
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    .line 262
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    .line 263
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 264
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V

    goto :goto_1

    .line 218
    :pswitch_16
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 223
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->e(Ljava/lang/Object;)V

    .line 225
    :cond_8
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    .line 226
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 229
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V

    goto :goto_1

    .line 232
    :cond_9
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 233
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 232
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :cond_a
    const-string p1, "header_foreground_count"

    .line 441
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 443
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 446
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/t;->b(Landroid/content/Context;)V

    .line 450
    :cond_b
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 451
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 450
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    :catchall_2
    :cond_c
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1100
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2003
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2007
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2010
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 2322
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2323
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->i()V

    goto :goto_0

    .line 2326
    :cond_0
    sget-object p2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2328
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2329
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 470
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->b:Lcom/umeng/analytics/pro/n$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 473
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    const-string v1, "MobclickRT"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 476
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "--->>> send session start in policy ReportQuasiRealtime."

    .line 477
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    goto :goto_0

    .line 481
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "--->>> send normal data in policy ReportQuasiRealtime."

    .line 482
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    goto :goto_0

    .line 488
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "--->>> constructMessage()"

    .line 489
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .locals 8

    .line 821
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 826
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/h;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 829
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "active_user"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 830
    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v3, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 831
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "provider"

    .line 833
    aget-object v2, v3, v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "puid"

    .line 834
    aget-object v3, v3, v5

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 836
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 843
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v2

    .line 846
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v5, :cond_2

    .line 847
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq v2, v6, :cond_2

    return-object v1

    .line 859
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/umeng/analytics/pro/q;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 864
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_3

    if-eq v2, v6, :cond_3

    return-object v1

    .line 874
    :cond_3
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->k()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 876
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/n;->b(Lorg/json/JSONObject;)V

    .line 879
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 880
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "analytics"

    if-ne v2, v6, :cond_5

    .line 884
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 886
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 887
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 890
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "header"

    .line 891
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "content"

    .line 895
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    :cond_8
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/n;->b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object v3
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 17

    const-string v1, "userlevel"

    const-string v0, "autopages"

    const-string v2, "sessions"

    const-string v3, "pages"

    const/4 v4, 0x0

    .line 1140
    :try_start_0
    sget-object v5, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/h;->a(Z)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    goto/16 :goto_7

    .line 1145
    :cond_0
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1146
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1147
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    .line 1148
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 1149
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1150
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1151
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_1

    if-eqz v11, :cond_1

    .line 1154
    invoke-virtual {v9, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1155
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string v12, "page_start"

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 1159
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1161
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 1162
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1163
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 1166
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v10, v14, :cond_3

    .line 1167
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 1168
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1170
    :cond_3
    new-instance v10, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;

    invoke-direct {v10}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;-><init>()V

    .line 1171
    invoke-virtual {v10, v12}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->setCompareKey(Ljava/lang/String;)V

    .line 1172
    invoke-static {v13, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1173
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1174
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1175
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 1177
    :cond_4
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1178
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1181
    :cond_5
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "$page_num"

    if-eqz v10, :cond_8

    .line 1182
    :try_start_3
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v13, 0x0

    .line 1183
    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 1184
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1185
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "ts"

    move-object/from16 v16, v6

    .line 1186
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v14, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1187
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move-object/from16 v16, v6

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_4

    :cond_7
    move-object/from16 v16, v6

    .line 1190
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    :cond_8
    move-object/from16 v16, v6

    const/4 v5, 0x0

    .line 1193
    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1196
    :goto_6
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 1198
    :cond_9
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "merge pages error"

    .line 1201
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1209
    :cond_a
    :goto_7
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v2, ""

    .line 1211
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1213
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    :cond_b
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 1242
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1243
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "provider"

    const/4 v5, 0x0

    .line 1244
    aget-object v5, v0, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "puid"

    .line 1245
    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "active_user"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1251
    :cond_c
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group_info"

    .line 1254
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    :cond_d
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    return-object v4
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 2254
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/h;->d()V

    .line 2256
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "exception"

    if-eqz p1, :cond_2

    .line 2089
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 2094
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2095
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x65

    .line 2096
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 2101
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2105
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->f(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 194
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 2244
    sget-object p1, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->b(Landroid/content/Context;)V

    .line 2245
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n;->d()V

    const/4 p1, 0x0

    .line 2247
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2248
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** flushMemoryData: \u4e8b\u4ef6\u843d\u5e93\u3002"

    .line 1359
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONArray;)V

    .line 1361
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n;->g:Lorg/json/JSONArray;

    .line 1363
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1364
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/n;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/n;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/n;->j:I

    .line 1365
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 2276
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->r()V

    .line 2279
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->m()Ljava/lang/String;

    .line 2280
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->n()Ljava/lang/String;

    const/4 p1, 0x1

    .line 2282
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/n;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 2265
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/n;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/umeng/analytics/pro/n;->j()V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 7

    const-string v0, "first_activate_time"

    const-wide/16 v1, 0x0

    .line 2398
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/n;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 2399
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2401
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    .line 2403
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2404
    :try_start_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    :cond_0
    move-wide v1, v4

    :catchall_1
    :cond_1
    :goto_0
    return-wide v1
.end method
