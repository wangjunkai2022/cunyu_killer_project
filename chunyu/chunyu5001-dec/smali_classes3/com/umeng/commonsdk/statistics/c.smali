.class public Lcom/umeng/commonsdk/statistics/c;
.super Ljava/lang/Object;
.source "NetWorkManager.java"


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final o:Ljava/lang/String; = "thtstart"

.field private static final p:Ljava/lang/String; = "gkvc"

.field private static final q:Ljava/lang/String; = "ekvc"


# instance fields
.field a:Ljava/lang/String;

.field private final e:I

.field private f:Lcom/umeng/commonsdk/statistics/internal/c;

.field private g:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

.field private h:Lcom/umeng/commonsdk/statistics/idtracking/e;

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

.field private j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

.field private k:Lcom/umeng/commonsdk/statistics/noise/Defcon;

.field private l:J

.field private m:I

.field private n:I

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/umeng/commonsdk/statistics/c;->e:I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    .line 74
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->i:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    .line 76
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 78
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->k:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/c;->l:J

    const/4 v3, 0x0

    .line 80
    iput v3, p0, Lcom/umeng/commonsdk/statistics/c;->m:I

    .line 81
    iput v3, p0, Lcom/umeng/commonsdk/statistics/c;->n:I

    .line 82
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->i:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    .line 97
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->k:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 99
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "thtstart"

    .line 100
    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/c;->l:J

    const-string v1, "gkvc"

    .line 101
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/c;->m:I

    const-string v1, "ekvc"

    .line 102
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/c;->n:I

    .line 104
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    const-string v1, "track_list"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->g:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 108
    new-instance v0, Lcom/umeng/commonsdk/statistics/c$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/c$1;-><init>(Lcom/umeng/commonsdk/statistics/c;)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/internal/d;)V

    .line 124
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    .line 127
    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    .line 128
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/b;)V

    return-void
.end method

.method private a([B)I
    .locals 3

    .line 242
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 243
    new-instance v1, Lcom/umeng/analytics/pro/at;

    new-instance v2, Lcom/umeng/analytics/pro/bi$a;

    invoke-direct {v2}, Lcom/umeng/analytics/pro/bi$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/at;-><init>(Lcom/umeng/analytics/pro/br;)V

    const/4 v2, 0x1

    .line 247
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V

    .line 249
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_0

    .line 250
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->g:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getImprint()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 251
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->g:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 255
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 258
    :cond_0
    :goto_0
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/c;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/c;->k:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/statistics/c;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v2

    .line 151
    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->d(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 153
    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)Z

    move-result v4

    .line 154
    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->c(Ljava/lang/String;)Z

    move-result v2

    .line 157
    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 163
    sget-object p1, Lcom/umeng/commonsdk/statistics/UMServerURL;->ZCFG_PATH:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_4
    sget-object p1, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/c;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-virtual {v5, v1, v3, v2, p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a([BZZLjava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    .line 175
    :cond_5
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/c;->a([B)I

    move-result p1

    .line 178
    :goto_1
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "MobclickRT"

    const/4 v7, 0x2

    if-eqz v5, :cond_9

    if-eqz v2, :cond_6

    if-ne p1, v7, :cond_6

    :try_start_1
    const-string v3, "Zero req: succeed."

    .line 181
    invoke-static {v6, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    if-ne p1, v7, :cond_7

    const-string v3, "\u672c\u6b21\u542f\u52a8\u6570\u636e: \u53d1\u9001\u6210\u529f!"

    .line 183
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    const-string v3, "Send instant data: succeed."

    .line 184
    invoke-static {v6, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    if-ne p1, v7, :cond_8

    const-string v3, "\u666e\u901a\u7edf\u8ba1\u6570\u636e: \u53d1\u9001\u6210\u529f!"

    .line 186
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    const-string v3, "Send analytics data: succeed."

    .line 187
    invoke-static {v6, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v3, "Inner req: succeed."

    .line 190
    invoke-static {v6, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    if-eq p1, v7, :cond_b

    const/4 v3, 0x3

    if-eq p1, v3, :cond_a

    goto :goto_3

    .line 203
    :cond_a
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->saveSate()V

    if-eqz v2, :cond_d

    .line 210
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object p1

    .line 211
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;)V

    const-string p1, "--->>> \u96f6\u53f7\u62a5\u6587\u5e94\u7b54\u5185\u5bb9\u62a5\u9519!!! \uff0c\u7279\u6b8a\u5904\u7406!\uff0c\u7ee7\u7eed\u6b63\u5e38\u6d41\u7a0b\u3002"

    .line 213
    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    const v2, 0x8010

    .line 216
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v3

    const/4 v4, 0x0

    .line 215
    invoke-static {p1, v2, v3, v4}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return v1

    .line 195
    :cond_b
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/c;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    if-eqz v2, :cond_c

    .line 196
    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->e()V

    .line 199
    :cond_c
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->saveSate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    :goto_3
    if-ne p1, v7, :cond_e

    return v1

    :cond_e
    return v0

    :catchall_0
    move-exception p1

    .line 235
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/c;->r:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0
.end method
