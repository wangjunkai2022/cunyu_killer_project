.class public Lcom/tencent/liteav/network/TXCFLVDownloader;
.super Lcom/tencent/liteav/network/TXIStreamDownloader;
.source "TXCFLVDownloader.java"


# static fields
.field private static DISCONNECT_REASON_CODE_FORBIDDEN:I = 0x1

.field private static DISCONNECT_REASON_CODE_UNKNOW:I


# instance fields
.field private final CONNECT_TIMEOUT:I

.field private final ERROR_CONNECT_COMMON:I

.field private final ERROR_CONNECT_FILE_NOT_FOUND:I

.field private final ERROR_CONNECT_SOCKET_TIME_OUT:I

.field private final ERROR_CONNECT_THROWABLE:I

.field private final ERROR_READ_STREAM_COMMON:I

.field private final ERROR_READ_STREAM_EOF:I

.field private final ERROR_READ_STREAM_SOCKET:I

.field private final ERROR_READ_STREAM_SOCKET_TIME_OUT:I

.field private final ERROR_READ_STREAM_SSL:I

.field private final ERROR_READ_STREAM_THROWABLE:I

.field private final FLV_HEAD_SIZE:I

.field private final MAX_FRAME_SIZE:I

.field private final MSG_CONNECT:I

.field private final MSG_DISCONNECT:I

.field private final MSG_QUIT:I

.field private final MSG_RECONNECT:I

.field private final MSG_RECV_DATA:I

.field private final MSG_RESUME:I

.field private final MSG_SEEK:I

.field private final READ_STREAM_SIZE:I

.field public final TAG:Ljava/lang/String;

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mContentLength:J

.field private mCurrentNalTs:J

.field private mDownloadedSize:J

.field private mFLVParser:J

.field private mFlvHandler:Landroid/os/Handler;

.field private mFlvThread:Landroid/os/HandlerThread;

.field private mHandleDataInJava:Z

.field private mHasReceivedFirstAudio:Z

.field private mHasReceivedFirstVideo:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mLastIFramelTs:J

.field private mPacketBytes:[B

.field private mPlayUrl:Ljava/lang/String;

.field private mRecvData:Z

.field private mRefFLVDownloader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/network/TXCFLVDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

.field private mStopJitter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 92
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;-><init>(Landroid/content/Context;)V

    const-string p1, "network.TXCFLVDownloader"

    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 42
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->FLV_HEAD_SIZE:I

    const/high16 v0, 0x100000

    .line 43
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MAX_FRAME_SIZE:I

    const/16 v0, 0x64

    .line 44
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_CONNECT:I

    const/16 v0, 0x65

    .line 45
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RECV_DATA:I

    const/16 v0, 0x66

    .line 46
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_DISCONNECT:I

    const/16 v0, 0x67

    .line 47
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RECONNECT:I

    const/16 v0, 0x68

    .line 48
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_SEEK:I

    const/16 v0, 0x69

    .line 49
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RESUME:I

    const/16 v0, 0x6a

    .line 50
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_QUIT:I

    const/16 v0, 0x1f40

    .line 51
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->CONNECT_TIMEOUT:I

    const/16 v0, 0x56c

    .line 52
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->READ_STREAM_SIZE:I

    const/16 v0, -0x3e9

    .line 53
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_SOCKET_TIME_OUT:I

    const/16 v0, -0x3f0

    .line 54
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_FILE_NOT_FOUND:I

    const/16 v0, -0x3f2

    .line 55
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_COMMON:I

    const/16 v0, -0x3f3

    .line 56
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_THROWABLE:I

    const/16 v0, -0x3f4

    .line 57
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SOCKET_TIME_OUT:I

    const/16 v0, -0x3f5

    .line 58
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SOCKET:I

    const/16 v0, -0x3f6

    .line 59
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SSL:I

    const/16 v0, -0x3f7

    .line 60
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_EOF:I

    const/16 v0, -0x3f8

    .line 61
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_COMMON:I

    const/16 v0, -0x3f9

    .line 62
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_THROWABLE:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    .line 65
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    .line 66
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 68
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPacketBytes:[B

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRecvData:Z

    const-wide/16 v2, 0x0

    .line 70
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mContentLength:J

    .line 71
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mDownloadedSize:J

    .line 73
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHandleDataInJava:Z

    .line 76
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    .line 77
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mCurrentNalTs:J

    .line 78
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mLastIFramelTs:J

    const/4 v4, 0x1

    .line 79
    iput-boolean v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStopJitter:Z

    const-string v4, ""

    .line 81
    iput-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    .line 84
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    .line 86
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 87
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRefFLVDownloader:Ljava/lang/ref/WeakReference;

    .line 93
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iput-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    .line 95
    iput-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    .line 96
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new flv download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/network/TXCFLVDownloader;)V
    .locals 5

    .line 102
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;-><init>(Landroid/content/Context;)V

    const-string p1, "network.TXCFLVDownloader"

    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 42
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->FLV_HEAD_SIZE:I

    const/high16 v0, 0x100000

    .line 43
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MAX_FRAME_SIZE:I

    const/16 v0, 0x64

    .line 44
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_CONNECT:I

    const/16 v0, 0x65

    .line 45
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RECV_DATA:I

    const/16 v0, 0x66

    .line 46
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_DISCONNECT:I

    const/16 v0, 0x67

    .line 47
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RECONNECT:I

    const/16 v0, 0x68

    .line 48
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_SEEK:I

    const/16 v0, 0x69

    .line 49
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_RESUME:I

    const/16 v0, 0x6a

    .line 50
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->MSG_QUIT:I

    const/16 v0, 0x1f40

    .line 51
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->CONNECT_TIMEOUT:I

    const/16 v0, 0x56c

    .line 52
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->READ_STREAM_SIZE:I

    const/16 v0, -0x3e9

    .line 53
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_SOCKET_TIME_OUT:I

    const/16 v0, -0x3f0

    .line 54
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_FILE_NOT_FOUND:I

    const/16 v0, -0x3f2

    .line 55
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_COMMON:I

    const/16 v0, -0x3f3

    .line 56
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_CONNECT_THROWABLE:I

    const/16 v0, -0x3f4

    .line 57
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SOCKET_TIME_OUT:I

    const/16 v0, -0x3f5

    .line 58
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SOCKET:I

    const/16 v0, -0x3f6

    .line 59
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_SSL:I

    const/16 v0, -0x3f7

    .line 60
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_EOF:I

    const/16 v0, -0x3f8

    .line 61
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_COMMON:I

    const/16 v0, -0x3f9

    .line 62
    iput v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->ERROR_READ_STREAM_THROWABLE:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    .line 65
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    .line 66
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 68
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPacketBytes:[B

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRecvData:Z

    const-wide/16 v2, 0x0

    .line 70
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mContentLength:J

    .line 71
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mDownloadedSize:J

    .line 73
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHandleDataInJava:Z

    .line 76
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    .line 77
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mCurrentNalTs:J

    .line 78
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mLastIFramelTs:J

    const/4 v4, 0x1

    .line 79
    iput-boolean v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStopJitter:Z

    const-string v4, ""

    .line 81
    iput-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    .line 84
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    .line 86
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 87
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRefFLVDownloader:Ljava/lang/ref/WeakReference;

    .line 103
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 104
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iput-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    .line 105
    iput-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    .line 106
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRefFLVDownloader:Ljava/lang/ref/WeakReference;

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new multi flv download "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCFLVDownloader;Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgConnect(Lcom/tencent/liteav/basic/b/a;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCFLVDownloader;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgRecvData()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCFLVDownloader;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgDisConnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCFLVDownloader;Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgReconnect(Lcom/tencent/liteav/basic/b/a;)V

    return-void
.end method

.method private connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Network] TXCFLVDownloader: start network connect. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 458
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 460
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    .line 461
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x1f40

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 462
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 463
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 465
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 467
    iget-object v5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v0, 0xc8

    .line 471
    iget-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 472
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->connTS:J

    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    const/16 v0, 0x56c

    new-array v0, v0, [B

    .line 478
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPacketBytes:[B

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRecvData:Z

    .line 481
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mContentLength:J

    const-wide/16 v4, 0x0

    .line 482
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mDownloadedSize:J

    .line 485
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect server success,ServerIp:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v4, v4, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FirstFramePath][Network] TXCFLVDownloader: connect server success. instance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v3, v3, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " rspCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget v3, v3, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 494
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v3, v3, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    const-string v4, "serverip"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x7d1

    .line 495
    invoke-virtual {p0, v3, v0, v2}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyEvent(ILjava/lang/String;Ljava/util/HashMap;)V

    .line 496
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "X-Tlive-SpanId"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iput-object v0, v2, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->flvSessionKey:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvSessionKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive flvSessionKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7ef

    .line 502
    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyEvent(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "network.TXCFLVDownloader"

    const-string v1, "[Network]FLVDownloader disconnect."

    .line 520
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 523
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 527
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    :cond_1
    return-void
.end method

.method private static makeStatsDescriptString(Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",errInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "unknow"

    :goto_0
    return-object p0
.end method

.method private native nativeCleanData(J)V
.end method

.method private native nativeGetAudioBytes(J)I
.end method

.method private native nativeGetVideoBytes(J)I
.end method

.method private native nativeGetVideoGop(J)I
.end method

.method private native nativeInitFlvHander(Ljava/lang/String;IZZILjava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeInitFlvHanderByRef(JILjava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeParseData(J[BI)I
.end method

.method private native nativeUninitFlvhander(JZ)V
.end method

.method private onRecvFirstAudioData()V
    .locals 3

    .line 703
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    .line 705
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Network][Audio] TXCFlvDownloader: recv first audio frame. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onRecvFirstVideoData()V
    .locals 3

    .line 692
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    .line 694
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Network][Video] TXCFlvDownloader: recv first video frame. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private postConnectMsg()V
    .locals 2

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    .line 412
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 414
    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 417
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 418
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 419
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 420
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private postDisconnectMsg()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 405
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private postReconnectMsg()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 399
    iget v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private processMsgConnect(Lcom/tencent/liteav/basic/b/a;)V
    .locals 12

    const-string v0, "network.TXCFLVDownloader"

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->connect()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 186
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRefFLVDownloader:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/network/TXCFLVDownloader;

    if-eqz v1, :cond_1

    .line 189
    iget-boolean v2, v1, Lcom/tencent/liteav/network/TXCFLVDownloader;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Network]init flv parser with old downloader:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 193
    iput-boolean v2, v1, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStopJitter:Z

    .line 194
    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    goto :goto_0

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Network]old downloader:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t running now. just create new parser."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v1, v3

    :goto_0
    const/4 v5, 0x0

    .line 200
    iput-object v5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRefFLVDownloader:Ljava/lang/ref/WeakReference;

    move-wide v7, v1

    goto :goto_1

    :cond_2
    move-wide v7, v3

    :goto_1
    cmp-long v1, v7, v3

    if-eqz v1, :cond_4

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Network]init flv parser with reference parse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->equalURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->b()I

    move-result v9

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->d()Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeInitFlvHanderByRef(JILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    move-object v6, p0

    .line 208
    invoke-direct/range {v6 .. v11}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeInitFlvHanderByRef(JILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    goto :goto_2

    :cond_4
    const-string v1, "[Network]init flv parser."

    .line 211
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 212
    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->equalURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mUserID:Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMessage:Z

    iget-boolean v5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMetaData:Z

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->b()I

    move-result v6

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->d()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeInitFlvHander(Ljava/lang/String;IZZILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    goto :goto_2

    .line 215
    :cond_5
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mUserID:Ljava/lang/String;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMessage:Z

    iget-boolean v6, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMetaData:Z

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeInitFlvHander(Ljava/lang/String;IZZILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    .line 218
    :goto_2
    iget p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPayloadType:I

    if-eqz p1, :cond_6

    .line 219
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    iget p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPayloadType:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeSetPayloadType(JI)V

    .line 224
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    const/16 v0, 0x65

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void

    :catch_0
    move-exception p1

    const-string v1, "[Network]error, reconnect"

    .line 175
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v1, -0x3f3

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 177
    invoke-virtual {p1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    .line 179
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    return-void

    :catch_1
    move-exception p1

    const-string v1, "[Network]exception, reconnect"

    .line 168
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v1, -0x3f2

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    return-void

    :catch_2
    move-exception p1

    const-string v1, "[Network]file not found, reconnect"

    .line 153
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget v0, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 155
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v2, -0x3f0

    iput v2, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 156
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 p1, 0x193

    if-eq p1, v0, :cond_8

    .line 160
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    goto :goto_3

    .line 162
    :cond_8
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgDisConnect()V

    .line 163
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->makeStatsDescriptString(Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;)Ljava/lang/String;

    move-result-object p1

    .line 164
    sget v0, Lcom/tencent/liteav/network/TXCFLVDownloader;->DISCONNECT_REASON_CODE_FORBIDDEN:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyDisconnectEvent(Ljava/lang/String;I)V

    :goto_3
    return-void

    :catch_3
    move-exception p1

    const-string v1, "[Network]socket timeout, reconnect"

    .line 147
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v1, -0x3e9

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 149
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    return-void
.end method

.method private processMsgDisConnect()V
    .locals 5

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "network.TXCFLVDownloader"

    const-string v2, "disconnect failed."

    .line 313
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :goto_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 318
    iget-boolean v4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStopJitter:Z

    invoke-direct {p0, v0, v1, v4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeUninitFlvhander(JZ)V

    .line 319
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    :cond_0
    return-void
.end method

.method private processMsgReconnect(Lcom/tencent/liteav/basic/b/a;)V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStopJitter:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->reconnect(Lcom/tencent/liteav/basic/b/a;)V

    goto :goto_0

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore processMsgReconnect when start multi stream switch"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network.TXCFLVDownloader"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRestartListener:Lcom/tencent/liteav/network/TXIStreamDownloader$a;

    invoke-interface {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader$a;->onOldStreamStop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private processMsgRecvData()V
    .locals 10

    const-string v0, "network.TXCFLVDownloader"

    .line 234
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPacketBytes:[B

    const/16 v4, 0x56c

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    .line 238
    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mDownloadedSize:J

    int-to-long v6, v1

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mDownloadedSize:J

    .line 239
    iget-boolean v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRecvData:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 240
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mRecvData:Z

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FirstFramePath][Network] TXCFLVDownloader: recv first data packet. instance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1

    .line 246
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v4, v3, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseVideoBytes:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseVideoBytes:J

    .line 247
    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPacketBytes:[B

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeParseData(J[BI)I

    move-result v5

    .line 248
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    invoke-direct {p0, v3, v4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeGetVideoBytes(J)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    .line 249
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    invoke-direct {p0, v3, v4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeGetAudioBytes(J)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    .line 250
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    invoke-direct {p0, v3, v4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeGetVideoGop(J)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->videoGop:J

    :cond_1
    const/high16 v1, 0x100000

    if-le v5, v1, :cond_3

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Network]flv play parse frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",start reconnect"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    return-void

    :cond_2
    if-gez v1, :cond_3

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Network]http read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < 0, start reconnect"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    return-void

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v3, "[Network]error"

    .line 298
    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v3, -0x3f9

    iput v3, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 300
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 302
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    .line 303
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "[Network]exception"

    .line 290
    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v3, -0x3f8

    iput v3, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 292
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mInputStream:Ljava/io/InputStream;

    .line 295
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "[Network]eof exception start reconnect"

    .line 284
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v2, -0x3f7

    iput v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 286
    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "[Network]ssl exception start reconnect"

    .line 278
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v2, -0x3f6

    iput v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 280
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "[Network]socket exception start reconnect"

    .line 273
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v2, -0x3f5

    iput v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 275
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    goto :goto_0

    :catch_5
    move-exception v1

    const-string v2, "[Network]socket timeout start reconnect"

    .line 268
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    const/16 v2, -0x3f4

    iput v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 270
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postReconnectMsg()V

    :cond_4
    :goto_0
    return-void
.end method

.method private reconnect(Lcom/tencent/liteav/basic/b/a;)V
    .locals 4

    .line 379
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgDisConnect()V

    .line 381
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->makeStatsDescriptString(Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network.TXCFLVDownloader"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryTimes:I

    iget v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryLimit:I

    if-ge v1, v3, :cond_0

    .line 384
    iget v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryTimes:I

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Network] start reconnect, times:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryTimes:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " limit:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryLimit:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->processMsgConnect(Lcom/tencent/liteav/basic/b/a;)V

    const/16 p1, 0x837

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Network] reconnect fail. all times retried. limit:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->connectRetryLimit:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget p1, Lcom/tencent/liteav/network/TXCFLVDownloader;->DISCONNECT_REASON_CODE_UNKNOW:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyDisconnectEvent(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private sendNotifyDisconnectEvent(Ljava/lang/String;I)V
    .locals 2

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "reason"

    .line 436
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, -0x8fd

    .line 437
    invoke-virtual {p0, p2, p1, v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->sendNotifyEvent(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private startInternal(Lcom/tencent/liteav/basic/b/a;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlvThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    .line 339
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Network] flv downloader thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Lcom/tencent/liteav/network/TXCFLVDownloader$1;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader$1;-><init>(Lcom/tencent/liteav/network/TXCFLVDownloader;Landroid/os/Looper;Lcom/tencent/liteav/basic/b/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCFLVDownloader;->postConnectMsg()V

    return-void
.end method


# virtual methods
.method public PushAudioFrame([BIJI)V
    .locals 8

    .line 127
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativePushAudioFrame(J[BIJI)V

    return-void
.end method

.method public PushVideoFrame([BIJJI)V
    .locals 11

    move-object v10, p0

    .line 123
    iget-wide v1, v10, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativePushVideoFrame(J[BIJJI)V

    return-void
.end method

.method public getCurrentTS()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mCurrentNalTs:J

    return-wide v0
.end method

.method public getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 3

    .line 603
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;-><init>()V

    .line 604
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    .line 605
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    .line 606
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseVideoBytes:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseVideoBytes:J

    .line 607
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseAudioBytes:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->beforeParseAudioBytes:J

    .line 608
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->videoGop:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->videoGop:J

    .line 609
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    .line 610
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    .line 611
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->connTS:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->connTS:J

    .line 612
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    .line 613
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    .line 614
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    .line 615
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->flvSessionKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->flvSessionKey:Ljava/lang/String;

    .line 616
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorCode:I

    .line 617
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-object v1, v1, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLastIFrameTS()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mLastIFramelTs:J

    return-wide v0
.end method

.method public getRealStreamUrl()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public native nativePushAudioFrame(J[BIJI)V
.end method

.method public native nativePushVideoFrame(J[BIJJI)V
.end method

.method public native nativeSetPayloadType(JI)V
.end method

.method public onRecvAudioData([BIII)V
    .locals 5

    .line 677
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstAudio:Z

    .line 679
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Network][Audio] TXCFlvDownloader: recv first audio frame. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    .line 684
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/network/TXIStreamDownloader;->onRecvAudioData([BIII)V

    return-void
.end method

.method public onRecvVideoData([BIJJI)V
    .locals 5

    .line 665
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHasReceivedFirstVideo:Z

    .line 667
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FirstFramePath][Network][Video] TXCFlvDownloader: recv first video frame. instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.TXCFLVDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    .line 672
    invoke-super/range {p0 .. p7}, Lcom/tencent/liteav/network/TXIStreamDownloader;->onRecvVideoData([BIJJI)V

    return-void
.end method

.method public recvData(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mHandleDataInJava:Z

    return-void
.end method

.method public setPayloadType(I)V
    .locals 4

    .line 112
    iput p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPayloadType:I

    .line 113
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFLVParser:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/liteav/network/TXCFLVDownloader;->nativeSetPayloadType(JI)V

    :cond_0
    return-void
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

    .line 623
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCFLVDownloader;->startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V

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

    .line 628
    iget-boolean p2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mIsRunning:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 631
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 634
    :cond_1
    iput-boolean p4, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMessage:Z

    .line 635
    iput-boolean p5, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mEnableMetaData:Z

    const/4 p2, 0x1

    .line 636
    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mIsRunning:Z

    const/4 p2, 0x0

    .line 637
    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/network/h;

    iget-object p1, p1, Lcom/tencent/liteav/network/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start pull with url "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "network.TXCFLVDownloader"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, p6}, Lcom/tencent/liteav/network/TXCFLVDownloader;->startInternal(Lcom/tencent/liteav/basic/b/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopDownload()V
    .locals 4

    .line 645
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mIsRunning:Z

    const-string v0, "network.TXCFLVDownloader"

    const-string v1, "stop pull"

    .line 649
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 653
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 654
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 655
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCFLVDownloader;->mFlvHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "stop download failed."

    .line 658
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
