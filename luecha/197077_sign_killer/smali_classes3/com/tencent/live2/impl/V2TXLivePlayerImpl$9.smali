.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->startPlay(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$mode:Lcom/tencent/live2/impl/a$c;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$c;Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-object p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->val$mode:Lcom/tencent/live2/impl/a$c;

    iput-object p3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->isPlaying()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->stopPlay()I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1000(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-object v3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->val$mode:Lcom/tencent/live2/impl/a$c;

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/l;->a(Landroid/content/Context;Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/impl/a$c;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$102(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;

    .line 319
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    .line 321
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->startPlay(Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    sget-object v1, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$b;)Lcom/tencent/live2/impl/a$b;

    return-void
.end method
