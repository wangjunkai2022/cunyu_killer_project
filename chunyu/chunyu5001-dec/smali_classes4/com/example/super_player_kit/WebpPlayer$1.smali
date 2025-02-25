.class Lcom/example/super_player_kit/WebpPlayer$1;
.super Ljava/lang/Object;
.source "WebpPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/WebpPlayer;->play(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_player_kit/WebpPlayer;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/WebpPlayer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/example/super_player_kit/WebpPlayer$1;->this$0:Lcom/example/super_player_kit/WebpPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer$1;->this$0:Lcom/example/super_player_kit/WebpPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/WebpPlayer;->access$000(Lcom/example/super_player_kit/WebpPlayer;)V

    return-void
.end method
