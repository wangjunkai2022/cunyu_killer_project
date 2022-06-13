.class Lcom/example/super_player_kit/SuperPlayerkit$2;
.super Ljava/lang/Object;
.source "SuperPlayerkit.java"

# interfaces
.implements Lcom/example/super_player_kit/WebpPlayer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/SuperPlayerkit;->createWebpPlayer()Lcom/example/super_player_kit/WebpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_player_kit/SuperPlayerkit;

.field final synthetic val$webpPlayer:Lcom/example/super_player_kit/WebpPlayer;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/SuperPlayerkit;Lcom/example/super_player_kit/WebpPlayer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit$2;->this$0:Lcom/example/super_player_kit/SuperPlayerkit;

    iput-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit$2;->val$webpPlayer:Lcom/example/super_player_kit/WebpPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit$2;->this$0:Lcom/example/super_player_kit/SuperPlayerkit;

    invoke-static {v0}, Lcom/example/super_player_kit/SuperPlayerkit;->access$100(Lcom/example/super_player_kit/SuperPlayerkit;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/super_player_kit/SuperPlayerkit$2$1;

    invoke-direct {v1, p0}, Lcom/example/super_player_kit/SuperPlayerkit$2$1;-><init>(Lcom/example/super_player_kit/SuperPlayerkit$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
