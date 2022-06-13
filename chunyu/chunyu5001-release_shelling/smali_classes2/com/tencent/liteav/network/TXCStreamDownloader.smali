.class public Lcom/tencent/liteav/network/TXCStreamDownloader;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCStreamDownloader.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/network/TXIStreamDownloader$a;
.implements Lcom/tencent/liteav/network/e$a;
.implements Lcom/tencent/liteav/network/k;
.implements Lcom/tencent/liteav/network/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCStreamDownloader$a;,
        Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TXCStreamDownloader"


# instance fields
.field private mAccUrlFetcher:Lcom/tencent/liteav/network/o;

.field private mApplicationContext:Landroid/content/Context;

.field private mChannelType:I

.field private mCurrentNalTs:J

.field private mDownloadFormat:I

.field private mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

.field private mDownloaderRunning:Z

.field private mEnableMessage:Z

.field private mEnableMetaData:Z

.field private mEnableNearestIP:Z

.field private mFlvSessionKey:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

.field private mLastIFramelTs:J

.field private mLastTimeStamp:J

.field private mListener:Lcom/tencent/liteav/network/l;

.field private mListenerLock:[B

.field private mNotifyListener:Lcom/tencent/liteav/basic/c/b;

.field private mOriginPlayUrl:Ljava/lang/String;

.field private mPayLoadType:I

.field private mRecvFirstNal:Z

.field private mReportNetStatusRunnalbe:Ljava/lang/Runnable;

.field private mStreamSwitcher:Lcom/tencent/liteav/network/e;

.field private mSwitchStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 341
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 344
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 35
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 36
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    .line 37
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    .line 39
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    const-string v2, ""

    .line 40
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mOriginPlayUrl:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableNearestIP:Z

    .line 42
    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mChannelType:I

    .line 43
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMessage:Z

    .line 44
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMetaData:Z

    .line 45
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    const/4 v2, 0x1

    .line 46
    iput v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    .line 51
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    .line 53
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 54
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstNal:Z

    .line 57
    iput-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mSwitchStartTime:J

    .line 58
    iput-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mCurrentNalTs:J

    .line 59
    iput-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastIFramelTs:J

    .line 60
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    .line 61
    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mPayLoadType:I

    .line 631
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader$3;-><init>(Lcom/tencent/liteav/network/TXCStreamDownloader;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    .line 346
    new-instance v0, Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 347
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setFlvSessionKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq p2, v2, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 349
    :cond_1
    new-instance v0, Lcom/tencent/liteav/network/TXCRTMPDownloader;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 351
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_3

    .line 352
    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 353
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setRestartListener(Lcom/tencent/liteav/network/TXIStreamDownloader$a;)V

    .line 355
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setMessageNotifyListener(Lcom/tencent/liteav/network/k;)V

    .line 357
    :cond_3
    iput p2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    .line 358
    new-instance p2, Lcom/tencent/liteav/network/o;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/network/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    .line 359
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    .line 361
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 362
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mOriginPlayUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableNearestIP:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tencent/liteav/network/TXCStreamDownloader;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mChannelType:I

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMessage:Z

    return p0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMetaData:Z

    return p0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    return p0
.end method

.method static synthetic access$600(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/o;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    return-object p0
.end method

.method private getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRealTimeStreamInfo()Lcom/tencent/liteav/network/TXCStreamDownloader$a;
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/network/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader$a;-><init>()V

    .line 619
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/o;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->b:Ljava/lang/String;

    .line 620
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/o;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->c:Ljava/lang/String;

    .line 621
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/o;->c()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->d:I

    .line 622
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/o;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getCurrentStreamUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->a:Ljava/lang/String;

    .line 626
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->isQuicChannel()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->f:Z

    :cond_1
    return-object v0
.end method

.method private getSpeed(JJJ)Ljava/lang/Long;
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p3, p1

    :goto_0
    const-wide/16 p1, 0x0

    cmp-long v0, p5, p1

    if-lez v0, :cond_1

    const-wide/16 p1, 0x8

    mul-long/2addr p3, p1

    const-wide/16 p1, 0x3e8

    mul-long/2addr p3, p1

    const-wide/16 p1, 0x400

    mul-long/2addr p5, p1

    .line 715
    div-long p1, p3, p5

    .line 718
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private native nativeGetRTMPProxyUserId()Ljava/lang/String;
.end method

.method private playStreamWithRawUrl(Ljava/lang/String;ZLcom/tencent/liteav/basic/b/a;)V
    .locals 9

    .line 526
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "http://"

    .line 527
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ".flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v0, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    .line 529
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v1, v1, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    const/4 v2, 0x0

    .line 530
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 531
    new-instance v2, Lcom/tencent/liteav/network/TXCFLVDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/liteav/network/TXCFLVDownloader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 532
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setFlvSessionKey(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 534
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 535
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setRestartListener(Lcom/tencent/liteav/network/TXIStreamDownloader$a;)V

    .line 536
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iput v0, v2, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    .line 537
    iput v1, v2, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    .line 538
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setHeaders(Ljava/util/Map;)V

    .line 539
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setUserID(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setMessageNotifyListener(Lcom/tencent/liteav/network/k;)V

    .line 541
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mPayLoadType:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setPayloadType(I)V

    :cond_1
    const/16 v0, 0x1bc8

    const-wide/16 v1, 0x1

    .line 544
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 546
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 547
    new-instance v0, Lcom/tencent/liteav/network/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setOriginUrl(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V

    :cond_2
    return-void
.end method

.method private reportNetStatus()V
    .locals 4

    .line 639
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatusInternal()V

    .line 641
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private reportNetStatusInternal()V
    .locals 18

    move-object/from16 v7, p0

    .line 645
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v8

    .line 646
    iget-wide v0, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    sub-long v10, v8, v0

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v12

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getRealTimeStreamInfo()Lcom/tencent/liteav/network/TXCStreamDownloader$a;

    move-result-object v13

    if-eqz v12, :cond_5

    .line 654
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_0

    .line 655
    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    move-object/from16 v0, p0

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 656
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v14

    move-wide/from16 v16, v0

    :goto_0
    cmp-long v2, v16, v14

    if-gtz v2, :cond_1

    cmp-long v2, v0, v14

    if-lez v2, :cond_2

    .line 660
    :cond_1
    iget-object v2, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 v3, 0x0

    iput v3, v2, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryTimes:I

    :cond_2
    const/16 v2, 0x1bbd

    .line 663
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v2, 0x1bbe

    .line 664
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bbf

    .line 666
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bc0

    .line 667
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bd0

    .line 669
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->videoGop:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const-wide/16 v0, 0x1

    const/16 v2, 0x1bc7

    const/16 v3, 0x1bc2

    const/16 v4, 0x1bc1

    if-eqz v13, :cond_4

    .line 672
    iget v5, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->d:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 673
    iget-object v4, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->e:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 674
    iget-boolean v3, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->f:Z

    if-eqz v3, :cond_3

    const-wide/16 v0, 0x2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bcc

    .line 675
    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bcd

    .line 676
    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bce

    .line 677
    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    goto :goto_1

    .line 679
    :cond_4
    iget v5, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 680
    iget-object v4, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 681
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    :goto_1
    const/16 v0, 0x1bc3

    .line 684
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bc4

    .line 685
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bc5

    .line 686
    iget-wide v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->connTS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bc6

    .line 687
    iget-object v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 691
    :cond_5
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_6

    .line 692
    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getConnectCountQuic()I

    move-result v0

    .line 693
    iget-object v1, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getConnectCountTcp()I

    move-result v1

    const/16 v2, 0x1bca

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 694
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bcb

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 695
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bcf

    .line 696
    iget-object v1, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getRealStreamUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bd1

    .line 697
    iget-object v1, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getFlvSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 700
    :cond_6
    iput-wide v8, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    .line 701
    iput-object v12, v7, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    return-void
.end method

.method private tryResetRetryCount()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 176
    iput v1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryTimes:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getRTMPProxyUserId()Ljava/lang/String;
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->nativeGetRTMPProxyUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMetaDataMessage(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EVT_GET_METADATA"

    .line 306
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x7ec

    .line 307
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 65
    iget-object v3, v0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    const/16 v4, 0x7d1

    if-eqz v3, :cond_13

    .line 67
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/16 v6, 0xbbf

    const/16 v7, 0xbbe

    const/16 v8, 0xbbb

    const/16 v9, 0xbba

    const/16 v10, 0xbc2

    const/16 v11, -0x904

    const-string v12, ""

    const/16 v13, -0x8fd

    const-string v14, "EVT_MSG"

    if-eq v1, v11, :cond_c

    const/16 v15, 0x7dc

    if-eq v1, v15, :cond_b

    const/16 v15, 0x7ec

    if-eq v1, v15, :cond_a

    const/16 v15, 0x7ef

    if-eq v1, v15, :cond_a

    const/16 v15, 0x837

    if-eq v1, v15, :cond_9

    if-eq v1, v10, :cond_8

    const/16 v15, -0x8fe

    if-eq v1, v15, :cond_7

    if-eq v1, v13, :cond_6

    if-eq v1, v4, :cond_5

    const/16 v15, 0x7d2

    if-eq v1, v15, :cond_4

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_0

    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN event = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v4, "Read data error"

    .line 80
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "Write data error"

    .line 83
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "RTMP handshake failed"

    .line 71
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "Failed to connect server"

    .line 98
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "begin receiving stream"

    .line 104
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "connection SUCCESS"

    .line 89
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_d

    const-string v4, "serverip"

    .line 91
    invoke-virtual {v2, v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 92
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 93
    invoke-virtual {v5, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v4, "failed to connect server for several times, abort connection"

    .line 74
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v4, "Failed to get accelerated pull address"

    .line 86
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v4, "No video at this stream address"

    .line 77
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v4, "retry connecting stream server"

    .line 101
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v5, v2

    goto :goto_0

    :cond_b
    const-string v4, "EVT_GET_MSG"

    .line 110
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    if-eqz v15, :cond_d

    .line 111
    array-length v11, v15

    if-lez v11, :cond_d

    .line 112
    invoke-virtual {v5, v4, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_c
    const-string v4, "The server rejected the connection request"

    .line 107
    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_0
    if-eqz v2, :cond_e

    .line 125
    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_e
    if-eqz v12, :cond_f

    .line 127
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 128
    invoke-virtual {v5, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-ne v1, v13, :cond_10

    if-eqz v2, :cond_10

    const-string v4, "reason"

    .line 134
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 135
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_10
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v11

    const-string v2, "EVT_TIME"

    invoke-virtual {v5, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v11

    const-string v2, "EVT_UTC_TIME"

    invoke-virtual {v5, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    invoke-interface {v3, v1, v5}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_11

    if-eq v1, v9, :cond_11

    if-eq v1, v8, :cond_11

    const/16 v2, 0xbbc

    if-eq v1, v2, :cond_11

    const/16 v2, 0xbbd

    if-eq v1, v2, :cond_11

    if-eq v1, v7, :cond_11

    if-eq v1, v6, :cond_11

    const/16 v2, 0xbc0

    if-eq v1, v2, :cond_11

    const/16 v2, 0xbc1

    if-eq v1, v2, :cond_11

    if-eq v1, v10, :cond_11

    const/16 v2, 0x835

    if-eq v1, v2, :cond_11

    const/16 v2, 0x836

    if-eq v1, v2, :cond_11

    const/16 v2, 0x83d

    if-eq v1, v2, :cond_11

    const/16 v2, 0x83e

    if-eq v1, v2, :cond_11

    if-eq v1, v13, :cond_11

    const/16 v2, -0x900

    if-eq v1, v2, :cond_11

    const/16 v2, -0x904

    if-eq v1, v2, :cond_11

    const/16 v2, -0x905

    if-ne v1, v2, :cond_12

    :cond_11
    const/16 v2, 0x1bc1

    .line 163
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    if-eqz v5, :cond_12

    const/16 v2, 0x1bc2

    .line 165
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    :cond_12
    const/16 v2, 0x7d1

    goto :goto_1

    :cond_13
    move v2, v4

    :goto_1
    if-ne v1, v2, :cond_14

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatusInternal()V

    :cond_14
    return-void
.end method

.method public onOldStreamStop()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/e;->b()V

    .line 234
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 8

    .line 182
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->tryResetRetryCount()V

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    invoke-interface {v1, p1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/a;->f:[B

    iget v4, p1, Lcom/tencent/liteav/basic/structs/a;->h:I

    iget-wide v5, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget v7, p1, Lcom/tencent/liteav/basic/structs/a;->g:I

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/network/TXIStreamDownloader;->PushAudioFrame([BIJI)V

    .line 190
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 10

    .line 195
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->tryResetRetryCount()V

    .line 196
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstNal:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatusInternal()V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstNal:Z

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 201
    :try_start_0
    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mCurrentNalTs:J

    .line 202
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    if-nez v1, :cond_1

    .line 203
    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastIFramelTs:J

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    invoke-interface {v1, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v1, :cond_3

    .line 210
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    iget v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    iget-wide v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    iget-wide v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget v9, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/liteav/network/TXIStreamDownloader;->PushVideoFrame([BIJJI)V

    .line 212
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRestartDownloader()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lcom/tencent/liteav/network/TXCStreamDownloader$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader$1;-><init>(Lcom/tencent/liteav/network/TXCStreamDownloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSEIMessage([B)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz v0, :cond_0

    .line 295
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EVT_GET_MSG"

    .line 296
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p1, 0x7dc

    .line 297
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSwitchFinish(Lcom/tencent/liteav/network/TXIStreamDownloader;Z)V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 259
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mSwitchStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/16 v2, 0x0

    .line 260
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mSwitchStartTime:J

    .line 261
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "EVT_TIME"

    .line 262
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "EVT_UTC_TIME"

    .line 263
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_1

    .line 265
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 266
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 267
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 268
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setRestartListener(Lcom/tencent/liteav/network/TXIStreamDownloader$a;)V

    const-string p1, "EVT_ID"

    const/16 p2, 0x7df

    .line 270
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVT_MSG"

    const-string v3, "Switched resolution successfully"

    .line 271
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p1, p2, v2}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->by:I

    const-string v2, ""

    invoke-static {p1, p2, v1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "EVT_ID"

    const/16 p2, -0x903

    .line 277
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVT_MSG"

    const-string v1, "Failed to switch resolution"

    .line 278
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    invoke-interface {p1, p2, v2}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bz:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    :goto_0
    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestKeyFrame(Ljava/lang/String;)V
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "room"

    .line 600
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->requestKeyFrame(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFlvSessionKey(Ljava/lang/String;)V
    .locals 1

    .line 735
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setFlvSessionKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 728
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHeaders:Ljava/util/Map;

    .line 729
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz p1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setHeaders(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setUserID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/network/l;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 239
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/l;

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 245
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/b;

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPayloadType(I)V
    .locals 1

    .line 742
    iput p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mPayLoadType:I

    .line 743
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz p1, :cond_0

    .line 744
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mPayLoadType:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setPayloadType(I)V

    :cond_0
    return-void
.end method

.method public setRetryInterval(I)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 374
    iput p1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    :cond_0
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 368
    iput p1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;ZIZZ)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 379
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamDownloader;->start(Ljava/lang/String;ZIZZLcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method public start(Ljava/lang/String;ZIZZLcom/tencent/liteav/basic/b/a;)I
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,enableNearestIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,channeyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,enableMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,enableMetaData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "TXCStreamDownloader"

    invoke-static {v9, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 384
    iput-boolean v1, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    const/4 v14, 0x0

    .line 385
    iput-boolean v14, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstNal:Z

    .line 386
    iput-object v7, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mOriginPlayUrl:Ljava/lang/String;

    .line 387
    iput-boolean v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableNearestIP:Z

    .line 388
    iput v8, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mChannelType:I

    .line 389
    iput-boolean v4, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMessage:Z

    .line 390
    iput-boolean v5, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mEnableMetaData:Z

    const-wide/16 v2, 0x0

    .line 391
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x1bc9

    invoke-virtual {v6, v3, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v10, 0x1bca

    .line 392
    invoke-virtual {v6, v10, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v10, 0x1bcb

    .line 393
    invoke-virtual {v6, v10, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const-string v2, "room"

    .line 395
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v12, 0x7d0

    const/16 v10, 0x1bc8

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    if-eqz v2, :cond_2

    .line 397
    invoke-virtual {v6, v3, v11}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const-wide/16 v2, 0x2

    .line 398
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1bcc

    .line 399
    invoke-virtual {v6, v0, v7}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 402
    iget-object v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 403
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 404
    new-instance v0, Lcom/tencent/liteav/network/h;

    invoke-direct {v0, v7, v1}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, v7}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setOriginUrl(Ljava/lang/String;)V

    .line 407
    iget-object v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setUserID(Ljava/lang/String;)V

    .line 408
    iget-object v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v7

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZZZ)V

    .line 412
    :cond_0
    iget-object v0, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 413
    iget-object v1, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return v14

    :cond_2
    const/4 v2, 0x4

    if-eqz v0, :cond_7

    .line 419
    iget v3, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    if-ne v3, v2, :cond_7

    .line 420
    iget-object v10, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/o;

    new-instance v11, Lcom/tencent/liteav/network/TXCStreamDownloader$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/network/TXCStreamDownloader$2;-><init>(Lcom/tencent/liteav/network/TXCStreamDownloader;Ljava/lang/String;ZZLcom/tencent/liteav/basic/b/a;)V

    invoke-virtual {v10, v7, v8, v11}, Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 477
    iget-object v1, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->av:I

    const-string v3, "invalid playUrl"

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    .line 480
    iget-object v1, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->av:I

    const-string v3, "invalid streamID"

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    .line 483
    iget-object v1, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->av:I

    const-string v3, "invalid signature"

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    .line 486
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccelerateStreamPlayUrl failed, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", play stream with raw url"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x8fe

    const/4 v1, 0x0

    .line 488
    invoke-virtual {v6, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->onNotifyEvent(ILandroid/os/Bundle;)V

    const/16 v0, -0x8fd

    .line 501
    invoke-virtual {v6, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_6
    return v14

    .line 508
    :cond_7
    iget-object v3, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v3, :cond_9

    .line 509
    invoke-virtual {v6, v10, v11}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 511
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 512
    new-instance v3, Lcom/tencent/liteav/network/h;

    invoke-direct {v3, v7, v14}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v3, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v3, v7}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setOriginUrl(Ljava/lang/String;)V

    .line 514
    iget-object v7, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v3, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    if-ne v3, v2, :cond_8

    move v9, v1

    goto :goto_1

    :cond_8
    move v9, v14

    :goto_1
    move/from16 v10, p2

    move/from16 v11, p4

    move-wide v0, v12

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V

    .line 517
    iget-object v2, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9

    .line 518
    iget-object v3, v6, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return v14
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    .line 555
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstNal:Z

    .line 556
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->stopDownload()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 560
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/l;)V

    .line 565
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/e;->a()V

    .line 566
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    .line 568
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchStream(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->switchStream(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)Z

    move-result p1

    return p1
.end method

.method public switchStream(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)Z
    .locals 11

    .line 576
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    instance-of v1, v1, Lcom/tencent/liteav/network/TXCFLVDownloader;

    if-nez v1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    new-instance v4, Lcom/tencent/liteav/network/TXCFLVDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    check-cast v2, Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-direct {v4, v1, v2}, Lcom/tencent/liteav/network/TXCFLVDownloader;-><init>(Landroid/content/Context;Lcom/tencent/liteav/network/TXCFLVDownloader;)V

    .line 582
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v1, v1, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    iput v1, v4, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    .line 583
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v1, v1, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    iput v1, v4, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    .line 584
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setHeaders(Ljava/util/Map;)V

    .line 585
    invoke-virtual {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setUserID(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mFlvSessionKey:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setFlvSessionKey(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v4, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setMessageNotifyListener(Lcom/tencent/liteav/network/k;)V

    .line 588
    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mPayLoadType:I

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setPayloadType(I)V

    .line 590
    new-instance v1, Lcom/tencent/liteav/network/e;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/network/e;-><init>(Lcom/tencent/liteav/network/e$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    .line 591
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/l;)V

    .line 592
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mStreamSwitcher:Lcom/tencent/liteav/network/e;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget-wide v5, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mCurrentNalTs:J

    iget-wide v7, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastIFramelTs:J

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/TXIStreamDownloader;Lcom/tencent/liteav/network/TXIStreamDownloader;JJLjava/lang/String;Lcom/tencent/liteav/basic/b/a;)V

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mSwitchStartTime:J

    .line 594
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "TXCStreamDownloader"

    const-string p2, "stream_switch stream is changing ignore this change"

    .line 578
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 579
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 594
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
