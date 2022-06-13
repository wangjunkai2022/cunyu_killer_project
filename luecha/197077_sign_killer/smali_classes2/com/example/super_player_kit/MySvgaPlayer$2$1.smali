.class Lcom/example/super_player_kit/MySvgaPlayer$2$1;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/MySvgaPlayer$2;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

.field final synthetic val$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method constructor <init>(Lcom/example/super_player_kit/MySvgaPlayer$2;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iput-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->val$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v1, v1, Lcom/example/super_player_kit/MySvgaPlayer$2;->val$waterMarkName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v1, v1, Lcom/example/super_player_kit/MySvgaPlayer$2;->val$waterMarkName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 139
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 140
    aget-object v4, v1, v3

    invoke-virtual {v0, v2, v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setHidden(ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v1, v1, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    new-instance v3, Lcom/opensource/svgaplayer/SVGADrawable;

    iget-object v4, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->val$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-direct {v3, v4, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    invoke-static {v1, v3}, Lcom/example/super_player_kit/MySvgaPlayer;->access$202(Lcom/example/super_player_kit/MySvgaPlayer;Lcom/opensource/svgaplayer/SVGADrawable;)Lcom/opensource/svgaplayer/SVGADrawable;

    .line 144
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$300(Lcom/example/super_player_kit/MySvgaPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v1, v1, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v1}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v1, v1, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v1}, Lcom/example/super_player_kit/MySvgaPlayer;->access$200(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    new-instance v1, Lcom/example/super_player_kit/MySvgaPlayer$2$1$1;

    invoke-direct {v1, p0}, Lcom/example/super_player_kit/MySvgaPlayer$2$1$1;-><init>(Lcom/example/super_player_kit/MySvgaPlayer$2$1;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 165
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0}, Lcom/example/super_player_kit/MySvgaPlayer;->access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 166
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer$2$1;->this$1:Lcom/example/super_player_kit/MySvgaPlayer$2;

    iget-object v0, v0, Lcom/example/super_player_kit/MySvgaPlayer$2;->this$0:Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-static {v0, v2}, Lcom/example/super_player_kit/MySvgaPlayer;->access$402(Lcom/example/super_player_kit/MySvgaPlayer;Z)Z

    return-void
.end method
