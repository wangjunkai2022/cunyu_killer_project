.class Lcom/umeng/analytics/pro/k$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/k;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/k;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "header_first_resume"

    .line 419
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger enabled."

    .line 420
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/umeng/analytics/pro/k;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger disabled."

    .line 427
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_2

    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->b(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    .line 433
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->i()V

    .line 434
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/umeng/analytics/pro/k;->c:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "header_first_resume"

    .line 383
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger enabled."

    .line 384
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/umeng/analytics/pro/k;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 387
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Z)Z

    .line 389
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 389
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger disabled."

    .line 392
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 325
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->c(Lcom/umeng/analytics/pro/k;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 328
    sget-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 331
    :cond_0
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 332
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    sput v0, Lcom/umeng/analytics/pro/k;->f:I

    .line 334
    :cond_1
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const-string v1, "activityName"

    const-string v2, "isMainProcess"

    const-string v3, "pid"

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "$$_onUMengEnterForegroundInitError"

    .line 341
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    const/4 p1, -0x2

    .line 344
    sput p1, Lcom/umeng/analytics/pro/k;->f:I

    .line 345
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    const-string v0, "\u8bf7\u5728Application.onCreate\u51fd\u6570\u4e2d\u4f7f\u7528UMConfigure.preInit\u51fd\u6570\u521d\u59cb\u5316\u53cb\u76dfsdk"

    .line 346
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 349
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    sget-object v4, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v5, "pairUUID"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 356
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    const-string v2, "$$_onUMengEnterForeground"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->d(Lcom/umeng/analytics/pro/k;)I

    move-result p1

    if-gez p1, :cond_6

    .line 365
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->e(Lcom/umeng/analytics/pro/k;)I

    goto :goto_1

    .line 367
    :cond_6
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->f(Lcom/umeng/analytics/pro/k;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 256
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eqz p1, :cond_4

    .line 279
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;)I

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->b(Lcom/umeng/analytics/pro/k;)I

    .line 284
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->c(Lcom/umeng/analytics/pro/k;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 286
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p1, :cond_4

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    sget-object v1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    const-string v2, "Normal"

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isMainProcess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "$$_onUMengEnterBackground"

    .line 299
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 302
    :cond_3
    sget-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 303
    sput-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method
