.class Lcom/tencent/liteav/audio/impl/route/e$c;
.super Lcom/tencent/liteav/audio/impl/route/e$h;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e$h;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1410
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1416
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1420
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1288
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0xfa0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_3

    .line 1289
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v2

    sget-object v9, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-eq v2, v9, :cond_0

    new-array v1, v7, [Ljava/lang/Object;

    .line 1290
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1291
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "TXCAudioRouteManager"

    const-string v9, "connect bluetoothHeadset: try sco mode, IsMusicScene: %b, scene: %s"

    .line 1290
    invoke-static {v2, v9, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    new-array v2, v7, [Ljava/lang/Object;

    .line 1296
    iget-object v7, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1297
    invoke-static {v7}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v0

    iget-object v7, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v7}, Lcom/tencent/liteav/audio/impl/route/e;->h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object v7

    aput-object v7, v2, v8

    const-string v7, "TXCAudioRouteManager"

    const-string v8, "connect bluetoothHeadset: do nothing, IsMusicScene: %b, scene: %s"

    .line 1296
    invoke-static {v7, v8, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->d()V

    :cond_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v3, v5

    .line 1302
    :goto_1
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/audio/impl/route/d;->h:Lcom/tencent/liteav/audio/impl/route/d;

    if-ne v1, v2, :cond_4

    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread SCO_DISCONNECTED sleep 5000"

    .line 1311
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    .line 1312
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    :cond_4
    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread sleep 1000"

    .line 1314
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1321
    :catch_1
    :goto_3
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object v2, Lcom/tencent/liteav/audio/impl/route/d;->d:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1322
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    if-eqz v1, :cond_5

    .line 1323
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object v2, Lcom/tencent/liteav/audio/impl/route/d;->f:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1324
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v1

    monitor-enter v1

    .line 1325
    :try_start_2
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v2

    aput-boolean v0, v2, v0

    .line 1326
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1327
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->f()V

    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread _startBluetoothSco"

    .line 1328
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 1326
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :goto_4
    move v1, v8

    .line 1332
    :goto_5
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    if-eqz v2, :cond_a

    .line 1333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothHeadsetSwitchThread i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is bluetooth sco on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1334
    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bluetooth name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1335
    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TXCAudioRouteManager"

    .line 1333
    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;

    move-result-object v2

    sget-object v3, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    if-ne v2, v3, :cond_6

    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread bluetoothState ==  BluetoothState.SCO_CONNECTED 1"

    .line 1337
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->d()V

    goto :goto_6

    .line 1342
    :cond_6
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v2

    monitor-enter v2

    .line 1343
    :try_start_4
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v3, :cond_7

    .line 1345
    :try_start_5
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1350
    :catch_2
    :cond_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1352
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;

    move-result-object v2

    sget-object v3, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    if-ne v2, v3, :cond_8

    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread bluetoothState == BluetoothState.SCO_CONNECTED 2"

    .line 1353
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->d()V

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x3

    if-le v1, v3, :cond_9

    goto :goto_6

    .line 1362
    :cond_9
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->g()V

    .line 1364
    :try_start_7
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1368
    :catch_3
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object v3, Lcom/tencent/liteav/audio/impl/route/d;->f:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {v1, v3}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1369
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v1

    monitor-enter v1

    .line 1370
    :try_start_8
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object v3

    aput-boolean v0, v3, v0

    .line 1371
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1372
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->f()V

    const-string v1, "TXCAudioRouteManager"

    const-string v3, "bluetoothHeadsetSwitchThread retry start sco"

    .line 1373
    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    .line 1371
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 1350
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 1377
    :cond_a
    :goto_6
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    if-eq v1, v2, :cond_b

    const-string v1, "TXCAudioRouteManager"

    const-string v2, "bluetoothHeadsetSwitchThread sco fail,remove btheadset"

    .line 1378
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    .line 1380
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->j()V

    const/16 v1, 0xa

    .line 1381
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/audio/impl/route/e$c;->a(I)V

    .line 1382
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Z)V

    .line 1387
    :cond_b
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    if-nez v1, :cond_d

    :cond_c
    new-array v1, v7, [Ljava/lang/Object;

    .line 1388
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1389
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/e;->n(Lcom/tencent/liteav/audio/impl/route/e;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, "TXCAudioRouteManager"

    const-string v2, "IsMusicScene: %b, mIsRunning: %b, stopBluetoothSco()"

    .line 1388
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->g()V

    :cond_d
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE_BLUETOOTHHEADSET"

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$c;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TXCAudioRouteManager"

    const-string v1, "bluetoothHeadsetSwitchThread _quit _stopBluetoothSco"

    .line 1404
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$c;->g()V

    return-void
.end method
