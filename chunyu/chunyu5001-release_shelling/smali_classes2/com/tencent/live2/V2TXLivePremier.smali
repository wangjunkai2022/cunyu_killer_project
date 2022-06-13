.class public Lcom/tencent/live2/V2TXLivePremier;
.super Ljava/lang/Object;
.source "V2TXLivePremier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/live2/V2TXLivePremier$a;,
        Lcom/tencent/live2/V2TXLivePremier$b;
    }
.end annotation


# static fields
.field private static sObserver:Lcom/tencent/live2/V2TXLivePremier$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/live2/V2TXLivePremier$b;
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/live2/V2TXLivePremier;->sObserver:Lcom/tencent/live2/V2TXLivePremier$b;

    return-object v0
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    invoke-static {p0}, Lcom/tencent/rtmp/TXLiveBase;->setGlobalEnv(Ljava/lang/String;)I

    return-void
.end method

.method public static setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/rtmp/TXLiveBase;->setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogConfig(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    iget-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableConsole:Z

    invoke-static {v0}, Lcom/tencent/rtmp/TXLiveBase;->setConsoleEnabled(Z)V

    .line 44
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    iget v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->logLevel:I

    invoke-static {v0}, Lcom/tencent/rtmp/TXLiveBase;->setLogLevel(I)V

    .line 45
    iget-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableLogFile:Z

    invoke-static {v0}, Lcom/tencent/liteav/basic/log/TXCLog;->setLogToFileEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->logPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/liteav/basic/log/TXCLog;->setLogDirPath(Ljava/lang/String;)V

    .line 47
    iget-boolean p0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableObserver:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 48
    new-instance p0, Lcom/tencent/live2/V2TXLivePremier$a;

    invoke-direct {p0, v0}, Lcom/tencent/live2/V2TXLivePremier$a;-><init>(Lcom/tencent/live2/V2TXLivePremier$1;)V

    invoke-static {p0}, Lcom/tencent/rtmp/TXLiveBase;->setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v0}, Lcom/tencent/rtmp/TXLiveBase;->setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V

    :goto_0
    return-void
.end method

.method public static setObserver(Lcom/tencent/live2/V2TXLivePremier$b;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/tencent/live2/V2TXLivePremier;->sObserver:Lcom/tencent/live2/V2TXLivePremier$b;

    return-void
.end method

.method public static setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
