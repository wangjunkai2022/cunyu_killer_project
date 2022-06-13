.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-object p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "setFramework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "setSurface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "enableRecvSEIMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "setSurfaceSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_4
    const-string v1, "setPlayURLType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v1, "setLEBEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$400(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$value:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$302(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$a;)Lcom/tencent/live2/impl/a$a;

    goto :goto_2

    .line 171
    :cond_3
    instance-of v1, v0, Lcom/tencent/live2/impl/a$a;

    if-eqz v1, :cond_6

    .line 172
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    check-cast v0, Lcom/tencent/live2/impl/a$a;

    invoke-static {v1, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$302(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$a;)Lcom/tencent/live2/impl/a$a;

    goto :goto_2

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$value:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/Surface;)Landroid/view/Surface;

    goto :goto_2

    .line 162
    :cond_5
    instance-of v1, v0, Landroid/view/Surface;

    if-eqz v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    check-cast v0, Landroid/view/Surface;

    invoke-static {v1, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 183
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c787eb4 -> :sswitch_5
        0xb57f9b3 -> :sswitch_4
        0x1c9cdc8c -> :sswitch_3
        0x2eec3e99 -> :sswitch_2
        0x42c875eb -> :sswitch_1
        0x7c4f23bc -> :sswitch_0
    .end sparse-switch
.end method
