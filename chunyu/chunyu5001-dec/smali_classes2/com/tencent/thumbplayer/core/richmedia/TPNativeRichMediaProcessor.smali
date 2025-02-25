.class public Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;


# instance fields
.field private mNativeContext:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->mNativeContext:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLibraryLoader;->loadLibIfNeeded(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_nativeSetup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create native rich media:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to create rich media"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native _deselectFeatureAsync(I)I
.end method

.method private native _getCurrentPositionMsFeatureData(J[ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;)I
.end method

.method private native _getFeatures()[Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeature;
.end method

.method private native _nativeSetup()V
.end method

.method private native _prepareAsync()I
.end method

.method private native _release()V
.end method

.method private native _reset()I
.end method

.method private native _seek(J)I
.end method

.method private native _selectFeatureAsync(ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaRequestExtraInfo;)I
.end method

.method private native _setInnerProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V
.end method

.method private native _setPlaybackRate(F)I
.end method

.method private native _setProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessorCallback;)V
.end method

.method private native _setRichMediaSource(Ljava/lang/String;)I
.end method


# virtual methods
.method public deselectFeatureAsync(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_deselectFeatureAsync(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xf424c

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deSelectAsync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public getCurrentPositionMsFeatureData(J[I)Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_getCurrentPositionMsFeatureData(J[ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const p2, 0xf424c

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentTimeContent:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFeatures()[Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeature;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_getFeatures()[Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeature;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeature;

    return-object v0
.end method

.method public prepareAsync()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_prepareAsync()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAsync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_reset()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public seek(J)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_seek(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0xf424c

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public selectFeatureAsync(ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaRequestExtraInfo;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_selectFeatureAsync(ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaRequestExtraInfo;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0xf424c

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectAsync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public setInnerProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_setInnerProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_setPlaybackRate(F)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xf424c

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method

.method public setProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessorCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_setProcessorCallback(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRichMediaSource(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaProcessor;->_setRichMediaSource(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xf424c

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRichMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    return-void
.end method
