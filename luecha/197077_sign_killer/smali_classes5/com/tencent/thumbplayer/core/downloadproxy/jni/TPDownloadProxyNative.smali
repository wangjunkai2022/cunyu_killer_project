.class public Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;
.super Ljava/lang/Object;
.source "TPDownloadProxyNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$SingletonHolder;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPDownloadProxyNative"

.field private static appContext:Landroid/content/Context;

.field private static isLoadDownloadProxySucceed:Z


# instance fields
.field private mLibLoader:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;
    .locals 1

    .line 60
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$SingletonHolder;->access$100()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    return-object v0
.end method

.method private static nativeIntMessageCallback(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 69
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 70
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->handleIntCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static nativeLogCallback(I[BI[B[B)V
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->w(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 88
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 90
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->d(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static nativeMessageCallback(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 64
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->handleCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static nativeStringMessageCallback(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 76
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 77
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->handleStringCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public native checkResourceStatus(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native createDownloadTask(ILjava/lang/String;II)I
.end method

.method public native deInitService(I)I
.end method

.method public native deleteCache(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 145
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public native getClipPlayUrl(III)[B
.end method

.method public native getErrorCodeStr(I)[B
.end method

.method public native getHLSOfflineExttag(Ljava/lang/String;Ljava/lang/String;IJ)[B
.end method

.method public native getNativeInfo(I)[B
.end method

.method public getNativeVersion()Ljava/lang/String;
    .locals 5

    .line 126
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getVersion()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "1.8.0.00751"

    :goto_0
    const/4 v1, 0x0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get native version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TPDownloadProxyNative"

    const-string v4, "tpdlnative"

    invoke-static {v3, v1, v4, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public native getResourceSize(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native getVersion()[B
.end method

.method public native initService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isNativeLoaded()Z
    .locals 7

    const-string v0, "DownloadProxy"

    const-string v1, "tpdlnative"

    const-string v2, "TPDownloadProxyNative"

    .line 97
    sget-boolean v3, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 99
    :try_start_0
    iget-object v4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->mLibLoader:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->mLibLoader:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getNativeVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;->loadLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "third module so load ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    if-eqz v5, :cond_0

    const-string v5, "0"

    goto :goto_0

    :cond_0
    const-string v5, "1"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 105
    sput-boolean v3, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "third module so load failed, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    :goto_1
    :try_start_1
    sget-boolean v4, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    if-nez v4, :cond_2

    .line 112
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    const-string v0, "system so load success!"

    .line 114
    invoke-static {v2, v3, v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 117
    sput-boolean v3, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system so load failed, error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    return v0
.end method

.method public native isNativeReadyForWork()Z
.end method

.method public isReadyForWork()Z
    .locals 1

    .line 149
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isLoadDownloadProxySucceed:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isNativeReadyForWork()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public native pauseDownload(I)I
.end method

.method public native pushEvent(I)V
.end method

.method public native resumeDownload(I)I
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->appContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public native setClipInfo(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLibLoader(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;)V
    .locals 4

    const-string v0, "TPDownloadProxyNative"

    const/4 v1, 0x0

    const-string v2, "tpdlnative"

    const-string v3, "set third module so loader!!!"

    .line 134
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->mLibLoader:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyNativeLibLoader;

    return-void
.end method

.method public native setMaxStorageSizeMB(IJ)I
.end method

.method public native setPlayerState(II)V
.end method

.method public native setUserData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native startDownload(I)I
.end method

.method public native stopAllDownload(I)I
.end method

.method public native stopDownload(I)I
.end method

.method public native updatePlayerPlayMsg(IIII)V
.end method

.method public native updateStoragePath(ILjava/lang/String;)I
.end method

.method public native updateTaskInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native verifyOfflineCacheSync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
.end method
