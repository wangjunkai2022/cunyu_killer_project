.class public Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;
.super Ljava/lang/Object;
.source "TPDownloadProxy.java"

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPDownloadProxy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStoragePath:Ljava/lang/String;

.field private mIsInit:Z

.field private mServiceType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mIsInit:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mContext:Landroid/content/Context;

    .line 39
    iput p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    return-void
.end method

.method private getCellularNetwork(Landroid/content/Context;)V
    .locals 5

    const-string v0, "tpdlnative"

    const-string v1, "TPDownloadProxy"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "cellular_network, context is null, can not set interface 4g"

    .line 44
    invoke-static {v1, v2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 48
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xc

    .line 49
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 50
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const-string v4, "connectivity"

    .line 51
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1

    const-string p1, "cellular_network, connectivityManager is null, can not set interface 4g"

    .line 53
    invoke-static {v1, v2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy$1;

    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy$1;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;)V

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkResourceStatus(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 528
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->checkResourceStatus(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 532
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkResourceStatus failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public deinit()I
    .locals 4

    .line 158
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mIsInit:Z

    .line 161
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    iget v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->deInitService(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TPDownloadProxy"

    const-string v3, "tpdlnative"

    invoke-static {v2, v0, v3, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getClipPlayUrl(III)Ljava/lang/String;
    .locals 2

    .line 251
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getClipPlayUrl(III)[B

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    .line 255
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->startDownload(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 258
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClipPlayUrl failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getNativeInfo(I)Ljava/lang/String;
    .locals 3

    .line 514
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getNativeInfo(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeInfo failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayErrorCodeStr(I)Ljava/lang/String;
    .locals 3

    .line 267
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getErrorCodeStr(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayErrorCodeStr failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getPlayUrl(II)Ljava/lang/String;
    .locals 3

    .line 235
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getClipPlayUrl(III)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 239
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->startDownload(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayUrl failed, error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v0, p2, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getResourceSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 541
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getResourceSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResourceSize failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxy"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;)I
    .locals 7

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mIsInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "TPDownloadProxy"

    const-string p2, "tpdlnative"

    const-string v0, "download already init"

    .line 81
    invoke-static {p1, v1, p2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    monitor-exit p0

    return v1

    .line 85
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setAppContext(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_9

    .line 89
    :try_start_2
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_version_name"

    .line 90
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getAppVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getPlatform()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "platform"

    .line 94
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getPlatform()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "guid"

    .line 98
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    :try_start_3
    const-string v2, "download"

    .line 105
    invoke-static {p1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLFileSystem;->getProperCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    const-string v3, "TPDownloadProxy"

    const-string v4, "tpdlnative"

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init get cache dir failed, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v4, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    :goto_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->initHandler()V

    .line 116
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getDataDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 117
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    iget-object v4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getConfigStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->initService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getDataDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 120
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getDataDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    .line 122
    :cond_6
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getDataDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->getConfigStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->initService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 126
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance v2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy$2;

    invoke-direct {v2, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy$2;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;)V

    if-eqz p1, :cond_7

    .line 142
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    if-nez p2, :cond_8

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mIsInit:Z

    .line 147
    :cond_8
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mContext:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    monitor-exit p0

    return p2

    :catchall_1
    move-exception p1

    :try_start_5
    const-string p2, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    const/4 p1, -0x1

    .line 153
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pauseDownload(I)I
    .locals 4

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    return v0

    .line 299
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->pauseDownload(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownload failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TPDownloadProxy"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public pushEvent(I)V
    .locals 5

    const-string v0, "tpdlnative"

    const-string v1, "TPDownloadProxy"

    .line 553
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 555
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->pushEvent(I)V

    const/16 v3, 0x9

    if-ne v3, p1, :cond_0

    const-string p1, "cellular_network, update net interface info"

    .line 557
    invoke-static {v1, v2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->getCellularNetwork(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cellular_network pushEvent failed, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeStorageCache(Ljava/lang/String;)I
    .locals 4

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 474
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->deleteCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCache failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TPDownloadProxy"

    const-string v3, "tpdlnative"

    invoke-static {v2, v0, v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public resumeDownload(I)I
    .locals 4

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    return v0

    .line 315
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->resumeDownload(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownload failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TPDownloadProxy"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public setClipInfo(IILjava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;)Z
    .locals 10

    .line 217
    invoke-virtual {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getDlType()I

    move-result v0

    .line 218
    invoke-virtual {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->isOffline()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x12c

    :cond_0
    move v5, v0

    .line 221
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 223
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getCdnUrls()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getSavaPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getExtraJsonInfo()Ljava/lang/String;

    move-result-object v8

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setClipInfo(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    move v9, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setClipInfo failed, error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TPDownloadProxy"

    const-string p3, "tpdlnative"

    invoke-static {p2, v9, p3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v9
.end method

.method public setLogListener(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyLogListener;)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->setLogListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyLogListener;)V

    return-void
.end method

.method public setMaxStorageSizeMB(J)V
    .locals 2

    .line 459
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setMaxStorageSizeMB(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxStorageSizeMB failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxy"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayState(II)V
    .locals 8

    if-gtz p1, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setPlayerState(II)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 576
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getCurrentPlayOffset()J

    move-result-wide v0

    .line 577
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int p2, v2

    .line 578
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getPlayerBufferLength()J

    move-result-wide v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 579
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getAdvRemainTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    long-to-int v3, v6

    .line 580
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v4

    const-string v5, "taskinfo_play_offset"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v5, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->updateTaskInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->updatePlayerPlayMsg(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayState failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxy"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const-string v0, "proxy_config"

    const-string v1, "carrier_pesudo_state"

    const-string v2, "carrier_pesudo_code"

    const-string v3, "qq_is_vip"

    const-string v4, "guid"

    const-string v5, "platform"

    const-string v6, "app_version_name"

    .line 487
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 489
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 490
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v6, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 496
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "1"

    goto :goto_0

    :cond_3
    const-string p2, "0"

    :goto_0
    invoke-virtual {p1, v3, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 498
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 500
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 502
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_7
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserData failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPDownloadProxy"

    const-string v1, "tpdlnative"

    invoke-static {v0, p2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public startClipOfflineDownload(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)I
    .locals 4

    .line 400
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    .line 403
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {v2, v3, p1, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v1

    .line 404
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setOfflineDownloadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 406
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startClipOfflineDownload failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public startClipPlay(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)I
    .locals 4

    .line 202
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v1

    .line 205
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setPlayListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 207
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startClipPlay failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public startClipPreload(Ljava/lang/String;ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)I
    .locals 4

    .line 352
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xca

    .line 355
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {v2, v3, p1, v0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v1

    .line 356
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setPreLoadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 358
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startClipPreload failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public startOfflineDownload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)I
    .locals 10

    .line 383
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 385
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getDlType()I

    move-result v0

    add-int/lit8 v6, v0, 0x64

    .line 386
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget v2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipCount()I

    move-result v3

    invoke-virtual {v0, v2, p1, v6, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :try_start_1
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setOfflineDownloadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)V

    .line 388
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    .line 389
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipNo()I

    move-result v4

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getCdnUrls()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getSavaPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getExtraJsonInfo()Ljava/lang/String;

    move-result-object v9

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setClipInfo(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    const/4 p2, 0x0

    .line 391
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopOfflineDownload failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v1
.end method

.method public startPlay(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)I
    .locals 11

    .line 177
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getDlType()I

    move-result v0

    .line 179
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->isOffline()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x12c

    .line 183
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 185
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->isAdaptive()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    add-int/lit16 v0, v0, 0x190

    :cond_2
    move v7, v0

    .line 188
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipCount()I

    move-result v3

    invoke-virtual {v0, v1, p1, v7, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 190
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipNo()I

    move-result v5

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getCdnUrls()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getSavaPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getExtraJsonInfo()Ljava/lang/String;

    move-result-object v10

    move v4, v0

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setClipInfo(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setPlayListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move v2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    const/4 p2, 0x0

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPlay failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v2
.end method

.method public startPreload(Ljava/lang/String;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)I
    .locals 11

    const-string v0, "dl_param_preferred_resolution"

    .line 328
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 330
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getDlType()I

    move-result v1

    add-int/lit16 v7, v1, 0xc8

    .line 331
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipCount()I

    move-result v4

    invoke-virtual {v1, v3, p1, v7, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->createDownloadTask(ILjava/lang/String;II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->setPreLoadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)V

    .line 333
    invoke-virtual {p2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getExtInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v2, 0x0

    .line 335
    instance-of v4, p3, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 336
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 338
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v0, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->updateTaskInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getKeyid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 340
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getClipNo()I

    move-result v5

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getCdnUrls()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getSavaPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadParam;->getExtraJsonInfo()Ljava/lang/String;

    move-result-object v10

    move v4, v1

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setClipInfo(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->startDownload(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    const/4 p2, 0x0

    .line 343
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPreload failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v2
.end method

.method public startTask(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->startDownload(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTask failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopOfflineDownload(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->stopDownload(I)I

    .line 421
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->removeOfflineDownloadListener(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopOfflineDownload failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopPlay(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->stopDownload(I)I

    .line 286
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->removePlayListener(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopPreload(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->stopDownload(I)I

    .line 373
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->removePreLoadListener(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreload failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateStoragePath(Ljava/lang/String;)V
    .locals 3

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mCurrentStoragePath:Ljava/lang/String;

    .line 451
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    iget v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;->mServiceType:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->updateStoragePath(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStoragePath failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TPDownloadProxy"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateTaskInfo(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->updateTaskInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 599
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateTaskInfo failed, error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TPDownloadProxy"

    const-string v0, "tpdlnative"

    invoke-static {p3, p2, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
