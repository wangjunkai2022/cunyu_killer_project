.class public Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;
.super Ljava/lang/Object;
.source "TXCAudioNativeInterface.java"


# static fields
.field private static final OUTPUT_MODE_HEADSET:I = 0x0

.field private static final OUTPUT_MODE_SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioNativeInterface"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioRouteManager:Lcom/tencent/liteav/audio/impl/route/e;

.field private mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

.field private final mContext:Landroid/content/Context;

.field private mDeviceList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    .line 31
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/audio/impl/route/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioRouteManager:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "AudioNativeInterface"

    const-string v1, "AudioDeviceInterface SDK_INT: %d, MANUFACTURE: %s, MODEL: %s"

    .line 33
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static LogTraceEntry(Ljava/lang/String;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->getTraceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioNativeInterface"

    .line 236
    invoke-static {v0, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogTraceExit()V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->getTraceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    .line 242
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->notifyPlayoutDeviceChanged(Ljava/lang/String;)V

    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private static getTraceInfo()Ljava/lang/String;
    .locals 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    .line 227
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    .line 228
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    .line 229
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nativeValueToAudioIOScene(I)Lcom/tencent/liteav/audio/impl/route/a$a;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 253
    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->b:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->c:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->d:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->e:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->f:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    if-ltz p1, :cond_0

    .line 261
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 262
    aget-object p1, v0, p1

    return-object p1

    .line 264
    :cond_0
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    return-object p1
.end method

.method private notifyPlayoutDeviceChanged(Ljava/lang/String;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE_EARPHONE"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "DEVICE_SPEAKERPHONE"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "DEVICE_WIREDHEADSET"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "DEVICE_BLUETOOTHHEADSET"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 283
    :goto_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetPlayoutDevice(I)V

    return-void
.end method

.method private updateVolumeTypeForMedia()V
    .locals 3

    const-string v0, ""

    .line 190
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 196
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVolumeTypeForMedia failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/f;->d()V

    .line 204
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private updateVolumeTypeForVoIP(Lcom/tencent/liteav/audio/impl/route/a$a;)V
    .locals 1

    const-string v0, ""

    .line 182
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/a;->a(Lcom/tencent/liteav/audio/impl/route/a$a;)I

    move-result p1

    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/route/f;->a(I)V

    .line 185
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/f;->d()V

    .line 186
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private waitAMomentIfInPhoneCall()V
    .locals 4

    .line 208
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting.  mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioNativeInterface"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    .line 217
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initAudioRouteManager()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AudioNativeInterface"

    const-string v1, "initAudioManager, TXCAudioSession create"

    .line 43
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/f;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioRouteManager:Lcom/tencent/liteav/audio/impl/route/e;

    new-instance v3, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;-><init>(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/route/f;-><init>(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/f$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    const-string v1, "DEVICE_EARPHONE;DEVICE_SPEAKERPHONE;DEVICE_BLUETOOTHHEADSET;DEVICE_WIREDHEADSET;"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/f;->a(Ljava/lang/String;)I

    return-void
.end method

.method public notifyAudioIOSceneChanged(II)V
    .locals 4

    .line 84
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->nativeValueToAudioIOScene(I)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object p1

    .line 85
    invoke-direct {p0, p2}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->nativeValueToAudioIOScene(I)Lcom/tencent/liteav/audio/impl/route/a$a;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "AudioNativeInterface"

    const-string v3, "notify audio io scene changed, %s -> %s"

    .line 86
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/a$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/f;->e()V

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioRouteManager:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/a$a;)V

    .line 95
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-eq p2, p1, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->waitAMomentIfInPhoneCall()V

    .line 99
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    const-string p1, "setMicrophoneMute false when ioscene changed"

    .line 101
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/liteav/audio/impl/route/a$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->updateVolumeTypeForMedia()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p2}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->updateVolumeTypeForVoIP(Lcom/tencent/liteav/audio/impl/route/a$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAudioOutputMode(I)I
    .locals 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXCAudioSession SetAudioOutputMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_9

    .line 118
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    move p1, v1

    :goto_0
    move v0, p1

    move p1, v1

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    if-nez v0, :cond_2

    .line 124
    aget-object v3, v3, p1

    const-string v4, "DEVICE_WIREDHEADSET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/audio/impl/route/f;->b(Ljava/lang/String;)V

    move v0, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 130
    :goto_2
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_4

    if-nez v0, :cond_4

    .line 131
    aget-object v3, v3, p1

    const-string v4, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/audio/impl/route/f;->b(Ljava/lang/String;)V

    move v0, v2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v1

    .line 137
    :goto_3
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mDeviceList:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_6

    if-nez v0, :cond_6

    .line 138
    aget-object v3, v3, p1

    const-string v4, "DEVICE_EARPHONE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/audio/impl/route/f;->b(Ljava/lang/String;)V

    move v0, v2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    return v1

    :cond_7
    move p1, v0

    goto :goto_0

    :cond_8
    :goto_4
    return v0

    :cond_9
    if-ne v2, p1, :cond_b

    .line 145
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-nez p1, :cond_a

    return v0

    :cond_a
    const-string v0, "DEVICE_SPEAKERPHONE"

    .line 149
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/impl/route/f;->b(Ljava/lang/String;)V

    return v1

    :cond_b
    return v0
.end method

.method public startService(Ljava/lang/String;)I
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " deviceConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/route/f;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public stopService()I
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioNativeInterface"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/f;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public uninitAudioRouteManager()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mContext:Landroid/content/Context;

    const-string v1, "AudioNativeInterface"

    if-eqz v0, :cond_0

    const-string v0, "uninitTXCAudioManager , stopService"

    .line 170
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/f;->c()I

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/f;->b()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->mAudioSession:Lcom/tencent/liteav/audio/impl/route/f;

    goto :goto_0

    :cond_0
    const-string v0, "uninitTXCAudioManager , context null"

    .line 177
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
