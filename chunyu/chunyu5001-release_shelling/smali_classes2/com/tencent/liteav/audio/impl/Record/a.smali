.class public Lcom/tencent/liteav/audio/impl/Record/a;
.super Ljava/lang/Object;
.source "TXCAudioBGMRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/impl/Record/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Thread;

.field private g:[B


# direct methods
.method private a([BIJ)V
    .locals 1

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordPCM([BIJ)V

    goto :goto_1

    :cond_1
    const-string p1, "AudioCenter:TXCAudioBGMRecord"

    const-string p2, "onRecordPcmData:no callback"

    .line 74
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 2

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordStart()V

    goto :goto_1

    :cond_1
    const-string v0, "AudioCenter:TXCAudioBGMRecord"

    const-string v1, "onRecordStart:no callback"

    .line 102
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 98
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 2

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordStop()V

    goto :goto_1

    :cond_1
    const-string v0, "AudioCenter:TXCAudioBGMRecord"

    const-string v1, "onRecordStop:no callback"

    .line 116
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->e:Z

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/a;->f:Ljava/lang/Thread;

    const-string v3, "AudioCenter:TXCAudioBGMRecord"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/a;->f:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/a;->f:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record stop Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop record cost time(MS): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->f:Ljava/lang/Thread;

    return-void
.end method

.method public run()V
    .locals 12

    .line 123
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->e:Z

    if-nez v0, :cond_0

    const-string v0, "AudioCenter:TXCAudioBGMRecord"

    const-string v1, "audio record: abandom start audio sys record thread!"

    .line 124
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/a;->b()V

    .line 130
    iget v0, p0, Lcom/tencent/liteav/audio/impl/Record/a;->b:I

    .line 131
    iget v1, p0, Lcom/tencent/liteav/audio/impl/Record/a;->c:I

    .line 132
    iget v2, p0, Lcom/tencent/liteav/audio/impl/Record/a;->d:I

    mul-int/lit16 v3, v1, 0x400

    mul-int/2addr v3, v2

    .line 133
    div-int/lit8 v3, v3, 0x8

    .line 134
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/a;->g:[B

    .line 135
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/a;->g:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    const-wide/16 v4, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 139
    :catch_0
    :goto_0
    iget-boolean v8, p0, Lcom/tencent/liteav/audio/impl/Record/a;->e:Z

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    int-to-long v10, v0

    mul-long/2addr v8, v10

    int-to-long v10, v1

    mul-long/2addr v8, v10

    int-to-long v10, v2

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long/2addr v8, v4

    int-to-long v10, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const-wide/16 v8, 0xa

    .line 143
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :cond_1
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/Record/a;->g:[B

    array-length v9, v8

    int-to-long v9, v9

    add-long/2addr v4, v9

    .line 149
    array-length v9, v8

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v10

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/tencent/liteav/audio/impl/Record/a;->a([BIJ)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/a;->c()V

    return-void
.end method
