.class Lcom/tencent/liteav/audio/impl/route/e$i;
.super Ljava/lang/Thread;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/e;

.field private b:Landroid/os/Handler;

.field private final c:[Z

.field private d:Z

.field private final e:Lcom/tencent/liteav/audio/impl/route/e;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 4

    .line 298
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 289
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->b:Landroid/os/Handler;

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 290
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    .line 291
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    .line 293
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->f:Z

    const-string p1, ""

    .line 294
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->g:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 295
    iput-wide v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->h:J

    const-string p1, ""

    .line 296
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->i:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-string v0, "TXCAudioRouteManager"

    const-string v2, "TraeAudioManagerLooper start..."

    .line 301
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->start()V

    .line 304
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    aget-boolean v1, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 307
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start used:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCAudioRouteManager"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 312
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a()V
    .locals 4

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " _enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 391
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 392
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-nez v0, :cond_1

    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;Z)Z

    .line 396
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->f()V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->e(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->f(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/e$h;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "TXCAudioRouteManager"

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->f(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/e$h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->f(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/e$h;->e()V

    .line 403
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/e$h;)Lcom/tencent/liteav/audio/impl/route/e$h;

    .line 405
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    .line 407
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/impl/route/e$i;->a(Z)V

    .line 409
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 411
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mode failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->d()V

    .line 418
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception v1

    .line 405
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private a(Z)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY"

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_OPERATION"

    const-string v2, "NOTIFY_SERVICE_STATE"

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFY_SERVICE_STATE_DATE"

    .line 428
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private b()V
    .locals 5

    const-string v0, "TXCAudioRouteManager"

    const-string v1, ""

    .line 554
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 558
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/b;)Lcom/tencent/liteav/audio/impl/route/b;

    .line 559
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.HEADSET_PLUG"

    .line 561
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    .line 562
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/liteav/audio/impl/route/b;->a(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V

    .line 564
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST"

    .line 565
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v1, "register receiver in _init"

    .line 567
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 660
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 662
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h;->k()Ljava/util/ArrayList;

    move-result-object v2

    .line 664
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v3

    .line 665
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/audio/impl/route/h;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXTRA_DATA_AVAILABLEDEVICE_LIST"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    .line 666
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_DATA_CONNECTEDDEVICE"

    .line 667
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_DATA_PREV_CONNECTEDDEVICE"

    .line 668
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME"

    .line 669
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1, v0, p1, v6}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    :catchall_0
    move-exception p1

    .line 670
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 5

    const-string v0, "TXCAudioRouteManager"

    const-string v1, ""

    .line 576
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 580
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/b;)Lcom/tencent/liteav/audio/impl/route/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v1, "unregister receiver in _prev_startService"

    .line 587
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 590
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.HEADSET_PLUG"

    .line 592
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    .line 593
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/liteav/audio/impl/route/b;->a(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V

    const-string v3, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST"

    .line 595
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "register receiver in _prev_startService"

    .line 597
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prev start service failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 677
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    if-nez v0, :cond_1

    const-string p1, " InternalVoicecallPreprocess am==null!!"

    .line 682
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 687
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 688
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, 0x2

    invoke-static {v1, v0, p1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    :cond_2
    const-string v0, "PARAM_SESSIONID"

    .line 692
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->h:J

    const-string v0, "PARAM_OPERATION"

    .line 693
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->i:Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;I)I

    .line 695
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;I)I

    const-string v0, "PARAM_MODEPOLICY"

    .line 697
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    const-string v0, "params.get(PARAM_MODEPOLICY)==null!!"

    .line 699
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;I)I

    goto :goto_0

    .line 702
    :cond_3
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;I)I

    .line 704
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio mode policy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->k(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->k(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->d(Lcom/tencent/liteav/audio/impl/route/e;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(I)V

    .line 707
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 708
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    .line 709
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    :cond_4
    :goto_1
    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "TXCAudioRouteManager"

    const-string v1, ""

    .line 606
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/b;->b()V

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/b;)Lcom/tencent/liteav/audio/impl/route/b;

    .line 613
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 615
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v1, "unregister receiver in _post_stopService"

    .line 619
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 621
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST"

    .line 622
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop service failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    if-nez v0, :cond_0

    const-string p1, "InternalVoicecallPostprocess AudioManager is null!"

    .line 715
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string v0, "active mode is not ACTIVE_VOICECALL!"

    .line 720
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 722
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v2, 0x3

    invoke-static {v1, v0, p1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    .line 726
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;I)I

    .line 727
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "TXCAudioRouteManager"

    const-string v1, ""

    .line 633
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->a()V

    .line 636
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/b;->b()V

    .line 638
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/b;)Lcom/tencent/liteav/audio/impl/route/b;

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 642
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v1, "unregister receiver in _uninit"

    .line 646
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 648
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;)Landroid/content/Context;

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninit failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    if-nez v0, :cond_0

    const-string v0, "AudioManager is null!"

    .line 733
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string v0, "active mode is not AUDIO_MANAGER_ACTIVE_VOICECALL!"

    .line 738
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;I)I

    .line 743
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->l(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 744
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->l(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(I)V

    .line 747
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 748
    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PARAM_SESSIONID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->i:Ljava/lang/String;

    const-string v2, "PARAM_OPERATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 752
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v3, 0x6

    invoke-static {v2, v1, v0, v3}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    .line 753
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/audio/impl/route/e$a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->b:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " fail mMsgHandler==null _enabled:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Y"

    goto :goto_0

    :cond_0
    const-string v0, "N"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " activeMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 343
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    return v1

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e$a;->ordinal()I

    move-result v2

    invoke-static {v0, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 349
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->k:Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->a()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "TXCAudioRouteManager"

    const-string v0, "sendMessageDelayed, device is connecting, plugin need delay 1 second"

    .line 350
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->b:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 353
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public a(Landroid/os/Message;)V
    .locals 8

    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TXCAudioRouteManager"

    if-ltz v0, :cond_7

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/e$a;->values()[Lcom/tencent/liteav/audio/impl/route/e$a;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_0

    goto/16 :goto_3

    .line 439
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/e$a;->values()[Lcom/tencent/liteav/audio/impl/route/e$a;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v4

    const/4 v4, 0x0

    .line 442
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, ""

    .line 444
    invoke-static {v3, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 446
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _enabled:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->a:Lcom/tencent/liteav/audio/impl/route/e$a;

    if-ne v0, p1, :cond_1

    .line 449
    invoke-virtual {p0, v5}, Lcom/tencent/liteav/audio/impl/route/e$i;->a(Ljava/util/HashMap;)V

    return-void

    .line 453
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-nez p1, :cond_2

    const-string p1, "service has been disabled, skip."

    .line 454
    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v0, v5, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    .line 459
    :cond_2
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$4;->a:[I

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/e$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "PARAM_DEVICE"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 527
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    goto/16 :goto_2

    .line 518
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->i(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    move-result p1

    if-eqz p1, :cond_6

    .line 519
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device plug out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sessionConnectedDev:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->i(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", connected fail, auto switch!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    goto/16 :goto_2

    .line 509
    :pswitch_2
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0, p1, v4, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device plug in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sessionConnectedDev:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->i(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connected fail,auto switch!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    goto/16 :goto_2

    .line 493
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/h;->f()Ljava/lang/String;

    move-result-object p1

    .line 494
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_AUTO_DEVICELIST_UPDATE connectedDev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " highestDev"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v3

    sget-object v5, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-eq v3, v5, :cond_3

    iget-boolean v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->f:Z

    if-eqz v3, :cond_3

    .line 497
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->f:Z

    .line 498
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0, p1, v4, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    goto :goto_2

    :cond_3
    const-string v1, "DEVICE_BLUETOOTHHEADSET"

    .line 501
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 504
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    goto :goto_2

    .line 502
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0, p1, v4, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I

    goto :goto_2

    .line 488
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v5}, Lcom/tencent/liteav/audio/impl/route/e;->d(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V

    goto :goto_2

    .line 484
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/tencent/liteav/audio/impl/route/e$i;->d(Ljava/util/HashMap;)V

    goto :goto_2

    .line 480
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/tencent/liteav/audio/impl/route/e$i;->c(Ljava/util/HashMap;)V

    goto :goto_2

    .line 476
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v5}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V

    goto :goto_2

    .line 472
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v5}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V

    goto :goto_2

    .line 468
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v5}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V

    goto :goto_2

    .line 464
    :pswitch_a
    invoke-direct {p0, v5}, Lcom/tencent/liteav/audio/impl/route/e$i;->b(Ljava/util/HashMap;)V

    goto :goto_2

    .line 461
    :pswitch_b
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->a()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 435
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "invalid message: %d"

    invoke-static {v3, p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 358
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EXTRA_DATA_DEVICECONFIG"

    .line 363
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 364
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "TXCAudioRouteManager"

    const-string v4, "startService cfg:%s, enabled: %s, activeMode: %d"

    invoke-static {v2, v4, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v3}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Z)V

    const-string p1, "service is started."

    .line 367
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    if-eqz v0, :cond_4

    .line 372
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->a()V

    .line 375
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->c()V

    .line 377
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->a()V

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;)Z

    .line 380
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->g:Ljava/lang/String;

    .line 381
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    .line 382
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;Z)Z

    .line 384
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->d(Lcom/tencent/liteav/audio/impl/route/e;)V

    .line 385
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->d:Z

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e$i;->a(Z)V

    .line 386
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, ""

    .line 534
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 536
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/audio/impl/route/e$f;-><init>(Lcom/tencent/liteav/audio/impl/route/e$i;Lcom/tencent/liteav/audio/impl/route/e$1;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->b:Landroid/os/Handler;

    .line 538
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->b()V

    .line 539
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    .line 541
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 544
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$i;->e()V

    .line 546
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    monitor-enter v1

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    aput-boolean v3, v0, v3

    .line 548
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$i;->c:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 549
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception v0

    .line 549
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 542
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
