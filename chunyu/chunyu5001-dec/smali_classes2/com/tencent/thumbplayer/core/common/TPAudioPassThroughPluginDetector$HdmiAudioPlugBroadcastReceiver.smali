.class Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector$HdmiAudioPlugBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HdmiAudioPlugBroadcastReceiver onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPAudioPassThroughPluginDetector"

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    move p1, v3

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdmiAudioPlugBroadcastReceiver audioPassThroughState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bPlugin:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughCapabilities;

    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughCapabilities;-><init>([II)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector;->access$100(Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughCapabilities;)V

    invoke-static {p1}, Lcom/tencent/thumbplayer/core/common/TPAudioPassThroughPluginDetector;->access$200(Z)V

    :cond_2
    return-void
.end method
