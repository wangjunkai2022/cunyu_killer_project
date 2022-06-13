.class public Lcom/tencent/liteav/network/TXCStreamUploader;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCStreamUploader.java"

# interfaces
.implements Lcom/tencent/liteav/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;,
        Lcom/tencent/liteav/network/TXCStreamUploader$a;,
        Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;,
        Lcom/tencent/liteav/network/TXCStreamUploader$b;
    }
.end annotation


# static fields
.field public static final NAL_CODEC_ID_AVC:I = 0x0

.field public static final NAL_CODEC_ID_HEVC:I = 0x1

.field public static final RTMPSENDSTRATEGY_LIVE:I = 0x1

.field public static final RTMPSENDSTRATEGY_REALTIME_QUIC:I = 0x3

.field public static final RTMPSENDSTRATEGY_REALTIME_TCP:I = 0x2

.field static final TAG:Ljava/lang/String; = "TXCStreamUploader"

.field public static final TXE_UPLOAD_MODE_AUDIO_ONLY:I = 0x1

.field public static final TXE_UPLOAD_MODE_LINK_MIC:I = 0x2

.field public static final TXE_UPLOAD_MODE_REAL_TIME:I = 0x0

.field public static final TXE_UPLOAD_PROTOCOL_AV:I = 0x1

.field public static final TXE_UPLOAD_PROTOCOL_RTMP:I


# instance fields
.field private final MSG_EVENT:I

.field private final MSG_RECONNECT:I

.field private final MSG_REPORT_STATUS:I

.field private final MSG_RTMPPROXY_HEARTBEAT:I

.field private mAudioMuted:Z

.field private mChannelType:I

.field private mConnectCountQuic:I

.field private mConnectCountTcp:I

.field private mConnectSuccessTimeStamps:J

.field private mContext:Landroid/content/Context;

.field private mCurrentRecordIdx:I

.field private mEnableNearestIP:Z

.field private mGoodPushTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntelligentRoute:Lcom/tencent/liteav/network/d;

.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPushing:Z

.field private mLastNetworkType:I

.field private mLastTimeStamp:J

.field private mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

.field mMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/tencent/liteav/network/p;

.field private mQuicChannel:Z

.field private mRetryCount:I

.field private mRtmpMsgRecvThreadInstance:J

.field private mRtmpMsgRecvThreadLock:Ljava/lang/Object;

.field private mRtmpProxyEnable:Z

.field private mRtmpProxyIPIndex:I

.field private mRtmpProxyIPList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRtmpProxyInstance:J

.field private mRtmpProxyLock:Ljava/lang/Object;

.field private mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

.field private mRtmpUrl:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mThreadLock:Ljava/lang/Object;

.field private mUploadQualityReport:Lcom/tencent/liteav/network/s;

.field private mUploaderInstance:J

.field private mVecPendingNAL:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/basic/structs/TXSNALPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 184
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/network/p;)V
    .locals 7

    .line 191
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const/4 v2, 0x0

    .line 59
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 60
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 61
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    const-string v4, ""

    .line 62
    iput-object v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 63
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    .line 64
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    const/4 v4, 0x1

    .line 65
    iput-boolean v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    .line 67
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/d;

    .line 68
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 70
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Ljava/lang/ref/WeakReference;

    .line 71
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    .line 73
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 74
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 76
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 78
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    const-wide/16 v5, 0x7530

    .line 79
    iput-wide v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mGoodPushTime:J

    .line 82
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 83
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    .line 84
    iput v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_RECONNECT:I

    const/16 v5, 0x66

    .line 85
    iput v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_EVENT:I

    const/16 v5, 0x67

    .line 86
    iput v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_REPORT_STATUS:I

    const/16 v5, 0x68

    .line 87
    iput v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_RTMPPROXY_HEARTBEAT:I

    .line 91
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    .line 92
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    .line 94
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    .line 96
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    .line 98
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountQuic:I

    .line 99
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountTcp:I

    .line 101
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    .line 104
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    .line 105
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mAudioMuted:Z

    .line 106
    new-instance v5, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;)V

    iput-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    .line 108
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    .line 109
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    .line 111
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    .line 112
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    .line 113
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    .line 114
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadLock:Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 194
    new-instance p2, Lcom/tencent/liteav/network/p;

    invoke-direct {p2}, Lcom/tencent/liteav/network/p;-><init>()V

    .line 195
    iput v3, p2, Lcom/tencent/liteav/network/p;->a:I

    const/4 v5, 0x3

    .line 196
    iput v5, p2, Lcom/tencent/liteav/network/p;->f:I

    .line 197
    iput v5, p2, Lcom/tencent/liteav/network/p;->e:I

    const/16 v5, 0x28

    .line 198
    iput v5, p2, Lcom/tencent/liteav/network/p;->g:I

    const/16 v5, 0x3e8

    .line 199
    iput v5, p2, Lcom/tencent/liteav/network/p;->h:I

    .line 200
    iput-boolean v4, p2, Lcom/tencent/liteav/network/p;->i:Z

    .line 202
    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    .line 204
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    .line 205
    new-instance p2, Lcom/tencent/liteav/network/d;

    invoke-direct {p2}, Lcom/tencent/liteav/network/d;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/d;

    .line 206
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/d;

    iput-object p0, p2, Lcom/tencent/liteav/network/d;->a:Lcom/tencent/liteav/network/b;

    .line 208
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    .line 209
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 210
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 211
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 213
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    .line 214
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 215
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 216
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 217
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 219
    new-instance p2, Lcom/tencent/liteav/network/s;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/network/s;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    .line 220
    invoke-static {}, Lcom/tencent/liteav/network/q;->a()Lcom/tencent/liteav/network/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/network/q;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;ZI)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCStreamUploader;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->reportNetStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/liteav/network/TXCStreamUploader;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/tencent/liteav/network/TXCStreamUploader;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/liteav/network/TXCStreamUploader;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/liteav/network/TXCStreamUploader;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mAudioMuted:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Ljava/lang/String;ZIIIIIIIZILjava/util/HashMap;)J
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p13}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeInitUploader(Ljava/lang/String;Ljava/lang/String;ZIIIIIIIZILjava/util/HashMap;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(Lcom/tencent/liteav/network/TXCStreamUploader;JZII)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetVideoDropParams(JZII)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/util/Vector;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tencent/liteav/network/TXCStreamUploader;J[BIJJJZ)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p11}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushNAL(J[BIJJJZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/liteav/network/TXCStreamUploader;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/tencent/liteav/network/TXCStreamUploader;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCStreamUploader;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->rtmpProxySendHeartBeat()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tencent/liteav/network/TXCStreamUploader;)Lcom/tencent/liteav/network/TXCStreamUploader$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tencent/liteav/network/TXCStreamUploader;JJLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZLjava/lang/String;)J
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p15}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeInitRtmpProxyInstance(JJLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2200(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tencent/liteav/network/TXCStreamUploader;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/tencent/liteav/network/TXCStreamUploader;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/tencent/liteav/network/TXCStreamUploader;JJ)J
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeInitRtmpMsgRecvThreadInstance(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2500(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeOnThreadRun(J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpMsgRecvThreadStop(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeUninitRtmpMsgRecvThreadInstance(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeUninitRtmpProxyInstance(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeUninitUploader(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCStreamUploader;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/tencent/liteav/network/TXCStreamUploader;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->internalReconnect(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/liteav/network/TXCStreamUploader;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/tencent/liteav/network/TXCStreamUploader;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCStreamUploader;)Lcom/tencent/liteav/network/s;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/liteav/network/TXCStreamUploader;)Lcom/tencent/liteav/network/p;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->getAddressFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method private getAddressFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "://"

    .line 782
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    .line 784
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 787
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getNextRtmpProxyIP()Z
    .locals 5

    .line 1267
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    const-wide/16 v1, 0xea

    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->f:J

    const-wide/16 v1, 0x50

    .line 1268
    iput-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->g:J

    .line 1270
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1271
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1272
    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    return v1

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const-string v2, "://"

    .line 1278
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1279
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 1283
    aget-object v2, v0, v1

    aget-object v0, v0, v1

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1285
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    iget v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1287
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iput-object v2, v3, Lcom/tencent/liteav/network/TXCStreamUploader$a;->h:Ljava/lang/String;

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "room://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 1291
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    .line 1293
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    :cond_2
    return v1
.end method

.method private getParamsFromUrl(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9

    .line 1242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "[?]"

    .line 1244
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1245
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1249
    :cond_0
    aget-object p1, p1, v1

    const-string v3, "[&]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1251
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    const-string v7, "="

    .line 1252
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const-string v7, "[=]"

    .line 1253
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1254
    array-length v7, v6

    if-ne v7, v2, :cond_1

    .line 1255
    aget-object v7, v6, v4

    .line 1256
    aget-object v6, v6, v1

    .line 1257
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$b;
    .locals 10

    .line 724
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$b;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader$b;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    return-object v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 729
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$b;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader$b;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    return-object v0

    .line 732
    :cond_1
    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    if-gez v0, :cond_2

    goto/16 :goto_2

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/a;

    .line 738
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 739
    array-length v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 740
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$b;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader$b;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    const/4 v4, 0x1

    .line 743
    aget-object v5, v2, v4

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 744
    iget-object v7, v0, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 745
    array-length v7, v7

    if-le v7, v4, :cond_4

    iget-object v7, v0, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    goto :goto_0

    .line 749
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 752
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v5, v1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_5

    .line 754
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    aget-object v8, v5, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 758
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    new-instance v2, Lcom/tencent/liteav/network/TXCStreamUploader$b;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/a;->c:Z

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/liteav/network/TXCStreamUploader$b;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    return-object v2

    .line 733
    :cond_6
    :goto_2
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$b;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader$b;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

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

    .line 1118
    div-long p1, p3, p5

    .line 1121
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private internalReconnect(Z)V
    .locals 22

    move-object/from16 v0, p0

    .line 819
    iget-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v1, :cond_0

    return-void

    .line 824
    :cond_0
    iget-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    const/16 v2, -0x52c

    const-string v3, ")"

    const-string v4, " to "

    const-string v5, "reconnect network switch from "

    const-string v6, " retry limit:"

    const/4 v7, 0x3

    const/16 v8, 0x44e

    const-string v9, ""

    const-string v10, "TXCStreamUploader"

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 826
    iget v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v14

    if-eq v1, v14, :cond_1

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 829
    iput v13, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    const-string v1, "WebrtcRoom: need enter again by user"

    .line 831
    invoke-static {v11, v1, v9, v13}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "Network type has changed. Need to re-enter the room"

    .line 832
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3fd

    .line 833
    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(ILjava/lang/String;)V

    return-void

    .line 838
    :cond_1
    iget v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v4, v4, Lcom/tencent/liteav/network/p;->e:I

    const-string v5, "Network: reconnecting to upload server with quic.[addr:%s][retryCount:%d][retryLimit:%d]"

    if-ge v1, v4, :cond_2

    .line 839
    iget v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    new-array v1, v7, [Ljava/lang/Object;

    .line 841
    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v2, v2, Lcom/tencent/liteav/network/TXCStreamUploader$a;->h:Ljava/lang/String;

    aput-object v2, v1, v13

    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v2, v2, Lcom/tencent/liteav/network/p;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v9, v13}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 843
    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const v15, 0x1637b

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect rtmp-proxy server(econnect retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v2, v2, Lcom/tencent/liteav/network/p;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 845
    invoke-direct {v0, v8}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    .line 846
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    invoke-direct {v0, v1, v2, v13}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    .line 849
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getNextRtmpProxyIP()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    iput v13, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    new-array v1, v7, [Ljava/lang/Object;

    .line 854
    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v2, v2, Lcom/tencent/liteav/network/TXCStreamUploader$a;->h:Ljava/lang/String;

    aput-object v2, v1, v13

    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v2, v2, Lcom/tencent/liteav/network/p;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v9, v13}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 856
    invoke-direct {v0, v8}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    .line 857
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    invoke-direct {v0, v1, v2, v13}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    .line 861
    :cond_3
    iget-object v3, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const v4, 0x1637a

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v10, 0x0

    const-string v9, "connect rtmp-proxy server failed(try all addresses)"

    invoke-static/range {v3 .. v10}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 863
    invoke-direct {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto/16 :goto_2

    .line 869
    :cond_4
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/s;->c()V

    .line 872
    iget-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v14

    if-eq v1, v14, :cond_5

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 875
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/d;

    iget-object v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/network/d;->a(Ljava/lang/String;I)V

    .line 876
    iput v13, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    return-void

    .line 881
    :cond_5
    iget-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-nez v1, :cond_6

    move v1, v13

    goto :goto_0

    :cond_6
    move/from16 v1, p1

    .line 886
    :goto_0
    iget-boolean v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-ne v4, v12, :cond_7

    move v1, v12

    :cond_7
    if-ne v1, v12, :cond_8

    .line 892
    invoke-direct {v0, v12}, Lcom/tencent/liteav/network/TXCStreamUploader;->nextRecordIdx(Z)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "reconnect: try all addresses failed"

    .line 894
    invoke-static {v10, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const v15, 0x1637a

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const/16 v21, 0x0

    const-string v20, "connect upload server failed(try all addresses failed)"

    invoke-static/range {v14 .. v21}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 902
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$b;

    move-result-object v1

    .line 904
    iget-object v4, v1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->getAddressFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reconnect change ip: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " enableNearestIP: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " last channel type: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz v14, :cond_9

    const-string v14, "Q Channel"

    goto :goto_1

    :cond_9
    const-string v14, "TCP"

    :goto_1
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-boolean v5, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-ne v5, v12, :cond_a

    const-string v2, "reconnect last channel type is Q Channel\uff0cignore retry limit"

    .line 910
    invoke-static {v10, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v4, v2, v13

    const-string v3, "Network: reconnecting to upload server with quic.[addr:%s]"

    .line 912
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v9, v13}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 914
    iget-object v2, v1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->a:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->b:Z

    invoke-direct {v0, v2, v1, v13}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    .line 916
    invoke-direct {v0, v8}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto/16 :goto_2

    .line 919
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reconnect retry count:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v14, v14, Lcom/tencent/liteav/network/p;->e:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget v5, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v14, v14, Lcom/tencent/liteav/network/p;->e:I

    if-ge v5, v14, :cond_b

    .line 921
    iget v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v13

    .line 923
    iget v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v12

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v4, v4, Lcom/tencent/liteav/network/p;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v11

    const-string v4, "Network: reconnecting to upload server with tcp.[addr:%s][retryCount:%d][retryLimit:%d]"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v9, v13}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 925
    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const v15, 0x1637b

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect upload server:(retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v4, v4, Lcom/tencent/liteav/network/p;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 928
    iget-object v2, v1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->a:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->b:Z

    invoke-direct {v0, v2, v1, v13}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    .line 930
    invoke-direct {v0, v8}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto :goto_2

    :cond_b
    const-string v1, "reconnect: try all times failed"

    .line 932
    invoke-static {v10, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v11, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const v12, 0x1637a

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const/16 v18, 0x0

    const-string v17, "connect upload server failed(try all times failed)"

    invoke-static/range {v11 .. v18}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a(Ljava/lang/String;IJJLjava/lang/String;I)V

    .line 935
    invoke-direct {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    :goto_2
    return-void
.end method

.method private isQCloudStreamUrl(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "://"

    .line 1131
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x3

    .line 1133
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "cloud.tencent.com"

    .line 1134
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private native nativeCacheJNIParams()V
.end method

.method private native nativeEnableDrop(JZ)V
.end method

.method private native nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;
.end method

.method private native nativeInitRtmpMsgRecvThreadInstance(JJ)J
.end method

.method private native nativeInitRtmpProxyInstance(JJLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZLjava/lang/String;)J
.end method

.method private native nativeInitUploader(Ljava/lang/String;Ljava/lang/String;ZIIIIIIIZILjava/util/HashMap;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIIIIIIZI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method private native nativeOnThreadRun(J)V
.end method

.method private native nativePushAAC(J[BJ)V
.end method

.method private native nativePushNAL(J[BIJJJZ)V
.end method

.method private native nativeReleaseJNIParams()V
.end method

.method private native nativeRtmpMsgRecvThreadStart(J)V
.end method

.method private native nativeRtmpMsgRecvThreadStop(J)V
.end method

.method private native nativeRtmpProxyEnterRoom(J)V
.end method

.method private native nativeRtmpProxyLeaveRoom(J)V
.end method

.method private native nativeRtmpProxySendHeartBeat(JJJJJJJJJJJ)V
.end method

.method private native nativeSendRtmpProxyMsg(J[B)V
.end method

.method private native nativeSendSeiMessage(JI[B)V
.end method

.method private native nativeSetSendStrategy(JIZ)V
.end method

.method private native nativeSetVideoDropParams(JZII)V
.end method

.method private native nativeStopPush(J)V
.end method

.method private native nativeUninitRtmpMsgRecvThreadInstance(J)V
.end method

.method private native nativeUninitRtmpProxyInstance(J)V
.end method

.method private native nativeUninitUploader(J)V
.end method

.method private nextRecordIdx(Z)Z
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 768
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/network/a;

    .line 769
    iget v2, p1, Lcom/tencent/liteav/network/a;->e:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/tencent/liteav/network/a;->e:I

    .line 772
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    add-int/2addr p1, v0

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 773
    iget p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private onRtmpProxyRoomEvent(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 1369
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Already in room\uff0c[%d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3fa

    .line 1370
    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 1373
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Not in the room\uff0c[%d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3fb

    .line 1374
    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRtmpProxyUserListPushed([Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1332
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v0, :cond_1

    return-void

    .line 1336
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1341
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1342
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 1344
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 1345
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "userid"

    .line 1346
    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->account:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "playurl"

    .line 1347
    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    aget-object v4, p1, v2

    iget v4, v4, Lcom/tencent/liteav/network/TXCStreamUploader$RtmpProxyUserInfo;->stmType:I

    if-nez v4, :cond_3

    .line 1350
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1352
    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1356
    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userlist"

    .line 1357
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userlist_aux"

    .line 1358
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x3fc

    .line 1360
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "TXCStreamUploader"

    const-string v1, "build json object failed."

    .line 1363
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private onSendRtmpProxyMsg([B)V
    .locals 5

    .line 1320
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1322
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSendRtmpProxyMsg(J[B)V

    .line 1324
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

.method private parseProxyInfo(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_"

    const-string v4, "Key"

    if-eqz v2, :cond_d

    .line 1144
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "room"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1148
    :cond_0
    iget-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->isQCloudStreamUrl(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->i:Z

    .line 1150
    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->getParamsFromUrl(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const-string v0, "sdkappid"

    .line 1155
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1156
    iget-object v6, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:J

    :cond_2
    const-string v0, "roomid"

    .line 1159
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "userid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "roomsig"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_4

    .line 1163
    :cond_3
    iget-object v8, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/tencent/liteav/network/TXCStreamUploader$a;->d:J

    .line 1164
    iget-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->c:Ljava/lang/String;

    const-string v0, "bizbuf"

    .line 1166
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "UTF-8"

    const-string v9, "TXCStreamUploader"

    if-eqz v6, :cond_4

    .line 1168
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1169
    iget-object v6, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/liteav/network/TXCStreamUploader$a;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "decode bizbuf failed."

    .line 1171
    invoke-static {v9, v6, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1176
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1177
    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1184
    iget-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:J

    .line 1186
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1189
    :cond_5
    iget-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->e:Ljava/lang/String;

    const-string v0, "RtmpProxy"

    .line 1192
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "Type"

    const-string v6, "Port"

    const-string v7, "Ip"

    if-eqz v0, :cond_7

    .line 1194
    :try_start_2
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    return-void

    :cond_7
    const-string v8, "AccessList"

    .line 1200
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    .line 1201
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_a

    move v10, v8

    .line 1202
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 1203
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 1204
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_2

    .line 1208
    :cond_8
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1209
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1210
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    const-wide/16 v17, 0x2

    cmp-long v11, v15, v17

    if-nez v11, :cond_9

    .line 1213
    iget-object v11, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1218
    :cond_a
    iget-object v4, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-boolean v4, v4, Lcom/tencent/liteav/network/TXCStreamUploader$a;->i:Z

    if-eqz v4, :cond_c

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v4, "?"

    .line 1223
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-wide v10, v5, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-wide v10, v5, Lcom/tencent/liteav/network/TXCStreamUploader$a;->d:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v3, v3, Lcom/tencent/liteav/network/TXCStreamUploader$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/webrtc/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?real_rtmp_ip="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&real_rtmp_port="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&tinyid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&srctinyid=0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getNextRtmpProxyIP()Z

    goto :goto_3

    .line 1230
    :cond_c
    iput-object v2, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 1231
    iput-boolean v8, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    :goto_3
    const/4 v0, 0x1

    .line 1234
    iput-boolean v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v2, "parse proxy info failed."

    .line 1237
    invoke-static {v9, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private postReconnectMsg(Ljava/lang/String;ZI)V
    .locals 2

    .line 249
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 250
    iput v1, v0, Landroid/os/Message;->what:I

    .line 251
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 252
    :goto_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 253
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    int-to-long p2, p3

    .line 254
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private reconnect(Z)V
    .locals 4

    .line 796
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->stopPushTask()V

    .line 798
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 799
    new-instance v1, Lcom/tencent/liteav/network/TXCStreamUploader$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader$3;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Z)V

    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget p1, p1, Lcom/tencent/liteav/network/p;->f:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private reportNetStatus()V
    .locals 22

    move-object/from16 v7, p0

    .line 1054
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v8

    .line 1055
    iget-wide v0, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    sub-long v10, v8, v0

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getUploadStats()Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    move-result-object v12

    const/16 v14, 0x1b5f

    const/16 v15, 0x1b5e

    const/16 v5, 0x1b5d

    const-wide/16 v0, 0x0

    .line 1063
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v12, :cond_2

    .line 1064
    iget-object v2, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    if-eqz v2, :cond_0

    .line 1065
    iget-wide v1, v2, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inVideoBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inVideoBytes:J

    move-object/from16 v0, p0

    move v13, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1066
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inAudioBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inAudioBytes:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1067
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outVideoBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outVideoBytes:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 1068
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outAudioBytes:J

    iget-wide v3, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outAudioBytes:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    move-wide/from16 v0, v16

    goto :goto_0

    :cond_0
    move v13, v5

    move-wide v2, v0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v18

    .line 1071
    :goto_0
    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoCacheLen:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v13, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1072
    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioCacheLen:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1073
    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoDropCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v14, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1074
    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioDropCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x1b60

    invoke-virtual {v7, v5, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b6d

    .line 1075
    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->bandwidthEst:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b61

    .line 1077
    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->startTS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b62

    .line 1078
    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->dnsTS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b63

    .line 1079
    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->connTS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b64

    .line 1080
    iget-object v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->serverIP:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b65

    .line 1081
    iget-boolean v5, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x2

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x1

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b66

    .line 1082
    iget-object v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->connectionID:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v4, 0x1b67

    .line 1083
    iget-object v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->connectionStats:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1085
    iget-object v4, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoDropCount:J

    iget-wide v10, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioDropCount:J

    invoke-virtual {v4, v5, v6, v10, v11}, Lcom/tencent/liteav/network/s;->a(JJ)V

    .line 1086
    iget-object v4, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    iget-wide v5, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoCacheLen:J

    iget-wide v10, v12, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioCacheLen:J

    invoke-virtual {v4, v5, v6, v10, v11}, Lcom/tencent/liteav/network/s;->b(JJ)V

    goto :goto_2

    :cond_2
    move v13, v5

    .line 1088
    invoke-virtual {v7, v13, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1089
    invoke-virtual {v7, v15, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1090
    invoke-virtual {v7, v14, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v3, 0x1b60

    .line 1091
    invoke-virtual {v7, v3, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    move-wide v2, v0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v18

    :goto_2
    const/16 v4, 0x1b59

    .line 1094
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1b5a

    .line 1095
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1b5b

    .line 1096
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v0, 0x1b5c

    .line 1097
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 1099
    iput-wide v8, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    .line 1100
    iput-object v12, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    .line 1102
    iget-object v0, v7, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v1, 0x67

    const-wide/16 v2, 0x7d0

    .line 1103
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private rtmpProxySendHeartBeat()V
    .locals 27

    move-object/from16 v14, p0

    .line 1302
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1303
    aget v1, v0, v1

    div-int/lit8 v1, v1, 0xa

    int-to-long v4, v1

    const/4 v1, 0x1

    .line 1304
    aget v0, v0, v1

    div-int/lit8 v0, v0, 0xa

    int-to-long v6, v0

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b5c

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v8, v0

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b5b

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v10, v0

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v12, v0

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b5e

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v0

    const/16 v0, 0x1b5d

    invoke-static {v15, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v18, v0

    const/16 v0, 0x1b60

    invoke-static {v15, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getID()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v20, v0

    const/16 v0, 0x1b5f

    invoke-static {v15, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1314
    iget-object v15, v14, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    monitor-enter v15

    move-wide/from16 v22, v2

    .line 1315
    :try_start_0
    iget-wide v2, v14, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v24, v0

    move-object/from16 v1, p0

    move-object/from16 v26, v15

    move-wide/from16 v14, v22

    move-wide/from16 v22, v24

    :try_start_1
    invoke-direct/range {v1 .. v23}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpProxySendHeartBeat(JJJJJJJJJJJ)V

    .line 1316
    monitor-exit v26

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v26, v15

    :goto_0
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendNotifyEvent(I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 969
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->reconnect(Z)V

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 971
    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->reconnect(Z)V

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 974
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    :cond_2
    const-wide/16 v1, 0x7d0

    const/16 v3, 0x68

    const/16 v4, 0x402

    if-ne p1, v4, :cond_4

    .line 977
    iget-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz p1, :cond_3

    .line 978
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 979
    :try_start_0
    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    invoke-direct {p0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpMsgRecvThreadStart(J)V

    .line 980
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_1
    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    invoke-direct {p0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpProxyEnterRoom(J)V

    .line 983
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 985
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 983
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 980
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    :goto_0
    return-void

    .line 991
    :cond_4
    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_12

    .line 993
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/16 v6, -0x904

    if-eq p1, v6, :cond_11

    const/16 v6, -0x51b

    if-eq p1, v6, :cond_10

    if-eq p1, v4, :cond_e

    const/16 v1, 0xbbb

    if-eq p1, v1, :cond_d

    const/16 v1, -0x52d

    if-eq p1, v1, :cond_c

    const/16 v1, -0x52c

    if-eq p1, v1, :cond_b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_9

    const/16 v0, 0x44d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_7

    const/16 v0, 0xbc0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xbc1

    if-eq p1, v0, :cond_5

    const-string v0, "EVT_MSG"

    const-string v1, "UNKNOWN"

    .line 1043
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "EVT_MSG"

    const-string v1, "Failed to connect server"

    .line 1009
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "EVT_MSG"

    const-string v1, "No data is sent for more than 30s. Actively disconnect"

    .line 1003
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "EVT_MSG"

    const-string v1, "Enables network reconnection"

    .line 1040
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "EVT_MSG"

    const-string v1, "Insufficient upstream bandwidth. Data transmission is not timely"

    .line 1018
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, "EVT_MSG"

    const-string v1, "rtmp start push stream"

    .line 1021
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "EVT_MSG"

    const-string v1, "Already connected to rtmp server"

    .line 1012
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v0, "EVT_MSG"

    const-string v1, "Failed to connect all IPs, abort connection."

    .line 997
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v0, "EVT_MSG"

    const-string v1, "No internet. Please check if WiFi or mobile data is turned on"

    .line 1006
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v0, "EVT_MSG"

    const-string v1, "RTMP servers handshake failed"

    .line 1015
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1027
    :cond_e
    iget-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz p1, :cond_f

    .line 1028
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1029
    :try_start_4
    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    invoke-direct {p0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpMsgRecvThreadStart(J)V

    .line 1030
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1031
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_5
    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    invoke-direct {p0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpProxyEnterRoom(J)V

    .line 1033
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1034
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    .line 1035
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 1033
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception v0

    .line 1030
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_f
    :goto_1
    return-void

    :cond_10
    const-string v0, "EVT_MSG"

    const-string v1, "failed to connect server for several times, abort connection"

    .line 1000
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    const-string v0, "EVT_MSG"

    const-string v1, "The server rejects the connection request. It may be that the push URL has been occupied or expired, or the anti-leech link is wrong."

    .line 1024
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_2
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    const-string v2, "EVT_TIME"

    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1047
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v0

    const-string v2, "EVT_UTC_TIME"

    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1048
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, v5}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    :cond_12
    :goto_3
    return-void
.end method

.method private sendNotifyEvent(ILjava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_MSG"

    .line 946
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string p2, "EVT_TIME"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 948
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v1

    const-string p2, "EVT_UTC_TIME"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 949
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Ljava/lang/ref/WeakReference;

    invoke-static {p2, p1, v0}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 943
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    :goto_1
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getUploadStats()Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 955
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    iget-wide v1, p1, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->dnsparseTimeCost:J

    iget-wide v3, p1, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->connectTimeCost:J

    iget-wide v5, p1, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->handshakeTimeCost:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/network/s;->a(JJJ)V

    goto :goto_2

    :cond_2
    const/16 p2, 0x44d

    if-ne p1, p2, :cond_3

    .line 958
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {p1}, Lcom/tencent/liteav/network/s;->d()V

    :cond_3
    :goto_2
    return-void
.end method

.method private startPushTask(Ljava/lang/String;ZI)V
    .locals 4

    const-string p3, "TXCStreamUploader"

    const-string v0, "start push task"

    .line 608
    invoke-static {p3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-boolean p3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    const/4 v0, 0x1

    if-eq p3, p2, :cond_0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x2

    new-array v1, p3, [Ljava/lang/Object;

    .line 610
    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v2, v2, Lcom/tencent/liteav/network/p;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Network: switch push channel from quic to tcp.[retryCount:%d][retryLimit:%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p3, v1, v2, v3}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p3, 0x1b69

    .line 614
    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountQuic:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountQuic:I

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 p3, 0x1b6a

    .line 617
    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountTcp:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountTcp:I

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 620
    :goto_0
    new-instance p3, Lcom/tencent/liteav/network/TXCStreamUploader$2;

    const-string v0, "RTMPUpload"

    invoke-direct {p3, p0, v0, p2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader$2;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 704
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopPushTask()V
    .locals 3

    const-string v0, "TXCStreamUploader"

    const-string v1, "stop push task"

    .line 711
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 714
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeStopPush(J)V

    .line 715
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryResetRetryCount()V
    .locals 6

    .line 457
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    sub-long/2addr v0, v4

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v4, v4, Lcom/tencent/liteav/network/p;->e:I

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v5, v5, Lcom/tencent/liteav/network/p;->f:I

    add-int/lit8 v5, v5, 0xd

    mul-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 460
    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    const-string v0, "TXCStreamUploader"

    const-string v1, "reset retry count"

    .line 461
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getConfusionIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "."

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 302
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A.B."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getUploadStats()Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 594
    iget-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    iput-wide v2, v1, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->channelType:J

    .line 596
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFetchDone(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/network/a;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "TXCStreamUploader"

    if-ne p1, v0, :cond_1

    const-string p1, "onFetchDone: Network connection failed. Invalid push url!"

    .line 264
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x521

    const-string p2, "Network connection failed. Invalid push url!"

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 269
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFetchDone: connect success, ip count = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 272
    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 277
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    move-object v1, p2

    move p2, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/a;

    if-eqz v2, :cond_3

    .line 278
    iget-boolean v3, v2, Lcom/tencent/liteav/network/a;->c:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    if-eqz v2, :cond_2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->getConfusionIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/16 p1, 0x1b68

    int-to-long v2, p2

    .line 286
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 p1, 0x1b6b

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    goto :goto_2

    .line 289
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFetchDone: code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ip count = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_2
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$b;

    move-result-object p1

    .line 294
    iget-object p2, p1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/tencent/liteav/network/TXCStreamUploader$b;->b:Z

    invoke-direct {p0, p2, p1, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->postReconnectMsg(Ljava/lang/String;ZI)V

    return-void
.end method

.method public pushAAC([BJ)V
    .locals 7

    .line 476
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->tryResetRetryCount()V

    .line 477
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mAudioMuted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushAAC(J[BJ)V

    .line 483
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 14

    .line 492
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->tryResetRetryCount()V

    .line 493
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    .line 495
    iget-object v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v1, v1

    if-lez v1, :cond_3

    .line 496
    iget-wide v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-object v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    iget v6, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    iget-wide v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->frameIndex:J

    iget-wide v9, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v11, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v13, p1

    :goto_0
    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushNAL(J[BIJJJZ)V

    goto :goto_1

    .line 500
    :cond_1
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    if-nez v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendSeiMessage(I[B)V
    .locals 2

    .line 583
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSendSeiMessage(JI[B)V

    return-void
.end method

.method public setAudioInfo(II)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    if-eqz v0, :cond_0

    .line 231
    iput p2, v0, Lcom/tencent/liteav/network/p;->c:I

    .line 232
    iput p1, v0, Lcom/tencent/liteav/network/p;->d:I

    :cond_0
    return-void
.end method

.method public setAudioMute(Z)V
    .locals 5

    .line 514
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mAudioMuted:Z

    .line 516
    iget-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz p1, :cond_2

    .line 517
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 518
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget-boolean p1, p1, Lcom/tencent/liteav/network/p;->j:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 519
    :goto_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetSendStrategy(JIZ)V

    .line 522
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDropEanble(Z)V
    .locals 3

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCStreamUploader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeEnableDrop(JZ)V

    .line 534
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMetaData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mMetaData:Ljava/util/HashMap;

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    if-eqz v0, :cond_0

    .line 244
    iput p1, v0, Lcom/tencent/liteav/network/p;->a:I

    :cond_0
    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRetryInterval(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    if-eqz v0, :cond_0

    .line 225
    iput p1, v0, Lcom/tencent/liteav/network/p;->f:I

    :cond_0
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    if-eqz v0, :cond_0

    .line 238
    iput p1, v0, Lcom/tencent/liteav/network/p;->e:I

    :cond_0
    return-void
.end method

.method public setSendStrategy(ZZ)V
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iput-boolean p1, v0, Lcom/tencent/liteav/network/p;->j:Z

    .line 562
    iput-boolean p2, v0, Lcom/tencent/liteav/network/p;->k:Z

    .line 564
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/s;->a(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 566
    iget-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v0

    .line 567
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-nez v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move p1, v0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 575
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetSendStrategy(JIZ)V

    .line 577
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x1b6c

    int-to-long v0, p1

    .line 579
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 577
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVideoDropParams(ZII)V
    .locals 7

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop params wait i frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " max video count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max video cache time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCStreamUploader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iput-boolean p1, v1, Lcom/tencent/liteav/network/p;->i:Z

    .line 547
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iput p2, p1, Lcom/tencent/liteav/network/p;->g:I

    .line 548
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iput p3, p1, Lcom/tencent/liteav/network/p;->h:I

    .line 549
    iget-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    .line 550
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget-boolean v4, p1, Lcom/tencent/liteav/network/p;->i:Z

    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v5, p1, Lcom/tencent/liteav/network/p;->g:I

    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/p;

    iget v6, p1, Lcom/tencent/liteav/network/p;->h:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetVideoDropParams(JZII)V

    .line 552
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

.method public start(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5

    .line 330
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    return-object p1

    .line 333
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    const-wide/16 v0, 0x0

    .line 334
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    const/4 v2, 0x0

    .line 335
    iput v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 337
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 338
    iput p3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    .line 340
    iput v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountQuic:I

    .line 341
    iput v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectCountTcp:I

    .line 343
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    .line 344
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyParam:Lcom/tencent/liteav/network/TXCStreamUploader$a;

    invoke-virtual {v3}, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a()V

    .line 345
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 346
    iput v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyIPIndex:I

    .line 347
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    .line 348
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpMsgRecvThreadInstance:J

    const/16 v3, 0x1b68

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v3, 0x1b69

    .line 351
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    const/16 v3, 0x1b6a

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/s;->a()V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start push with url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable nearest ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v1, "yes"

    goto :goto_0

    :cond_1
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCStreamUploader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 p1, -0x52d

    .line 359
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    .line 360
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    return-object p1

    .line 363
    :cond_2
    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    .line 365
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p2, :cond_3

    .line 366
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "RTMP_PUSH"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 367
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 370
    :cond_3
    new-instance p2, Lcom/tencent/liteav/network/TXCStreamUploader$1;

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader$1;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    .line 395
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->parseProxyInfo(Ljava/lang/String;)V

    .line 397
    iget-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz p2, :cond_4

    .line 398
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 399
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeCacheJNIParams()V

    .line 400
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    goto :goto_1

    .line 403
    :cond_4
    iget-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v0

    if-eq p2, v0, :cond_5

    const-string p2, "fetching nearest ip list"

    .line 404
    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 406
    iget-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/d;

    invoke-virtual {p2, p1, p3}, Lcom/tencent/liteav/network/d;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 408
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    .line 413
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    iget-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    return-object p1
.end method

.method public stop()V
    .locals 3

    .line 422
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    const-string v0, "TXCStreamUploader"

    const-string v1, "stop push"

    .line 427
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyInstance:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeRtmpProxyLeaveRoom(J)V

    .line 432
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_1
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeStopPush(J)V

    .line 437
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 441
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 445
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    .line 448
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpProxyEnable:Z

    if-eqz v0, :cond_4

    .line 449
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeReleaseJNIParams()V

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/s;->c()V

    .line 453
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploadQualityReport:Lcom/tencent/liteav/network/s;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/s;->a()V

    return-void

    :catchall_1
    move-exception v1

    .line 437
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
