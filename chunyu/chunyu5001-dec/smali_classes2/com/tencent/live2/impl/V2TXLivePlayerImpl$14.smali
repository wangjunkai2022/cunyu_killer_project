.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeVideo()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1402(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z

    .line 409
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    :cond_0
    return-void
.end method
