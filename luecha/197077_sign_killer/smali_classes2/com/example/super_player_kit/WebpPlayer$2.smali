.class Lcom/example/super_player_kit/WebpPlayer$2;
.super Ljava/lang/Object;
.source "WebpPlayer.java"

# interfaces
.implements Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_player_kit/WebpPlayer;->playWebp(Ljava/lang/String;IZ)Z
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

    .line 117
    iput-object p1, p0, Lcom/example/super_player_kit/WebpPlayer$2;->this$0:Lcom/example/super_player_kit/WebpPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/example/super_player_kit/WebpPlayer$2;->this$0:Lcom/example/super_player_kit/WebpPlayer;

    invoke-static {p1}, Lcom/example/super_player_kit/WebpPlayer;->access$000(Lcom/example/super_player_kit/WebpPlayer;)V

    return-void
.end method
