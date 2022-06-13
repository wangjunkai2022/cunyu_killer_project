.class Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;
.super Ljava/lang/Object;
.source "HwAudioKit.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;


# direct methods
.method constructor <init>(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$700(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$600(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 73
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$200(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "service binder died"

    .line 74
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$702(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
