.class Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;
.super Ljava/lang/Object;
.source "HuaweiAudioKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->initialize(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/earmonitor/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/earmonitor/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/tencent/liteav/audio/impl/earmonitor/a;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->a:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$000(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    move-result-object v0

    const-string v1, "HuaweiAudioKit"

    if-eqz v0, :cond_0

    const-string v0, "it\'s already initialized."

    .line 43
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "start initialize audio kit"

    .line 47
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$102(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Z)Z

    .line 49
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->a:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$202(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/tencent/liteav/audio/impl/earmonitor/a;)Lcom/tencent/liteav/audio/impl/earmonitor/a;

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    new-instance v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-direct {v1, v2, v3}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;-><init>(Landroid/content/Context;Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;)V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$002(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    .line 51
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;->c:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$000(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->initialize()V

    return-void
.end method
