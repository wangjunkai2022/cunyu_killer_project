.class Lcom/example/super_player_kit/MySvgaPlayer$2$1$1;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/MySvgaPlayer$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/example/super_player_kit/MySvgaPlayer$2$1;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/MySvgaPlayer$2$1;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1$1;->this$2:Lcom/example/super_player_kit/MySvgaPlayer$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1$1;->this$2:Lcom/example/super_player_kit/MySvgaPlayer$2$1;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$000(Lcom/example/super_player_kit/MySvgaPlayer;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
