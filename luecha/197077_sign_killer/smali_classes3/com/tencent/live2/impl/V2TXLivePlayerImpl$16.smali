.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setCacheParams(FF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$maxTime:F

.field final synthetic val$minTime:F


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;FF)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$maxTime:F

    iput p3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$minTime:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$maxTime:F

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1602(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;F)F

    .line 447
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$minTime:F

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1702(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;F)F

    .line 448
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$minTime:F

    iget v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;->val$maxTime:F

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    :cond_0
    return-void
.end method
