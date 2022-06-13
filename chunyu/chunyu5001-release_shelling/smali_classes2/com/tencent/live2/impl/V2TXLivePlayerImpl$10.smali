.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->stopPlay()I
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

    .line 332
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    sget-object v1, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$b;)Lcom/tencent/live2/impl/a$b;

    .line 337
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->stopPlay()I

    .line 338
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$102(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;

    :cond_0
    return-void
.end method
