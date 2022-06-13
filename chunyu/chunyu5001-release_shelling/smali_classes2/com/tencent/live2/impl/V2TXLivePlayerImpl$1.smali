.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$observer:Lcom/tencent/live2/V2TXLivePlayerObserver;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayerObserver;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-object p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->val$observer:Lcom/tencent/live2/V2TXLivePlayerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->val$observer:Lcom/tencent/live2/V2TXLivePlayerObserver;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$002(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayerObserver;)Lcom/tencent/live2/V2TXLivePlayerObserver;

    .line 144
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;->val$observer:Lcom/tencent/live2/V2TXLivePlayerObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    :cond_0
    return-void
.end method
