.class final Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector;->initHandleMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector;->access$000()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector;->access$000()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage DISPLAY_CHANGE, mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/common/TPScreenRefreshRateDetector;->access$200(F)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
