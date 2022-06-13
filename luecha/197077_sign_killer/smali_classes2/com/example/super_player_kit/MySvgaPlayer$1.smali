.class Lcom/example/super_player_kit/MySvgaPlayer$1;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/MySvgaPlayer;->play(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_player_kit/MySvgaPlayer;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/MySvgaPlayer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer$1;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$1;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$000(Lcom/example/super_player_kit/MySvgaPlayer;)V

    return-void
.end method
