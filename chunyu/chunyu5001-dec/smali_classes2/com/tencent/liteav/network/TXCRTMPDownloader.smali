.class public Lcom/tencent/liteav/network/TXCRTMPDownloader;
.super Lcom/tencent/liteav/network/TXIStreamDownloader;
.source "TXCRTMPDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCRTMPDownloader$a;
    }
.end annotation


# instance fields
.field private final MSG_EVENT:I

.field private final MSG_RECONNECT:I

.field private final TAG:Ljava/lang/String;

.field private mConnectCountQuic:I

.field private mConnectCountTcp:I

.field private mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

.field private mEnableNearestIP:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasTcpPlayUrl:Z

.field private mIsPlayRtmpAccStream:Z

.field private mLastNetworkType:I

.field private mPlayUrl:Ljava/lang/String;

.field private mQuicChannel:Z

.field private mRTMPThreadLock:Ljava/lang/Object;

.field private mServerIp:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mVecPlayUrls:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;-><init>(Landroid/content/Context;)V

    const-string p1, "network.TXCRTMPDownloader"

    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->TAG:Ljava/lang/String;

    const/16 p1, 0x65

    .line 25
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->MSG_RECONNECT:I

    const/16 p1, 0x66

    .line 26
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->MSG_EVENT:I

    const-string p1, ""

    .line 28
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 32
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mServerIp:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 35
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 38
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    .line 42
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 43
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    .line 45
    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountQuic:I

    .line 46
    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountTcp:I

    .line 47
    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mLastNetworkType:I

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)J
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeInitRtmpHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeStart(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeUninitRtmpHandler(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeStop(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCRTMPDownloader;JLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeRequestKeyFrame(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/liteav/network/TXCRTMPDownloader;JI)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeSetPayloadType(JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/liteav/network/TXCRTMPDownloader;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->internalReconnect(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/liteav/network/TXCRTMPDownloader;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    return-void
.end method

.method private internalReconnect(Z)V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    if-eqz v0, :cond_2

    .line 165
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mLastNetworkType:I

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mLastNetworkType:I

    .line 167
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    invoke-interface {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader$a;->onRestartDownloader()V

    :cond_1
    return-void

    .line 174
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 176
    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 178
    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move p1, v3

    :cond_3
    if-eqz v0, :cond_4

    move p1, v2

    :cond_4
    if-eqz p1, :cond_5

    .line 190
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 191
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/network/h;

    .line 192
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v1, p1, Lcom/tencent/liteav/network/h;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    .line 195
    iget-boolean p1, p1, Lcom/tencent/liteav/network/h;->b:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    :cond_5
    const/16 p1, 0x837

    if-eqz v0, :cond_6

    .line 207
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    if-eqz v0, :cond_6

    .line 208
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    .line 209
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    goto :goto_0

    .line 212
    :cond_6
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    iget v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryLimit:I

    const-string v3, "network.TXCRTMPDownloader"

    if-ge v0, v1, :cond_7

    .line 213
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconnect retry count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " limit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    .line 216
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    goto :goto_0

    :cond_7
    const-string p1, "reconnect all times retried, send failed event "

    .line 218
    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x8fd

    .line 219
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    :goto_0
    return-void
.end method

.method private native nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
.end method

.method private native nativeInitRtmpHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)J
.end method

.method private native nativeRequestKeyFrame(JLjava/lang/String;)V
.end method

.method private native nativeSetPayloadType(JI)V
.end method

.method private native nativeStart(J)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeUninitRtmpHandler(J)V
.end method

.method private postReconnectMsg()V
    .locals 4

    .line 129
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 130
    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 132
    iget v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private reconnect(Z)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a()V

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 146
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 149
    new-instance v1, Lcom/tencent/liteav/network/TXCRTMPDownloader$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$1;-><init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Z)V

    iget p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryInterval:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private startInternal()V
    .locals 4

    .line 116
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountQuic:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountQuic:I

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountTcp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountTcp:I

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    new-instance v1, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;-><init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 124
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->start()V

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getConnectCountQuic()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountQuic:I

    return v0
.end method

.method public getConnectCountTcp()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountTcp:I

    return v0
.end method

.method public getCurrentStreamUrl()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 410
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isQuicChannel()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    return v0
.end method

.method public requestKeyFrame(Ljava/lang/String;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a(Ljava/lang/String;)V

    .line 441
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendNotifyEvent(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->sendNotifyEvent(I)V

    goto :goto_2

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 307
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->reconnect(Z)V

    :goto_2
    return-void
.end method

.method public sendNotifyEvent(ILjava/lang/String;)V
    .locals 3

    .line 278
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_MSG"

    .line 282
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string p2, "EVT_TIME"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v1

    const-string p2, "EVT_UTC_TIME"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz p2, :cond_1

    .line 286
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPayloadType(I)V
    .locals 2

    .line 293
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPayloadType:I

    .line 294
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    iget v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPayloadType:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a(I)V

    .line 298
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDownload(Ljava/util/Vector;ZZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;ZZZZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 315
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V

    return-void
.end method

.method public startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;ZZZZ",
            "Lcom/tencent/liteav/basic/b/a;",
            ")V"
        }
    .end annotation

    .line 320
    iget-boolean p6, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-eqz p6, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 323
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_1

    goto/16 :goto_3

    .line 327
    :cond_1
    iput-boolean p4, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableMessage:Z

    .line 328
    iput-boolean p5, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableMetaData:Z

    .line 329
    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 330
    iput-boolean p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    .line 331
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    move p2, p1

    .line 333
    :goto_0
    iget-object p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ge p2, p3, :cond_3

    .line 334
    iget-object p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/liteav/network/h;

    iget-boolean p3, p3, Lcom/tencent/liteav/network/h;->b:Z

    if-nez p3, :cond_2

    .line 335
    iput-boolean p4, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 340
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/liteav/network/h;

    .line 341
    iget-object p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 343
    iget-object p3, p2, Lcom/tencent/liteav/network/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    .line 344
    iget-boolean p2, p2, Lcom/tencent/liteav/network/h;->b:Z

    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 346
    iput-boolean p4, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start pull with url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " quic:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    if-eqz p3, :cond_4

    const-string p3, "yes"

    goto :goto_2

    :cond_4
    const-string p3, "no"

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "network.TXCRTMPDownloader"

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountQuic:I

    .line 350
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mConnectCountTcp:I

    .line 352
    iput p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    .line 354
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_5

    .line 355
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "RTMP_PULL"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 356
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 359
    :cond_5
    new-instance p1, Lcom/tencent/liteav/network/TXCRTMPDownloader$2;

    iget-object p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader$2;-><init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    .line 368
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    :cond_6
    :goto_3
    return-void
.end method

.method public stopDownload()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    .line 378
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    const/4 v1, 0x0

    .line 379
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    .line 381
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 382
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    const-string v0, "network.TXCRTMPDownloader"

    const-string v2, "stop pull"

    .line 384
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v2}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a()V

    .line 390
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 392
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 396
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 400
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 392
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
