.class Lcom/example/super_network_kit/WsManager$2$4;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_network_kit/WsManager$2;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/super_network_kit/WsManager$2;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/WsManager$2;ILjava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$2$4;->this$1:Lcom/example/super_network_kit/WsManager$2;

    iput p2, p0, Lcom/example/super_network_kit/WsManager$2$4;->val$code:I

    iput-object p3, p0, Lcom/example/super_network_kit/WsManager$2$4;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$2$4;->this$1:Lcom/example/super_network_kit/WsManager$2;

    iget-object v0, v0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/example/super_network_kit/WsManager$2$4;->val$code:I

    iget-object v2, p0, Lcom/example/super_network_kit/WsManager$2$4;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onClosing(ILjava/lang/String;)V

    return-void
.end method
