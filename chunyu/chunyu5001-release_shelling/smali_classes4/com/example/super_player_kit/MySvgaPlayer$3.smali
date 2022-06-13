.class Lcom/example/super_player_kit/MySvgaPlayer$3;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/MySvgaPlayer;->stop()V
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

    .line 241
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/super_player_kit/MySvgaPlayer;->access$402(Lcom/example/super_player_kit/MySvgaPlayer;Z)Z

    .line 245
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 247
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 248
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$300(Lcom/example/super_player_kit/MySvgaPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v2}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$3;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0, v1}, Lcom/example/super_player_kit/MySvgaPlayer;->access$102(Lcom/example/super_player_kit/MySvgaPlayer;Lcom/opensource/svgaplayer/SVGAImageView;)Lcom/opensource/svgaplayer/SVGAImageView;

    :cond_1
    return-void
.end method
