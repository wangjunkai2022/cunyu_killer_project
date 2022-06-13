.class Lcom/example/super_player_kit/MySvgaPlayer$2;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/MySvgaPlayer;->playSvga(Ljava/lang/String;Ljava/lang/String;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_player_kit/MySvgaPlayer;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$waterMarkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/MySvgaPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    iput-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->val$waterMarkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$500(Lcom/example/super_player_kit/MySvgaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/example/super_player_kit/MySvgaPlayer$2$1;

    invoke-direct {v1, p0, p1}, Lcom/example/super_player_kit/MySvgaPlayer$2$1;-><init>(Lcom/example/super_player_kit/MySvgaPlayer$2;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$600(Lcom/example/super_player_kit/MySvgaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "svga\u6587\u4ef6\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/super_player_kit/MySvgaPlayer$2;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
