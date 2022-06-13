.class Lcom/example/super_network_kit/WsManager$2$2;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_network_kit/WsManager$2;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/super_network_kit/WsManager$2;

.field final synthetic val$input:Lokio/ByteString;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/WsManager$2;Lokio/ByteString;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$2$2;->this$1:Lcom/example/super_network_kit/WsManager$2;

    iput-object p2, p0, Lcom/example/super_network_kit/WsManager$2$2;->val$input:Lokio/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$2$2;->this$1:Lcom/example/super_network_kit/WsManager$2;

    iget-object v0, v0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_network_kit/WsManager$2$2;->val$input:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lcom/example/super_network_kit/listener/WsStatusListener;->onMessage(Lokio/ByteString;)V

    return-void
.end method
