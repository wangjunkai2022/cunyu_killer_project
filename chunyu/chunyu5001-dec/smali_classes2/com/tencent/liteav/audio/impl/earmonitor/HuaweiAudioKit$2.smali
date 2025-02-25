.class Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;
.super Ljava/lang/Object;
.source "HuaweiAudioKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->uninitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HuaweiAudioKit"

    const-string v1, "uninitialize"

    .line 61
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$300(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$300(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->destroy()V

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$302(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$000(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$000(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->destroy()V

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$002(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$102(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Z)Z

    return-void
.end method
