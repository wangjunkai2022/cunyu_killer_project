.class public Lcom/tencent/thumbplayer/api/TPPlayerMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/api/TPPlayerMgr$IntegerProperty;,
        Lcom/tencent/thumbplayer/api/TPPlayerMgr$BooleanProperty;,
        Lcom/tencent/thumbplayer/api/TPPlayerMgr$EventId;,
        Lcom/tencent/thumbplayer/api/TPPlayerMgr$OnLogListener;
    }
.end annotation


# static fields
.field public static final BEACON_LOG_HOST_KEY:Ljava/lang/String; = "beacon_log_host"

.field public static final BEACON_POLICY_HOST_KEY:Ljava/lang/String; = "beacon_policy_host"

.field public static final EVENT_ID_APP_ENTER_BACKGROUND:I = 0x186a1

.field public static final EVENT_ID_APP_ENTER_FOREGROUND:I = 0x186a2

.field public static final INVALID_SUGGEST_BITRATE:I = -0x1

.field public static final PLYAER_HOST_KEY:Ljava/lang/String; = "player_host_config"

.field public static final PROPERTY_MEDIA_DRM_REUSE_BEFORE_INIT_SDK:Ljava/lang/String; = "PROPERTY_MediaDrmReuse"

.field public static final PROPERTY_VIDEO_MEDIACODEC_CO_EXIST_MAX_CNT:Ljava/lang/String; = "PROPERTY_VideoMediaCodecCoexistMaxCnt"

.field public static final PROXY_HOST_KEY:Ljava/lang/String; = "httpproxy_config"

.field private static final TAG:Ljava/lang/String; = "TPThumbPlayer[TPPlayerMgr.java]"

.field public static final TP_DOWNLOAD_PROXY_MODULE_NAME:Ljava/lang/String; = "DownloadProxy"

.field public static final TP_PLAYERCORE_MODULE_NAME:Ljava/lang/String; = "TPCore"

.field private static mAppContext:Landroid/content/Context;

.field private static mIsInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initInAsyncThread()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getLibVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mIsInit:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DownloadProxy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->getNativeLibVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "TPCore"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPNativeLibraryLoader;->getLibVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "player not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOfflineRecordDurationMs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->getRecordDuration(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getOfflineRecordVinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->checkVideoStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PROPERTY_MediaDrmReuse"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getMediaDrmReuseEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getPropertyInteger(Ljava/lang/String;)I
    .locals 1

    const-string v0, "PROPERTY_VideoMediaCodecCoexistMaxCnt"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getVideoMediaCodecCoexistMaxCnt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSuggestedBitrate()I
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/d/g;->a()Lcom/tencent/thumbplayer/d/g;

    move-result-object v0

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyServiceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/d/g;->a(I)Lcom/tencent/thumbplayer/d/b;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/b;->a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->getNativeInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/b;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getThumbPlayerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.27.0.1123"

    return-object v0
.end method

.method private static initAsyncWithWait()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/o;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/tencent/thumbplayer/api/TPPlayerMgr$2;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static initAsyncWithoutWait()V
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/o;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/tencent/thumbplayer/api/TPPlayerMgr$3;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initInAsyncThread()V
    .locals 5

    new-instance v0, Lcom/tencent/thumbplayer/utils/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->a()V

    sget-object v1, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/thumbplayer/b/a/b;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init SDK, initAsyncWithWait  TPBeaconReportWrapper init, times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TPThumbPlayer[TPPlayerMgr.java]"

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/thumbplayer/adapter/a/b/a;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SDK, initAsyncWithWait  TPDrmCapability init, times: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->e()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SDK, initAsyncWithWait all times: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->d()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mIsInit:Z

    const-string v1, "TPThumbPlayer[TPPlayerMgr.java]"

    if-eqz v0, :cond_0

    const-string p0, "Init SDK, has init sdk"

    :goto_0
    invoke-static {v1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mIsInit:Z

    new-instance v0, Lcom/tencent/thumbplayer/utils/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->a()V

    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->preInitSync(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initAsyncWithWait()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initSync()V

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initAsyncWithoutWait()V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->b()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Init SDK, TPPlayer  wait initSync finish, times: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Init SDK, TPPlayer wait initSync InterruptedException, times: "

    goto :goto_1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Init SDK, TPPlayer wait initSync ExecutionException, times: "

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Init SDK, TPPlayer all times: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->d()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static initSync()V
    .locals 5

    const-string v0, "TPThumbPlayer[TPPlayerMgr.java]"

    new-instance v1, Lcom/tencent/thumbplayer/utils/d;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/utils/d;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/utils/d;->a()V

    :try_start_0
    sget-object v2, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLibraryLoader;->loadLibIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SDK, initSync so load times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/utils/d;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isProxyEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isUseP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->isReadyForPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThumbPlayerEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPNativeLibraryLoader;->isLibLoaded()Z

    move-result v0

    return v0
.end method

.method public static postEvent(IIILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/utils/f;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private static preInitSync(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/utils/d;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/d;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->a()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setGuid(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setPlatform(I)V

    new-instance p0, Lcom/tencent/thumbplayer/api/TPPlayerMgr$1;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/api/TPPlayerMgr$1;-><init>()V

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->setLogCallback(Lcom/tencent/thumbplayer/core/common/ITPNativeLogCallback;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Init SDK, preInitSync all times: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/d;->d()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TPThumbPlayer[TPPlayerMgr.java]"

    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDataReportEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set data report enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPThumbPlayer[TPPlayerMgr.java]"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setDataReportEnable(Z)V

    invoke-static {}, Lcom/tencent/thumbplayer/d/g;->a()Lcom/tencent/thumbplayer/d/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/thumbplayer/d/g;->a(Z)V

    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setDebugEnable(Z)V

    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->parseHostConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static setLibLoader(Lcom/tencent/thumbplayer/api/ITPModuleLoader;)V
    .locals 1

    sget-boolean v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->mIsInit:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr$4;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/api/TPPlayerMgr$4;-><init>(Lcom/tencent/thumbplayer/api/ITPModuleLoader;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLibraryLoader;->setLibLoader(Lcom/tencent/thumbplayer/core/common/ITPNativeLibraryExternalLoader;)V

    new-instance v0, Lcom/tencent/thumbplayer/api/TPPlayerMgr$5;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/api/TPPlayerMgr$5;-><init>(Lcom/tencent/thumbplayer/api/ITPModuleLoader;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->setNativeLibLoader(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "player has init"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnLogListener(Lcom/tencent/thumbplayer/api/TPPlayerMgr$OnLogListener;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->setOnLogListener(Lcom/tencent/thumbplayer/api/TPPlayerMgr$OnLogListener;)V

    return-void
.end method

.method public static setOutNetIP(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setOutNetIp(Ljava/lang/String;)V

    return-void
.end method

.method public static setPropertyBool(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PROPERTY_MediaDrmReuse"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setMediaDrmReuseEnable(Z)V

    :cond_0
    return-void
.end method

.method public static setPropertyInteger(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PROPERTY_VideoMediaCodecCoexistMaxCnt"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setVideoMediaCodecCoexistMaxCnt(I)V

    :cond_0
    return-void
.end method

.method public static setProxyEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    return-void
.end method

.method public static setProxyMaxStorageSizeMB(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProxyMaxStorageSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPThumbPlayer[TPPlayerMgr.java]"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setProxyMaxStorageSizeMB(J)V

    invoke-static {}, Lcom/tencent/thumbplayer/d/g;->a()Lcom/tencent/thumbplayer/d/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/thumbplayer/d/g;->a(J)V

    return-void
.end method

.method public static setProxyServiceType(I)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setProxyServiceType(I)V

    return-void
.end method

.method public static setTPProxyAdapter(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPProxyAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->setTPProxyAdapter(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPProxyAdapter;)V

    return-void
.end method

.method public static setUpcInfo(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setUserUpc(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setUserUpcState(I)V

    const v0, 0x186a3

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/tencent/thumbplayer/utils/f;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setUserUin(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setUserIsVip(Z)V

    return-void
.end method
