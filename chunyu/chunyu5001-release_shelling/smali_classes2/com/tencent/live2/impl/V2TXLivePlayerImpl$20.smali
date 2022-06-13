.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->showDebugView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-boolean p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->val$enable:Z

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$2202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z

    .line 512
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->showDebugView(Z)V

    :cond_0
    return-void
.end method
