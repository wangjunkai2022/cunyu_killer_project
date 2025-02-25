.class Lcom/example/super_player_kit/SuperPlayerkit$2$1;
.super Ljava/lang/Object;
.source "SuperPlayerkit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/SuperPlayerkit$2;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/super_player_kit/SuperPlayerkit$2;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/SuperPlayerkit$2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit$2$1;->this$1:Lcom/example/super_player_kit/SuperPlayerkit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit$2$1;->this$1:Lcom/example/super_player_kit/SuperPlayerkit$2;

    iget-object v0, v0, Lcom/example/super_player_kit/SuperPlayerkit$2;->this$0:Lcom/example/super_player_kit/SuperPlayerkit;

    invoke-static {v0}, Lcom/example/super_player_kit/SuperPlayerkit;->access$000(Lcom/example/super_player_kit/SuperPlayerkit;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit$2$1;->this$1:Lcom/example/super_player_kit/SuperPlayerkit$2;

    iget-object v1, v1, Lcom/example/super_player_kit/SuperPlayerkit$2;->val$webpPlayer:Lcom/example/super_player_kit/WebpPlayer;

    iget v1, v1, Lcom/example/super_player_kit/WebpPlayer;->tagID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "webpComplete"

    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
