.class Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;
.super Ljava/lang/Object;
.source "HwAudioKit.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 49
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {p2}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$002(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "onServiceConnected"

    .line 52
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$000(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$102(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Z)Z

    const-string v0, "onServiceConnected, mIHwAudioEngine is not null"

    .line 55
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$200(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    .line 57
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$300(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.1"

    invoke-static {p1, v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$400(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {p1, p2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$500(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "onServiceDisconnected"

    .line 63
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$002(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    .line 65
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$102(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Z)Z

    .line 66
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;->this$0:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    invoke-static {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->access$200(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    return-void
.end method
